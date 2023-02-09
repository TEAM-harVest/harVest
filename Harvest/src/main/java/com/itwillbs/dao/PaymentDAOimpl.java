package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.UserDTO;

@Repository
public class PaymentDAOimpl implements PaymentDAO {
	
	@Inject
	private SqlSession sqlSession;

	
	private static final String namespace="com.itwillbs.mappers.PaymentMapper";
	
	@Override
	public void insertPayment(PaymentDTO dto) {
		
	}

	@Override
	public UserDTO getUser(String id) {
		return sqlSession.selectOne(namespace+".getUser", id);
	}
	
	
}
