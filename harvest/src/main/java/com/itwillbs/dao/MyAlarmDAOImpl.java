package com.itwillbs.dao;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class MyAlarmDAOImpl implements MyAlarmDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.myAlarmMapper";
	
	@Override
	public List<Map<String, String>> getMyAlarmList(String id) {
		return sqlSession.selectList(namespace + ".getMyAlarmList", id);
	}
	
	

}
