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
	public List<ProjectDTO> getPopular() {
		return sqlSession.selectList(namespace+".getPopular");
	}

	@Override
	public int getPopCount() {
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
	public void updateAlramcount(int idx) {
		sqlSession.update(namespace+".updateAlramcount", idx);
		
	}

	@Override
	public List<ProjectDTO> getProjectList() {
		return sqlSession.selectList(namespace + ".getProject");
	}
	@Override
	public List<ProjectDTO> getPjList(String search) {
		return sqlSession.selectList(namespace+".getPjList", search);
	}
	@Override
	public int getPjCount(String search) {
		return sqlSession.selectOne(namespace+".getPjCount", search);
	}
	
	

}
