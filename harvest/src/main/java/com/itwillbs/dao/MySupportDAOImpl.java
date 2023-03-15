package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;


@Repository
public class MySupportDAOImpl implements MySupportDAO {

	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.itwillbs.mappers.mySupportMapper";
	
	@Override
	public List<Map<String, String>> getMySupportList(String id) {
		return sqlSession.selectList(namespace + ".getMySupportList", id);
	}

	@Override
	public int getMySupportCount(String id) {
		return sqlSession.selectOne(namespace + ".getMySupportCount", id);
	}

	
	
}
