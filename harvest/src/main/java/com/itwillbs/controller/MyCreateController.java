package com.itwillbs.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.MyCreateService;

@Controller
public class MyCreateController {
	
	@Inject
	MyCreateService myCreateService;
	
	@RequestMapping(value = "myPage/myCreate", method = RequestMethod.GET)
	public String myCreate(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		
		List<Map<String, String>> myCreateList = myCreateService.getMyCreateList(id);
		int myCreateCount = myCreateService.getMyCreateCount(id);
		
		model.addAttribute("myCreateList", myCreateList);
		model.addAttribute("myCreateCount", myCreateCount);
		
		return "myPage/myCreate";
		
	}

}
