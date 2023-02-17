package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.MemberDTO;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Inject
	private SqlSession sqlSession;
	private static final String namespace = "com.itwillbs.mappers.memberMapper";
	
	@Override
	public MemberDTO userCheck(MemberDTO memberDTO) {
//		sqlSession.selectList(namespace + ".userCheck", memberDTO);
		System.out.println(memberDTO.getID());
		return sqlSession.selectOne(namespace + ".userCheck", memberDTO);
		
	}
}
