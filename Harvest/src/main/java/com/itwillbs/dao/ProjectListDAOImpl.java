package com.itwillbs.dao;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.ProjectDTO;

@Repository
public class ProjectListDAOImpl implements ProjectListDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.projectListMapper";

	@Override
	public List<ProjectDTO> getAllProjectList() {
		return sqlSession.selectList(namespace+".getAllProjectList");
	}

	@Override
	public int getProjectCount() {
		return sqlSession.selectOne(namespace+".getProjectCount");
	}

	@Override
	public List<ProjectDTO> getCategoryList(String category) {
		return sqlSession.selectList(namespace+".getCategoryList", category);
	}

	@Override
	public int getCategoryCount(String category) {
		System.out.println("getCategoryCount");
		return sqlSession.selectOne(namespace+".getCategoryCount", category);
	}
	
	

}
