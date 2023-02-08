package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.service.PaymentService;

@Controller
public class PayController {
	
	@Inject
	private PaymentService paymentService;
	
	@RequestMapping(value="/payment/payment", method = RequestMethod.GET)
	public String getUser(Model model, PaymentDTO paymentdto) {
		paymentService.getUser(paymentdto);
		PaymentDTO dto = paymentService.getUser(paymentdto);
		
		model.addAttribute("dto", dto);
		
		return "payment/payment";
		
	}
	
	@RequestMapping(value="/payment/paySuccess", method = RequestMethod.GET)
	public String paySuccess() {
		return "payment/paySuccess";
		
	}
	
	
	
}
