package com.itwillbs.service;

import com.itwillbs.domain.PaymentDTO;

public interface PaymentService {
	
	public void insertPayment(PaymentDTO paymentdto);
	public PaymentDTO getUser(PaymentDTO paymentdto);

}
