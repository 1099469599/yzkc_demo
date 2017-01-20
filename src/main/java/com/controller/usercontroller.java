package com.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.model.info;
import com.model.login_user;
import com.model.user;
import com.service.loginuserService;
import com.service.userService;
import com.service.articleService;
import com.service.infoService;
import com.service.commentService;
@RequestMapping("/admin")
@Controller
public class usercontroller {
	@Autowired
	private userService userService;
	@Autowired
	private articleService articleService;
	@Autowired
	private loginuserService loginuserService;
	@Autowired
	private infoService infoService;
	@Autowired
	private commentService commentService;
	//管理添加（无）
	@RequestMapping("/adduser")
	public String adduser(Model model,user user)throws Exception{
		model.addAttribute("user",user);
		userService.add_action(user);
		return "index";
	}
	//管理员验证
	@RequestMapping("/login")
	public String login(HttpSession session,String uname, String password)throws Exception{
		user users=userService.select(uname, password);
		if(users!=null)
		{
			session.setAttribute("uid", users.getUid());
			session.setAttribute("uname", users.getUname());
			session.setAttribute("name", users.getName());
			session.setAttribute("password", users.getPassword());
			session.setAttribute("image", users.getImage());
			session.setAttribute("detail", users.getDetail());
			session.setAttribute("email", users.getEmail());
			return "/admin/adminmanager";
		}
		else
			return "/admin/index";
	}
	//退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "/admin/index";
	}
	//管理员密码修改
	@RequestMapping("changeuserpassword")
	public String changepassword(Model model,@RequestParam int uid,@RequestParam String password ,@RequestParam String password2)throws Exception{
		if(userService.select(uid,password)!=null){
			model.addAttribute("uid",uid);
			model.addAttribute("password",password2);
			user user=new user();
			user.setUid(uid);
			user.setPassword(password2);
			userService.changeUserpassword(user);
			return "redirect:/admin/logout.action";
		}
		return null;
	}
	//用户全查询
	@RequestMapping("/showuser")
	public ModelAndView showuser()throws Exception{
		ModelAndView mv=new ModelAndView();
		List<user> users=null;
		users=userService.getuser();
		mv.addObject("users",users);
		mv.setViewName("/admin/user");
		return mv;
	}
	//delete user
	@RequestMapping("/{lid}_delete_users")
	public String deleteByPrimaryKey(@PathVariable int lid)throws Exception{
		loginuserService.delete(lid);
		return "redirect:/admin/showuserinfo.action";
	}
	//管理员页面文章全查询
	@RequestMapping("/showarticle")
	public String showarticle(HttpServletRequest request, Model model)throws Exception{
		this.articleService.showArticlesByPage(request, model);
		return "/admin/adminarticle";
	}
	//管理员页面删除文章
	@RequestMapping("/{aid}_delete_article")
	public String deletearticlebyadmin(@PathVariable int aid)throws Exception{
		articleService.delete(aid);
		return "redirect:/admin/showarticle.action";
	}
	//管理员用户列表管理
	@RequestMapping("/showuserinfo")
	public String showuserinfo(HttpServletRequest request, Model model){
		this.loginuserService.showusersByPage(request, model);
		return "/admin/adminuser";
	}
	//管理员用户局部更新
	@RequestMapping("/updatauser")
	public String updatauser(Model model,@RequestParam int lid,@RequestParam String lusername,
			@RequestParam int ltelephone,@RequestParam String laddress
			,@RequestParam String ltype
			){
		model.addAttribute("lid",lid);
		model.addAttribute("lusername",lusername);
		model.addAttribute("ltelephone",ltelephone);
		model.addAttribute("laddress",laddress);
		model.addAttribute("ltype",ltype);
		login_user l=new login_user();
		l.setLid(lid);
		l.setLusername(lusername);
		l.setLtelephone(ltelephone);
		l.setLaddress(laddress);
		l.setLtype(ltype);
		loginuserService.updataInfo(l);
		return "redirect:/admin/showuserinfo.action";
	}
	//管理员信息管理
	@RequestMapping("/admininfo")
	public String showinfo(HttpServletRequest request, Model model){
		this.infoService.showinfosByPage(request, model);
		return "/admin/admininfo";
	}
	//管理员删除资料信息
	@RequestMapping("/delete_{id}_info")
	public String delete(@PathVariable int id)throws Exception{
		infoService.delete(id);
		return "redirect:/admin/admininfo.action";
	}
	//管理员增加资料信息
	@RequestMapping("/addinfo")
	public String addinfo(Model model,info info){
		model.addAttribute("info",info);
		infoService.add_action(info);
		return "redirect:/admin/admininfo.action";
	}
	//管理员评论分页显示
	@RequestMapping("/searchcomment")
	public String showcomment(HttpServletRequest request, Model model)throws Exception{
		this.commentService.showCommentPage(request, model);
		return "/admin/admincomment";
	} 
	//管理员删除评论
	@RequestMapping("/{oid}_delete_comments")
	public String deletecomment(@PathVariable int oid)throws Exception{
		commentService.delete(oid);
		return "redirect:/admin/searchcomment.action";
	}
}
