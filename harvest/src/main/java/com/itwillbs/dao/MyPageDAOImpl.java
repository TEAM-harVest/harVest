package com.itwillbs.dao;

import java.util.Map;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.UserDTO;

@Repository
public class MyPageDAOImpl implements MyPageDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace="com.itwillbs.mappers.myPageMapper";
	
	
	@Override
	public void insertUser(UserDTO userDto) {
		sqlSession.insert(namespace+".insertUser",userDto);
	}

	@Override
	public UserDTO getUser(String id) {
		return sqlSession.selectOne(namespace+".getUser", id);
	}
	
	@Override
	public UserDTO userCheck(UserDTO userDto) {
		return sqlSession.selectOne(namespace+".userCheck", userDto);
	}
	
	@Override
	public void updateUser(Map<String, String> param) {
		sqlSession.update(namespace+".updateUser", param);
	}
	
	@Override
	public void deleteUser(UserDTO usetDto) {
		sqlSession.delete(namespace+".deleteUser", usetDto);
		
	}

	

	
	
	

}
