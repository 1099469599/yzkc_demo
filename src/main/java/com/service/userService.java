package com.service;

import java.util.List;

import com.model.user;

public interface userService {
	//添加用户
	int add_action(user user);
	//判定是否存在
	user select(String uname,String password);
	//查询全部用户
	public List<user> getuser();
	//delete
	String delete(int id);
	//验证密码
	user select(int uid,String password);
	//修改密码
	void changeUserpassword(user user);
}
