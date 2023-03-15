package com.itwillbs.controller;

import java.io.File;
import java.util.Random;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.UserService;
import com.itwillbs.service.UserServiceImpl.MailSendService;

@RestController
public class AjaxController {
	
	//xml 업로드 경로 (자원이름)=> 변수 저장
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	@Inject
	private UserService userService;
	
	// '${pageContext.request.contextPath }/user/idCheck' 가상주소
	// 주소 매핑 처리 => 처리결과 출력
	@RequestMapping(value = "/user/idCheck", method = RequestMethod.GET)
	public ResponseEntity<String> idCheck(HttpServletRequest request) {
		String result = "";
		
		// data:{'id':$('.id').val()},
		String id = request.getParameter("id");
		
		// UserDTO dto = getUser() 메서드 호출
		UserDTO dto = userService.getUser(id);
		if(dto != null) {
			// 아이디 있음 => 아이디 중복
			result = "아이디 중복";
		}else {
			// 아이디 없음 => 아이디 사용가능
			result = "아이디 사용가능";
		}
		
		// ResponseEntity에 출력 결과를 담아서 리턴
		ResponseEntity<String> entity = new ResponseEntity<String>(result, HttpStatus.OK);
		return entity;	//결과 리턴
		
	}
	
	

//	[회원가입 이메일 인증]
	@Autowired
	private MailSendService mailService;
	
	@GetMapping("/user/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		return mailService.joinEmail(email);
			
	}
	
	
	
	
//	[비밀번호 찾기 이메일 인증]
	@Autowired
	private MailSendService mailService2;
	
	@GetMapping("/user/findPassCheck")
	@ResponseBody
	public String findPassCheck(String email) {
		System.out.println("비번찾기 이메일 인증 요청이 들어옴!");
		System.out.println("비번찾기 이메일 인증 이메일 : " + email);
		return mailService2.findEmail(email);
			
	}
	
	
	
	
	
	
}
