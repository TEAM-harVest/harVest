package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class MainController {
	@RequestMapping(value = "mainpage/main", method = RequestMethod.GET)	
	public String Main() {
		// �⺻ �̵���� : �ּҺ��� ���� �̵� 
		return "mainpage/mainPage";
	}
}
