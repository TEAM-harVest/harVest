package com.itwillbs.controller;


import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.RegisterRequest;
import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.UserService;

@Controller
public class UserController {

	// �������
	@Inject
	private UserService userService;
	
//	// 1. �����ڸ� ���ؼ� ���� (��ü ������ ���� �޾Ƽ� ���)
//	@Inject
//	private MemberController(MemberService memberService) {
//		this.memberService = memberService;
//	}
//	
//	// 2. set() �޼��� ���� (��ü ������ ���� �޾Ƽ� ���)
//	@Inject
//	public void setMemberService(MemberService memberService) {
//		this.memberService = memberService;
//	}
	
	// ==============================================================
	
//	[ȸ������]
	@RequestMapping(value="/user/insert", method=RequestMethod.GET)
	public String insert() {
		
		return "user/insertForm";
	}
	
	@RequestMapping(value="/user/insertPro", method=RequestMethod.POST)
	public String insertPro(UserDTO userDto) {
		// �̺�Ʈ ���� �˶�
		if (userDto.getEventAlr() == null) {
			userDto.setEventAlr("N");
		}
		
		userService.insertUser(userDto);
		
		return "redirect:/user/login";
	}

//	============================================================================
    
    
//	[�α���]
//	@RequestMapping(value = "/user/login", method = RequestMethod.GET)
//	public String login() {
//		
//		
//		// �⺻ �̵���� : �ּҺ��� ���� �̵�
//		return "user/loginForm";
//	}
	
	@RequestMapping(value = "/user/loginPro", method = RequestMethod.POST)
	public String loginPro(UserDTO userDto, HttpSession session) {
		System.out.println(userDto.getId() + "��������");
		
		UserDTO userDTO2=userService.userCheck(userDto);
		
		if(userDTO2 != null) {
			// ���̵� ��й�ȣ ��ġ => userDTO �ּҴ�Ƽ� �� => ���ǰ� ����, main �̵�
			session.setAttribute("id", userDTO2.getId());

			return "redirect:/projectList/main";
		}else {
			// ���̵� ��й�ȣ Ʋ�� => userDTO null �Ѿ�� => "����Ʋ��" �ڷ� �̵� 
			// member/msg.jsp �̵�

			return "user/msg";
		}
	}
	
	


	

// ==========================================================================
	
	
//	[�α׾ƿ�]
	@RequestMapping(value = "/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		// ���ǰ� ��ü ����
		session.invalidate();
		
		// �⺻ �̵���� : �ּҺ��� �ϸ鼭 �������� �̵�(���ǰ� �Ⱥ��̴ϱ�!)
		return "redirect:/projectList/main";
	}
	
	
	
// ==========================================================================	
	
	
	
//	[��й�ȣ ã�� �� �����ֱ�]
	@RequestMapping(value = "/finding/findPass", method = RequestMethod.GET)
	public String findPass() {
		
		// �⺻ �̵���� : �ּҺ��� �ϸ鼭 �������� �̵�
		return "user/findPass";
	}
	
	
//	[�̸��� �Է��ϰ� userCheck]
	@RequestMapping(value = "/finding/findpassPro", method = RequestMethod.POST)
	public String findpassPro(UserDTO userDto, HttpSession session) {
		// DB���� userCheck(userDTO)
		UserDTO dto2 = userService.passCheck(userDto);
		if(dto2 != null) {
			session.setAttribute("id", dto2.getId());
			return "redirect:/finding/showPass";
		}else {
			return "user/mainPage";	
		}
	}
	
	
//	[��й�ȣ �����ֱ�]
	@RequestMapping(value = "/finding/showPass", method = RequestMethod.GET)
	public String showPass(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		UserDTO userDto = userService.getUser(id);
		
		model.addAttribute("userDto", userDto);
		System.out.println(userDto + " �Ǵ°Ŵ�?");
		
		return "user/showPass";
	}
	
	
}
