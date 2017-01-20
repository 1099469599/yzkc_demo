package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import com.service.commentService;
import com.model.comment;
//窄化请求路径无
@RequestMapping("/")
@Controller
public class commentcontroller {
	@Autowired
	private commentService commentService;
	//分页显示
	@RequestMapping("/Comment")  
	public String showMyComment(HttpServletRequest request, Model model,int comid) { 
		this.commentService.showComment(request, model, comid);
		return "/usercomment";
	}  
	//普通显示
	@RequestMapping("/showcomment")
	public String showcomment(Model model,int comid){
		List <comment> comments=null;
		comments=commentService.selectbycomid(comid);
		model.addAttribute("comments", comments);
		return "/comments";
	}
	//新增
	@RequestMapping("/addcomment")
	public String addcomment(Model model,comment comment){
		model.addAttribute("comment",comment);
		commentService.addComment(comment);
		return "/welcome";
	}
	//普通查询
	@RequestMapping("/searchComment")
	public String searchcomment(Model model,String comname){
		List <comment> comments=null;
		comments=commentService.secectname(comname);
		model.addAttribute("comments", comments);
		return "/usercomment";
	}
	//删除评论
	@RequestMapping("/{oid}_delete")
	public String deletecomment(@PathVariable int oid){
		commentService.delete(oid);
		return "redirect:/usermanager.jsp";
	}
}
