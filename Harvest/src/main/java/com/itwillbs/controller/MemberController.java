package com.itwillbs.controller;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.service.MemberService;


@Controller
public class MemberController {
	@Inject
	private MemberService memberService;
	
	/* 로그인 */
	@RequestMapping(value = "/member/loginPro", method = RequestMethod.POST)
	public String loginPro(MemberDTO memberDTO, HttpSession session) {
		
		MemberDTO loginDTO = memberService.userCheck(memberDTO);
		
		if(loginDTO != null) {
			session.setAttribute("iD", loginDTO.getID());
			return "redirect:/main/mainList";
		} else {
			return "projectInfo/projectInfoPage";
		}
	}
	
	@RequestMapping(value = "/member/logout", method = RequestMethod.GET)
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "redirect:/main/mainList";
	}
}
