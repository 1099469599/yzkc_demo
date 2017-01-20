package com.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.dao.userMapper;
import com.model.user;
import com.service.userService;

@Service("userService")
public class userServiceImpl implements userService{

	@Autowired
	private userMapper userMapper;
	public int add_action(user user) {
		int result;
		result=userMapper.insert(user);
		return result;
	}

	public user select(String uname, String password) {
		return userMapper.selectright(uname, password);
	}

	public List<user> getuser() {
		return userMapper.selectall();
	}

	public String delete(int id) {
		userMapper.deleteByPrimaryKey(id);
		return "null";
	}

	@Override
	public user select(int uid,String password) {
		return userMapper.selectpassword(uid,password);
	}

	@Override
	public void changeUserpassword(user user) {
		userMapper.updatepassword(user);
	}

}
