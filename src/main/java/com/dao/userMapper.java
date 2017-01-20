package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.user;

public interface userMapper {
	int deleteByPrimaryKey(Integer uid);

	int insert(user record);

	int insertSelective(user record);

	user selectByPrimaryKey(Integer uid);

	int updateByPrimaryKeySelective(user record);

	int updateByPrimaryKey(user record);

	user selectright(@Param(value = "uname") String uname,@Param(value = "password") String password);

	List<user> selectall();

	user selectpassword(@Param(value ="uid")int uid,@Param(value = "password") String password);

	int updatepassword(user user);
}