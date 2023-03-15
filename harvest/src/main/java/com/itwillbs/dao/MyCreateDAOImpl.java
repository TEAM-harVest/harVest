package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MyCreateDAOImpl implements MyCreateDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.itwillbs.mappers.myCreateMapper";
	
	@Override
	public List<Map<String, String>> getMyCreateList(String id) {
		return sqlSession.selectList(namespace + ".getMyCreateList", id);
	}

	@Override
	public int getMyCreateCount(String id) {
		return sqlSession.selectOne(namespace + ".getMyCreateCount", id);
	}
	
}
