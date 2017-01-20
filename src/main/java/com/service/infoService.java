package com.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.model.info;

public interface infoService {
	//添加信息
	int add_action(info info);
	//根据ID删除
	String delete(int id); 
	//根据ID查询表单
	public List<info> select(int id);
	//根据ID修改信息
	void updata(int id,info info);
	//全查询
	public List<info> getinfo();
	//查询HTML
	List<info> select_html();
	//分页
	void showinfosByPage(HttpServletRequest request,Model model);
	
	void showinfosByPageSearch(HttpServletRequest request,Model model,String cname);
}
