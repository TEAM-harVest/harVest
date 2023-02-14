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
	public List<ProjectDTO> getAllList() {
		return sqlSession.selectList(namespace+".getAllList");
	}

	@Override
	public int getProjCount() {
		return sqlSession.selectOne(namespace+".getProjCount");
	}

	@Override
	public List<ProjectDTO> getCategoryList(String category) {
		return sqlSession.selectList(namespace+".getCategoryList", category);
	}

	@Override
	public int getCateCount(String category) {
		return sqlSession.selectOne(namespace+".getCateCount", category);
	}

	@Override
	public List<ProjectDTO> getNewly() {
		return sqlSession.selectList(namespace+".getNewly");
	}

	@Override
	public int getNewCount() {
		return sqlSession.selectOne(namespace+".getNewCount");
	}

	@Override
	public List<ProjectDTO> getDeadline() {
		return sqlSession.selectList(namespace+".getDeadline");
	}

	@Override
	public int getDeadCount() {
		return sqlSession.selectOne(namespace+".getDeadCount");
	}

	@Override
	public List<ProjectDTO> getPopular(String percent) {
		return sqlSession.selectList(namespace+".getPopular");
	}

	@Override
	public int getPopCount(String percent) {
		return sqlSession.selectOne(namespace+".getPopCount");
	}

	@Override
	public List<ProjectDTO> getExpect() {
		return sqlSession.selectList(namespace+".getExpect");
	}

	@Override
	public int getExpCount() {
		return sqlSession.selectOne(namespace+".getExpCount");
	}

	@Override
	public List<ProjectDTO> getSearchList(String search) {
		return sqlSession.selectList(namespace+".getSearch", search);
	}

	@Override
	public int getSearchCount(String search) {
		return sqlSession.selectOne(namespace+".getSearchCount", search);
	}

	@Override
	public void updateAlramcount(int idx) {
		sqlSession.update(namespace+".updateAlramcount", idx);
		
	}

	@Override
	public List<ProjectDTO> getProjectList(Map<String, String> param) {
		return sqlSession.selectList(namespace + ".getProject", param);
	}

	
	

}
