package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

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
	public List<ProjectDTO> getCategoryList(String category) {
		return sqlSession.selectList(namespace+".getCategoryList", category);
	}

	@Override
	public int getCateCount(String category) {
		return sqlSession.selectOne(namespace+".getCateCount", category);
	}

	@Override
	public void updateAlramcount(int idx) {
		sqlSession.update(namespace+".updateAlramcount", idx);
		
	}

	@Override
	public List<ProjectDTO> getProjectList(Map<String, String> param) {
		return sqlSession.selectList(namespace + ".getProjectList", param);
	}
	@Override
	public List<ProjectDTO> getPjList(String search) {
		return sqlSession.selectList(namespace+".getPjList", search);
	}
	@Override
	public int getPjCount(String search) {
		return sqlSession.selectOne(namespace+".getPjCount", search);
	}

	@Override
	public int getCount(Map<String, String> param) {
		return sqlSession.selectOne(namespace+".getCount", param);
	}
	
	
	

}
