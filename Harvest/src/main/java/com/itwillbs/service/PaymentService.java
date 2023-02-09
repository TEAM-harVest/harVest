package com.itwillbs.service;

import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.UserDTO;

public interface PaymentService {
	
	public void insertPayment(PaymentDTO paymentdto);
	public UserDTO getUser(String id);

}
