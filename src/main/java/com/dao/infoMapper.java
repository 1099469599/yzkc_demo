package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.info;

public interface infoMapper {
	int deleteByPrimaryKey(Integer id);

	int insert(info record);

	int insertSelective(info record);

	List <info> selectByPrimaryKey(Integer id);

	int updateByPrimaryKeySelective(info record);

	int updateByPrimaryKey(info record);

	List <info> selectAll();

	List<info> select_html(); 

	List <info> selectinfosByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);

	long getinfosCount();

	List <info> selectinfosByPageSearch(@Param(value="startPos") Integer startPos,
			@Param(value="pageSize") Integer pageSize,
			@Param(value="cname") String cname);

	long getinfosCountSearch(@Param(value="cname")String cname);
}