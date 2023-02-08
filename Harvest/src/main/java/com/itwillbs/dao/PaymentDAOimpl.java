package com.itwillbs.dao;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PaymentDTO;

@Repository
public class PaymentDAOimpl implements PaymentDAO {
	
	@Inject
	private SqlSession sqlSession;
	
	private static final String namespace="com.itwillbs.mappers.PaymentMapper";
	
	@Override
	public void insertPayment(PaymentDTO dto) {
		
	}

	@Override
	public PaymentDTO getUser(PaymentDTO PaymentDTO) {
		return sqlSession.selectOne(namespace+".getUser", PaymentDTO);
	}
	
	
}
