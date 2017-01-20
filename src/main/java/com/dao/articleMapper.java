package com.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.model.article;

public interface articleMapper {
	int deleteByPrimaryKey(Integer aid);

	int insert(article record);

	int insertSelective(article record);

	List<article> selectByPrimaryKey(Integer aid);

	int updateByPrimaryKeySelective(article record);

	int updateByPrimaryKey(article record);

	List<article> selectAll();

	int updateSingleaup(article a);

	int updateSingleadown(article a);

	List <article> selectArticlesByPage(@Param(value="startPos") Integer startPos,@Param(value="pageSize") Integer pageSize);

	long getArticlesCount();

	List <article> selectArticlesByPageSearch(@Param(value="startPos") Integer startPos,
			@Param(value="pageSize") Integer pageSize,
			@Param(value="aname") String aname);

	long getArticlesCountSearch(@Param(value="aname")String aname);

}