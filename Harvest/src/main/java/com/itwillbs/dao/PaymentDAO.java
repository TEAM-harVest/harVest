package com.itwillbs.dao;

import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PaymentDTO;

public interface PaymentDAO {
	
	public void insertPayment(PaymentDTO dto);
	public PaymentDTO getUser(PaymentDTO PaymentDTO);
}
