package com.itwillbs.controller;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.MyFavoriteService;

@Controller
public class MyFavoriteController {
	
	@Inject
	private MyFavoriteService myFavoriteService;
	
	@RequestMapping(value = "/myPage/myFavorite", method = RequestMethod.GET)
	public String myFavoriteList(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		List<Map<String, String>> myFavoriteList = myFavoriteService.getMyFavoriteList(id);
		
		int myFavoriteCount = myFavoriteService.getMyFavoriteCount(id);
		
		model.addAttribute("myFavoriteList", myFavoriteList);
		model.addAttribute("myFavoriteCount", myFavoriteCount);
		
		return "myPage/myFavorite";
	}

}
