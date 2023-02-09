package com.itwillbs.controller;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.PaymentService;

@Controller
public class PayController {
	
	@Inject
	private PaymentService paymentService;
	
	@RequestMapping(value="/payment/payment", method = RequestMethod.GET)
	public String getUser(Model model, String id) {
		paymentService.getUser(id);
		UserDTO dto = paymentService.getUser(id);
		
		model.addAttribute("dto", dto);
		
		return "payment/payment";
		
	}
	
	@RequestMapping(value="/payment/paySuccess", method = RequestMethod.GET)
	public String paySuccess() {
		return "payment/paySuccess";
		
	}
	
	
	@RequestMapping(value="/payment/donationPage", method = RequestMethod.GET)
	public String donationPage() {
		return "payment/donationPage";
		
	}
	
	@RequestMapping(value="/payment/address", method = RequestMethod.GET)
	public String addAddress() {
		return "payment/address";
		
	}
	
	
}
