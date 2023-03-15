package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MyFavoriteDAOImpl implements MyFavoriteDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.myFavoriteMapper";
	
	@Override
	public List<Map<String, String>> getMyFavoriteList(String id) {
		return sqlSession.selectList(namespace + ".getMyFavoriteList", id);
	}
	
	@Override
	public int getMyFavoriteCount(String id) {
		return sqlSession.selectOne(namespace + ".getMyFavoriteCount", id);
	}

	
}
