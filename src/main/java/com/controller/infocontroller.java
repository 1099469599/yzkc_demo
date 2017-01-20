package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.model.info;
import com.service.infoService;
//窄化请求路径无
@RequestMapping("/")
@Controller
public class infocontroller {
	@Autowired
	private infoService infoService;
	
	//查询全部信息
	@RequestMapping("/showquery")
	public ModelAndView showquery()throws Exception{
		ModelAndView mv=new ModelAndView();
		List<info> infos=null;
		infos=infoService.getinfo();
		if(infos!=null){
		mv.addObject("infos",infos);
		mv.setViewName("/infoshow");
		return mv;
		}
		mv.addObject("infos",null);
		mv.setViewName("/infoshow");
		return mv;
	}
	//查询指定ID信息
	@RequestMapping("{id}_search")
	public ModelAndView selectByPrimaryKey(@PathVariable int id)throws Exception{
		ModelAndView mv=new ModelAndView();
			List<info> infos=null;
			infos=infoService.select(id);
			mv.addObject("infos", infos);
			mv.setViewName("/infodetail");
			return mv;
		}
	//查询html
	@RequestMapping("search_html")
	public ModelAndView select_html()throws Exception{
		ModelAndView mv=new ModelAndView();
		List<info> infos=null;
		infos=infoService.select_html();
		mv.addObject("infos",infos);
		mv.setViewName("/infoshow");
		return mv;
	}
	//分页显示
	@RequestMapping("/showInfoss")  
	public String showmyinfo(HttpServletRequest request, Model model) {  
		this.infoService.showinfosByPage(request, model);
		return "/infoshowpage";
	}  
	//搜索
	@RequestMapping("/cnameSearch")  
	public String showMyinfosearch(HttpServletRequest request, Model model,String cname) {  
		this.infoService.showinfosByPageSearch(request, model,cname);
		return "/infoshowpage";
	}  
}
