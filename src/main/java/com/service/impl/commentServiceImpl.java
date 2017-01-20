package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.model.comment;
import com.service.commentService;
import com.dao.commentMapper;
import com.until.Page;
@Service("commentService")
public class commentServiceImpl implements commentService{

	@Autowired
	private commentMapper commentMapper;
	@Override
	public void showComment(HttpServletRequest request, Model model, int comid) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<comment> comments = new ArrayList<comment>();  

		int totalCount = (int) commentMapper.getcommentsCountSearch(comid);  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			comments = this.commentMapper.selectcommentsByPageSearch(page.getStartPos(), page.getPageSize(),comid);  
		} else {  
			page = new Page(totalCount, 1);  
			comments = this.commentMapper.selectcommentsByPageSearch(page.getStartPos(), page.getPageSize(),comid);    
		}  

		model.addAttribute("comments", comments);  
		model.addAttribute("page", page);  		
	}

	@Override
	public int addComment(comment comment) {
		return commentMapper.insertSelective(comment);
	}

	@Override
	public List<comment> selectbycomid(int comid) {
		return commentMapper.selectcomment(comid);
	}

	@Override
	public List<comment> selectall() {
		return commentMapper.selectall();
	}

	@Override
	public List<comment> secectname(String comname) {
		return commentMapper.selectname(comname);
	}

	@Override
	public void delete(int oid) {
		commentMapper.deleteByPrimaryKey(oid);
	}

	@Override
	public void showCommentPage(HttpServletRequest request, Model model) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<comment> comments = new ArrayList<comment>();  

		int totalCount = (int) commentMapper.getcommentsCountSearchAll();  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			comments = this.commentMapper.selectcommentsByPage(page.getStartPos(), page.getPageSize());  
		} else {  
			page = new Page(totalCount, 1);  
			comments = this.commentMapper.selectcommentsByPage(page.getStartPos(), page.getPageSize());    
		}  

		model.addAttribute("comments", comments);  
		model.addAttribute("page", page); 
	}

}
