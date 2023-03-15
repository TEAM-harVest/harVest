package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.MyPageService;

@Controller
public class MyPageController {
	
	
	@Inject
	private MyPageService myPageService;
	
	@RequestMapping(value = "/myPage/myPage", method = RequestMethod.GET)	
	public String myPage() {
		
		// 기본 이동방식 : 주소변경 없이 이동 
		return "myPage/myPage";
	}
	

	
	@RequestMapping(value = "/myPage/mySettingPage", method = RequestMethod.GET)
	public String mySettingPage(HttpSession session, Model model) {	// request대신 Model에 담음
		// 세션값 id에 대한 정보를 DB에서 조회
		String id=(String)session.getAttribute("id");
		
		// 메서드 호출
		UserDTO userDto = myPageService.getUser(id);
		
		// dto	Model model(request) 담기
		model.addAttribute("userDto", userDto);
		
		// 기본 이동방식 : 주소변경 없이 이동 
		return "myPage/mySettingPage";
	}
	

	@RequestMapping(value = "/myPage/unregist", method = RequestMethod.GET)
	public String unregist(UserDTO userDto) {	// request대신 Model에 담음
		
		return "myPage/unregist";
		
		
	}
	
	

	
	
	
	
}
