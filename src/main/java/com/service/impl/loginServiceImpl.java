package com.service.impl;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;

import com.model.login_user;
import com.dao.login_userMapper;
import com.service.loginuserService;
import com.until.Page;

@Service("loginService")
public class loginServiceImpl implements loginuserService{

	@Autowired
	private login_userMapper login_userMapper;
	@Override
	public int add_action(login_user login_user) {
		int result;
		result = login_userMapper.insertSelective(login_user);
		return result;
	}

	@Override
	public login_user select(String luser, String lpassword) {
		return login_userMapper.selectright(luser, lpassword);
	}

	@Override
	public List<login_user> getuser() {
		return login_userMapper.selectall();
	}

	@Override
	public String delete(int lid) {
		login_userMapper.deleteByPrimaryKey(lid);
		return "null";
	}

	@Override
	public login_user select(String luser) {
		return login_userMapper.selectByluser(luser);
	}

	@Override
	public login_user selectlpassword(String lpassword) {
		return login_userMapper.selectpasswordright(lpassword);
	}

	@Override
	public void updata_lpassword(login_user l) {
		login_userMapper.updateByidandpassword(l);
	}

	@Override
	public void updata_limage(login_user l) {
		login_userMapper.updateByidandimage(l);
	}

	@Override
	public login_user select(int lid) {
		return login_userMapper.selectByPrimaryKey(lid);
	}

	@Override
	public void updataInfo(login_user l) {
		login_userMapper.updateByMyset(l);
	}

	@Override
	public void showusersByPage(HttpServletRequest request, Model model) {
		String pageNow = request.getParameter("pageNow");  

		Page page = null;  

		List<login_user> users = new ArrayList<login_user>();  

		int totalCount = (int) login_userMapper.getusersCount();  

		if (pageNow != null) {  
			page = new Page(totalCount, Integer.parseInt(pageNow));  
			users = this.login_userMapper.selectusersByPage(page.getStartPos(), page.getPageSize());  
		} else {  
			page = new Page(totalCount, 1);  
			users = this.login_userMapper.selectusersByPage(page.getStartPos(), page.getPageSize());    
		}  

		model.addAttribute("users", users);  
		model.addAttribute("page", page);
	}

}
