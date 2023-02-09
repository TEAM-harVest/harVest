package com.itwillbs.dao;

import org.springframework.stereotype.Repository;

import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.UserDTO;

public interface PaymentDAO {
	
	public void insertPayment(PaymentDTO dto);
	public UserDTO getUser(String id);
}
