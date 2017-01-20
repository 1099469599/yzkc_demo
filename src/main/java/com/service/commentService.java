package com.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.model.comment;

public interface commentService {

	//查询对应文章的评论分页版本（不用）
	void showComment(HttpServletRequest request,Model model,int comid);
	//新增评论
	int addComment(comment comment);
	//查询对应ID普通版本
	public List<comment> selectbycomid(int comid);
	//查询全部
	public List<comment> selectall();
	//查询用户名查
	public List<comment> secectname(String comname);
	//删除评论
	void delete(int oid);
	//管理员用
	void showCommentPage(HttpServletRequest request, Model model);
}
