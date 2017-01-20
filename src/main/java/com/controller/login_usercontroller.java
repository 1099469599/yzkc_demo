package com.controller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.model.login_user;
import com.service.loginuserService;;

@Controller
public class login_usercontroller {
	@Autowired
	private loginuserService loginuserService;

	//用户添加
	@RequestMapping("/addluser")
	public String adduser(Model model,login_user login_user)throws Exception{
		model.addAttribute("login_user",login_user);
		loginuserService.add_action(login_user);
		return "login";
	}
	//用户验证
	@RequestMapping("/loginuser")
	@ResponseBody
	public String login(HttpSession session,String luser,String lpassword)throws Exception{

		if(loginuserService.select(luser,lpassword)!=null)
		{	
			login_user users=loginuserService.select(luser);
			session.setAttribute("lid", users.getLid());
			session.setAttribute("luser",users.getLuser());
			session.setAttribute("lpassword",users.getLpassword());
			session.setAttribute("ldetail",users.getLdetail());
			session.setAttribute("ltelephone",users.getLtelephone());
			session.setAttribute("limage",users.getLimage());
			session.setAttribute("ltype",users.getLtype());
			session.setAttribute("lusername",users.getLusername());
			session.setAttribute("laddress",users.getLaddress());
			session.setAttribute("lextra",users.getLextra());
			return "/welcome";
		}
		else
		{
			session.setAttribute("luser",null);
		}
		return null;
	}
	//退出
	@RequestMapping("/logout")
	public String logout(HttpSession session) throws Exception{
		session.invalidate();
		return "redirect:/showInfoss.action";
	}
	//用户全查询
	@RequestMapping("/showluser")
	public ModelAndView showuser(){
		ModelAndView mv=new ModelAndView();
		List<login_user> lusers=null;
		lusers=loginuserService.getuser();
		mv.addObject("lusers",lusers);
		mv.setViewName("/usermanger");
		return mv;
	}
	//delete luser
	@RequestMapping("/{lid}_deleteLoginuser")
	public String deleteByPrimaryKey(@PathVariable int lid)throws Exception{
		loginuserService.delete(lid);
		return "forward:/showuser.action";
	}
	//用户信息查询
	@RequestMapping("/{luser}_searchSingle")
	public ModelAndView searchByluser(@PathVariable String luser)throws Exception{
		ModelAndView mv=new ModelAndView();
		login_user login_user=loginuserService.select(luser);
		mv.addObject("login_user",login_user);
		mv.setViewName("/userdetail");
		return mv;
	}
	//修改密码功能
	@RequestMapping("/changelpassword")
	public String changelpassword(Model model,@RequestParam int lid,@RequestParam String lpassword,@RequestParam String lpassword2)throws Exception{
		if(loginuserService.selectlpassword(lpassword)!=null){
			model.addAttribute("lid", lid);
			model.addAttribute("lpassword2", lpassword2);
			login_user l=new login_user();
			l.setLid(lid);
			l.setLpassword(lpassword2);
			loginuserService.updata_lpassword(l);
			return "redirect:/logout.action";
		}
		else
			return null;
	}
	//用户信息修改
	@RequestMapping("/changeuserinfo")
	public String changeuserinfo(Model model,@RequestParam int lid,@RequestParam String lusername,
			@RequestParam int ltelephone,@RequestParam String laddress
			,@RequestParam String ldetail,@RequestParam String ltype
			,@RequestParam String lextra){
		model.addAttribute("lid",lid);
		model.addAttribute("lusername",lusername);
		model.addAttribute("ltelephone",ltelephone);
		model.addAttribute("laddress",laddress);
		model.addAttribute("ldetail",ldetail);
		model.addAttribute("ltype",ltype);
		model.addAttribute("lextra",lextra);
		login_user l=new login_user();
		l.setLid(lid);
		l.setLusername(lusername);
		l.setLtelephone(ltelephone);
		l.setLaddress(laddress);
		l.setLdetail(ldetail);
		l.setLtype(ltype);
		l.setLextra(lextra);
		loginuserService.updataInfo(l);
		return "/usermanager";
	}
	//用户图片上传功能
	@RequestMapping("/{lid}_uploadimage")  
	public String upload(@PathVariable int lid,@RequestParam(value = "file", required = false) MultipartFile file, HttpServletRequest request, ModelMap model) {  
		String path = request.getSession().getServletContext().getRealPath("upload");  
		String fileName = file.getOriginalFilename();  
		File targetFile = new File(path, fileName);  
		if(!targetFile.exists()){  
			targetFile.mkdirs();  
		}  

		//保存  
		try {  
			file.transferTo(targetFile);  
		}catch (Exception e) {  
			e.printStackTrace();  
		}  
		model.addAttribute("lid", lid);
		model.addAttribute("limage", request.getContextPath()+"/upload/"+fileName); 
		String limage=request.getContextPath()+"/upload/"+fileName;
		login_user l=new login_user();
		l.setLid(lid);
		l.setLimage(limage);
		loginuserService.updata_limage(l);
		return "usermanager";  
	}  
	//查询指定ID信息
	@RequestMapping("/{lid}_searchinfo")
	public String searchlid(@PathVariable int lid,Model model){
		login_user users=loginuserService.select(lid);
		model.addAttribute("users", users);
		return "/userdetail";
	}
}
