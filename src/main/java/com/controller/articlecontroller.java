package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.model.article;
import com.service.articleService;
//窄化请求路径无
@RequestMapping("/")
@Controller
public class articlecontroller {
	@Autowired
	private articleService articleService;

	//查询全部信息
	@RequestMapping("/showarticle")
	public ModelAndView showarticle()throws Exception{
		ModelAndView mv=new ModelAndView();
		List<article> articles=null;
		articles=articleService.getarticle();
		if(articles!=null){
			mv.addObject("articles",articles);
			mv.setViewName("/articleshow");
			return mv;
		}
		mv.addObject("articles",null);
		mv.setViewName("/articleshow");
		return mv;
	}
	@RequestMapping("/showarticle_json")
	@ResponseBody
	public ModelAndView showarticles()throws Exception{
		ModelAndView mv=new ModelAndView();
		List<article> articles=null;
		articles=articleService.getarticle();
		mv.addObject("articles",articles);
		mv.setViewName("/articleshow");
		return mv;
	}
	//查询指定ID信息
	@RequestMapping("{aid}_article")
	public ModelAndView selectByPrimaryKey(@PathVariable int aid)throws Exception{
		ModelAndView mv=new ModelAndView();
		List<article> articles=null;
		articles=articleService.select(aid);
		mv.addObject("articles",articles);
		mv.setViewName("articledetail");
		return mv;
	}
	//修改整个文章
	@RequestMapping("/updata_aid")
	public String updata_aid(Model model,int aid,article article)throws Exception{
		model.addAttribute("article",article);
		articleService.updata(aid, article);
		return "redirect:showarticle.action";
	}
	//修改功能点赞
	@RequestMapping("{aid}_{aup}_changeaup")
	public String updata_aup(Model model,@PathVariable int aid,@PathVariable int aup)throws Exception{
		model.addAttribute("aid", aid);	
		model.addAttribute("aup", aup);	
		article a=new article();
		a.setAup(aup);
		a.setAid(aid);
		articleService.updata_aup(a);
		return "redirect:showarticlesss.action";
	}
	//修改功能踩
	@RequestMapping("{aid}_{adown}_changeadown")
	public String updata_adown(Model model,@PathVariable int aid,@PathVariable int adown)throws Exception{
		model.addAttribute("aid", aid);
		model.addAttribute("adown",adown);
		article a=new article();
		a.setAid(aid);
		a.setAdown(adown);
		articleService.updata_adown(a);
		return "redirect:showarticlesss.action";
	}
	//新增文章
	@RequestMapping("/Addarticle")
	public String addarticle(Model model,article article)throws Exception{
		model.addAttribute("article",article);
		articleService.add_action(article);
		return "success";
	}
	//分页显示
	@RequestMapping("/showarticlesss")  
	public String showMyArticle(HttpServletRequest request, Model model) { 
		this.articleService.showArticlesByPage(request, model);
		return "/articleshow";
	}  
	//搜索
	@RequestMapping("/anameSearch")  
	public String showMyArticle(HttpServletRequest request, Model model,String aname) throws Exception {  
		this.articleService.showArticlesByPageSearch(request, model,aname);
		return "/articleshow";
	}  
}
