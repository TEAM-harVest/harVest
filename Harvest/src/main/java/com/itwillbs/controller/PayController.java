package com.itwillbs.controller;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.AddressService;
import com.itwillbs.service.PaymentService;
import com.itwillbs.service.ProjectInfoService;
import com.itwillbs.service.UserService;

@Controller
public class PayController {
	
	@Inject
	private PaymentService paymentService;
	@Inject
	private ProjectInfoService ProjectInfoService;
	
	@RequestMapping(value="/payment/content", method = RequestMethod.POST)
	public String content(HttpSession session, UserDTO userDto, Model model, String id) { 
		 UserDTO dto = paymentService.getUser(id);
		 //세션값 생성
		 session.setAttribute("id", userDto.getId());
		 model.addAttribute("dto", dto);
		 return "payment/content";
	}
	
	@RequestMapping(value="/payment/payment", method = RequestMethod.POST)
	public String getUser(Model model
			, @RequestParam("idx") String idx
			, @RequestParam("userDona") int userDona, HttpSession session ) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("IDX", idx + "");
		
		param = ProjectInfoService.getProjectInfo(param);
//		PaymentDTO paydto = new PaymentDTO();
		//세션값 가져오기
		String id = (String)session.getAttribute("id");
		UserDTO UserDto = paymentService.getUser(id);
		
//		model.addAttribute("pdto", pdto);
		model.addAttribute("projectParam", param);
		model.addAttribute("userDona", userDona);
//		model.addAttribute("payDate", payDate);
		model.addAttribute("UserDto", UserDto);
		
		return "payment/payment";
	}
		
	@RequestMapping(value="/payment/paySuccess", method = RequestMethod.GET)
	public String paySuccess(PaymentDTO paymentDto, ProjectDTO projectDto, Model model, String idx) {
		
		return "payment/paySuccess";
	}
}
