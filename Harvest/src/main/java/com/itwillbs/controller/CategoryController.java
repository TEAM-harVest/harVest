package com.itwillbs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class CategoryController {
	@RequestMapping(value = "category/main", method = RequestMethod.GET)	
	public String main() {
		return "category/main";
	}
	
	@RequestMapping(value = "category/popular", method = RequestMethod.GET)	
	public String popular() {
		return "category/popular";
	}
	
	@RequestMapping(value = "category/newly", method = RequestMethod.GET)	
	public String newly() {
		return "category/newly";
	}
	
	@RequestMapping(value = "category/deadline", method = RequestMethod.GET)	
	public String deadline() {
		return "category/deadline";
	}
	
	@RequestMapping(value = "category/expect", method = RequestMethod.GET)	
	public String expect() {
		return "category/expect";
	}
}
