package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.comment;

public interface commentMapper {
	int deleteByPrimaryKey(Integer oid);

	int insert(comment record);

	int insertSelective(comment record);

	comment selectByPrimaryKey(Integer oid);

	int updateByPrimaryKeySelective(comment record);

	int updateByPrimaryKey(comment record);

	int getcommentsCountSearch(@Param(value="comid")int comid);

	List<comment> selectcommentsByPageSearch(@Param(value="startPos") Integer startPos,
			@Param(value="pageSize") Integer pageSize,
			@Param(value="comid")int comid);

	List<comment> selectcomment(@Param(value="comid")Integer comid);

	List<comment> selectall();

	List<comment> selectname(@Param(value="comname")String comname);

	long getcommentsCountSearchAll();

	List<comment> selectcommentsByPage(@Param(value="startPos") Integer startPos,
			@Param(value="pageSize") Integer pageSize);
} 