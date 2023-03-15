package com.itwillbs.controller;


import java.io.File;
import java.io.IOException;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.context.annotation.ImportResource;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.AddressDTO;
import com.itwillbs.domain.RegisterRequest;
import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.UserService;

@Controller
public class UserController {

	// 멤버변수
	@Inject
	private UserService userService;
	
	//xml 업로드 경로 (자원이름)=> 변수 저장
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	
//	[회원가입]
	@RequestMapping(value="/user/insert", method=RequestMethod.GET)
	public String insert() {
		
		return "user/insertForm";
	}
	
	@RequestMapping(value="/user/insertPro", method=RequestMethod.POST)
	public String insertPro(HttpServletRequest request, UserDTO userDto, AddressDTO addressDto, MultipartFile file) throws Exception{
		// 이벤트 수신 알람
		if (userDto.getEventAlr() == null) {
			userDto.setEventAlr("N");
		}
		System.out.println("userDto.getName(); "+ userDto.getName());
		// 우편번호 + 배송지
		String address = addressDto.getAddress();
		
		// 파일 업로드 => 랜덤문자_파일이름 => 파일이름 중복 안됨
		UUID uuid = UUID.randomUUID();
		
		String filename = uuid.toString() + "_" + file.getOriginalFilename();
		
		
		// 원본 파일 복사 => upload 복사
//		FileCopyUtils.copy(원본, 복사해서 새롭게 파일 만들기);
		// 저장된 파일 바로 ajax로 화면에 보여줄 때 필요함
		FileCopyUtils.copy(file.getBytes(), new File(uploadPath, filename));
		
		userDto.setId(request.getParameter("id"));
		userDto.setPass(request.getParameter("pass"));
		userDto.setName(request.getParameter("name"));
		userDto.setPhone(request.getParameter("phone"));
		userDto.setProfile(filename);
		

		
		userService.insertUser(userDto);
		userService.insertAddress(addressDto);  // 우편번호 + 주소
		
		return "redirect:/user/login";
	}

//	============================================================================
	
	@RequestMapping(value = "/user/loginPro", method = RequestMethod.POST)
	public String loginPro(UserDTO userDto, HttpSession session) {
		System.out.println(userDto.getId() );
		
		UserDTO userDTO2=userService.userCheck(userDto);
		
		if(userDTO2 != null) {
			// 아이디 비밀번호 일치 => userDTO 주소담아서 옴 => 세션값 생성, main 이동
			session.setAttribute("id", userDTO2.getId());

			return "redirect:/user/mainPage";
		}else {
			// 아이디 비밀번호 틀림 => userDTO null 넘어옴 => "정보틀림" 뒤로 이동 
			// member/msg.jsp 이동

			return "user/msg";
		}
	}
	

// ==========================================================================
	
	
//	[메인 화면]
	@RequestMapping(value = "/user/mainPage", method = RequestMethod.GET)
	public String main() {
		
		// 기본 이동방식 : 주소변경 하면서 이동
		return "user/mainPage";
	}
	
	
//	[로그아웃]
	@RequestMapping(value = "/user/logout", method = RequestMethod.GET)
	public String logout(HttpSession session) {
		// 세션값 전체 삭제
		session.invalidate();
		
		// 기본 이동방식 : 주소변경 하면서 메인으로 이동(세션값 안보이니까!)
		return "redirect:/user/mainPage";
	}
	
	
// ==========================================================================	
	
	
//	[비밀번호 찾기 폼 보여주기]
	@RequestMapping(value = "/finding/findPass", method = RequestMethod.GET)
	public String findPass() {
		
		// 기본 이동방식 : 주소변경 하면서 메인으로 이동
		return "finding/findPass";
	}
	
	
//	[이메일 입력하고 passCheck]
	@RequestMapping(value = "/finding/findpassPro", method = RequestMethod.POST)
	public String findpassPro(UserDTO userDto, HttpSession session) {
		System.out.println(userDto.getId().toString());
		// DB에서 passCheck(userDto)
		UserDTO dto2 = userService.passCheck(userDto);
		if(dto2 != null) {
			session.setAttribute("id", dto2.getId());
			return "redirect:/finding/showPass";
		}else {
			return "user/mainPage";	
		}
	}
	
	
//	[비밀번호 보여주기]
	@RequestMapping(value = "/finding/showPass", method = RequestMethod.GET)
	public String showPass(HttpSession session, Model model) {
		String id = (String)session.getAttribute("id");
		UserDTO userDto = userService.getUser(id);
		
		model.addAttribute("userDto", userDto);
		
		return "finding/showPass";
	}
	
	
}
