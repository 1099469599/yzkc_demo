package com.service;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.ui.Model;

import com.model.login_user;;

public interface loginuserService {
	//添加用户
	int add_action(login_user login_user);
	//判定是否存在
	login_user select(String luser,String lpassword);
	//查询全部用户
	public List<login_user> getuser();
	//delete
	String delete(int lid);
	//根据luser查询信息
	login_user select(String luser);
	//校验初始密码
	login_user selectlpassword(String lpassword);
	//重置密码
	void updata_lpassword(login_user l);
	//头像修改
	void updata_limage(login_user l);
	//查询指定ID信息
	login_user select(int lid);
	//修改指定ID信息
	void updataInfo(login_user l);
	//分页显示
	void showusersByPage(HttpServletRequest request,Model model);

}
