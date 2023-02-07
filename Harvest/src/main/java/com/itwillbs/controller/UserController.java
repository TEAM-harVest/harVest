package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
	@RequestMapping(value = "/user/join", method = RequestMethod.GET)	
	public String join() {
		return "user/join";
	}
	
	@RequestMapping(value = "/user/login", method = RequestMethod.GET)	
	public String login() {
		return "user/login";
	}
	
	@RequestMapping(value = "/user/rePass", method = RequestMethod.GET)	
	public String rePass() {
		return "user/rePass";
	}
}
