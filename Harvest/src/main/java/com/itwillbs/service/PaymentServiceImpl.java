package com.itwillbs.service;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.itwillbs.dao.PaymentDAO;
import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.UserDTO;

@Service
public class PaymentServiceImpl implements PaymentService {
	
	@Inject
	private PaymentDAO paymentDAO;
	

	@Override
	public void insertPayment(PaymentDTO dto) {
		
	}

	@Override
	public UserDTO getUser(String id) {
		return paymentDAO.getUser(id);
	}
	
	
	
}
