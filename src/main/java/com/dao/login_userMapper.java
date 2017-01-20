package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.login_user;

public interface login_userMapper {
	int deleteByPrimaryKey(Integer lid);

	int insert(login_user record);

	int insertSelective(login_user record);

	login_user selectByPrimaryKey(Integer lid);

	int updateByPrimaryKeySelective(login_user record);

	int updateByPrimaryKey(login_user record);

	login_user selectright(@Param(value = "luser") String luser,@Param(value = "lpassword") String lpassword);

	List<login_user> selectall();

	login_user selectByluser(String luser);

	login_user selectpasswordright(@Param(value = "lpassword") String lpassword);

	int updateByidandpassword(login_user l);

	int updateByidandimage(login_user l);

	int updateByMyset(login_user l);

	List <login_user> selectusersByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);

	long getusersCount();


}