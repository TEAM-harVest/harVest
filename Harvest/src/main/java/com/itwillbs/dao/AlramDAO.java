package com.itwillbs.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.AlramDTO;

@Repository
public class AlramDAO {
	
	@Inject 
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.alramMapper";
	
	public void insertAlram(AlramDTO alramDTO) {
		sqlSession.insert(namespace + ".insertAlram", alramDTO); 
	}

	public List<AlramDTO> getAlram() {
		return sqlSession.selectList(namespace+".getAlram");
	}
	
	public int getAlramCount() {
		return sqlSession.selectOne(namespace+".getAlramCount");
	}

	public Integer getMaxNum() {
		return sqlSession.selectOne(namespace+".getMaxNum");
	}






}
