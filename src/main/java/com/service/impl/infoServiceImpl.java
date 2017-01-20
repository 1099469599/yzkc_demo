package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.infoMapper;
import com.model.info;
import com.service.infoService;
import com.until.Page;
@Service("infoService")
public class infoServiceImpl implements infoService{
	@Autowired
	private infoMapper infoMapper;
	@Override
	public int add_action(info info) {
		int result = infoMapper.insert(info);
		return result;
	}
	@Override
	public String delete(int id) {
		infoMapper.deleteByPrimaryKey(id);
		return null;
	}
	@Override
	public List<info> select(int id) {
		return infoMapper.selectByPrimaryKey(id);
	}
	@Override
	public void updata(int id, info info) {
		infoMapper.updateByPrimaryKey(info);
	}
	@Override
	public List<info> getinfo() {
		return infoMapper.selectAll();
	}
	@Override
	public List<info> select_html() {
		return infoMapper.select_html();
	}
	@Override
	public void showinfosByPage(HttpServletRequest request, Model model) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<info> infos = new ArrayList<info>();  

		int totalCount = (int) infoMapper.getinfosCount();  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			infos = this.infoMapper.selectinfosByPage(page.getStartPos(), page.getPageSize());  
		} else {  
			page = new Page(totalCount, 1);  
			infos = this.infoMapper.selectinfosByPage(page.getStartPos(), page.getPageSize());    
		}  

		model.addAttribute("infos", infos);  
		model.addAttribute("page", page);  
	}
	@Override
	public void showinfosByPageSearch(HttpServletRequest request, Model model,
			String cname) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<info> infos = new ArrayList<info>();  

		int totalCount = (int) infoMapper.getinfosCountSearch(cname);  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			infos = this.infoMapper.selectinfosByPageSearch(page.getStartPos(), page.getPageSize(),cname);  
		} else {  
			page = new Page(totalCount, 1);  
			infos = this.infoMapper.selectinfosByPageSearch(page.getStartPos(), page.getPageSize(),cname);    
		}  

		model.addAttribute("infos", infos);  
		model.addAttribute("page", page); 
	}

}
