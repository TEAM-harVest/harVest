package com.itwillbs.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.MySupportService;

@Controller
public class MySupportController {

	@Inject
	private MySupportService mySupportService;
	
	@RequestMapping(value = "/myPage/mySupport", method = RequestMethod.GET)
	public String mySupportList(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		
		List<Map<String, String>> mySupportList = mySupportService.getMySupportList(id);
		int mySupportCount = mySupportService.getMySupportCount(id);
		
		model.addAttribute("mySupportList", mySupportList);
		model.addAttribute("mySupportCount", mySupportCount);
		
		return "myPage/mySupport";
	}
	
}
