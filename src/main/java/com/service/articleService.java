package com.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.model.article;

public interface articleService {
	//添加信息
	int add_action(article article);
	//根据ID删除
	String delete(int aid); 
	//根据ID查询表单
	public List<article> select(int aid);
	//根据ID修改信息
	void updata(int aid,article article);
	//全查询
	public List<article> getarticle();
	//赞
	void updata_aup(article a);
	//踩
	void updata_adown(article a);
	//分页
	void showArticlesByPage(HttpServletRequest request,Model model);

	void showArticlesByPageSearch(HttpServletRequest request,Model model,String aname);
}
