package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.dao.articleMapper;
import com.model.article;
import com.service.articleService;
import com.until.Page;
@Service("articleService")
public class articleServiceImpl implements articleService{
	@Autowired
	private articleMapper articleMapper;
	@Override
	public int add_action(article article) {
		int result = articleMapper.insert(article);
		return result;
	}
	@Override
	public String delete(int aid) {
		articleMapper.deleteByPrimaryKey(aid);
		return null;
	}
	@Override
	public List<article> select(int aid){
		return articleMapper.selectByPrimaryKey(aid);
	}
	@Override
	public void updata(int aid, article article) {
		articleMapper.updateByPrimaryKey(article);
	}
	@Override
	public List<article> getarticle() {
		return articleMapper.selectAll();
	}
	@Override
	public void updata_aup(article a){
		articleMapper.updateSingleaup(a);
	}
	@Override
	public void updata_adown(article a){
		articleMapper.updateSingleadown(a);
	}
	@Override
	public void showArticlesByPage(HttpServletRequest request, Model model) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<article> articles = new ArrayList<article>();  

		int totalCount = (int) articleMapper.getArticlesCount();  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			articles = this.articleMapper.selectArticlesByPage(page.getStartPos(), page.getPageSize());  
		} else {  
			page = new Page(totalCount, 1);  
			articles = this.articleMapper.selectArticlesByPage(page.getStartPos(), page.getPageSize());    
		}  

		model.addAttribute("articles", articles);  
		model.addAttribute("page", page);  		
	}
	@Override
	public void showArticlesByPageSearch(HttpServletRequest request, Model model,String aname) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<article> articles = new ArrayList<article>();  

		int totalCount = (int) articleMapper.getArticlesCountSearch(aname);  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			articles = this.articleMapper.selectArticlesByPageSearch(page.getStartPos(), page.getPageSize(),aname);  
		} else {  
			page = new Page(totalCount, 1);  
			articles = this.articleMapper.selectArticlesByPageSearch(page.getStartPos(), page.getPageSize(),aname);    
		}  

		model.addAttribute("articles", articles);  
		model.addAttribute("page", page);  		
	}
}
