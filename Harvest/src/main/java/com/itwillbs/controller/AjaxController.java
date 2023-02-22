package com.itwillbs.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.ProjectInfoService;
import com.itwillbs.service.UserService;
import com.itwillbs.service.UserServiceImpl.MailSendService;

@Controller
public class AjaxController {
	
	@Autowired
	private MailSendService mailService;
	
	@Inject
	private ProjectInfoService projectInfoService;
	@Inject
	private UserService userService;
	
	
	// projectList �럹�씠吏�
	@ResponseBody
	@RequestMapping(value = "/project/likePro" , method = RequestMethod. POST)
	public String like(@RequestParam(value = "PJ_IDX") String pjIdx,
							   @RequestParam(value = "USER_ID") String userId) {

		Map<String, String> param = new HashMap<String, String>();
		param.put("PJ_IDX", pjIdx);
		param.put("USER_ID", userId);
		String result = projectInfoService.setLike(param);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/project/alramPro" , method = RequestMethod. POST)
	public String alram(@RequestParam(value = "PJ_IDX") String pjIdx,
						@RequestParam(value = "USER_ID") String userId
						) throws Exception {
		Map<String, String> param = new HashMap<String, String>();
		param.put("PJ_IDX", pjIdx);
		param.put("USER_ID", userId);
		param.put("CODE", "ALM2");
		String result = projectInfoService.setAlram(param);
		return result;
	}
	
	
	// User 페이지
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
	

//	[이메일 인증]
	@GetMapping("/user/mailCheck")
	@ResponseBody
	public String mailCheck(String email) {
		System.out.println("이메일 인증 요청이 들어옴!");
		System.out.println("이메일 인증 이메일 : " + email);
		return mailService.joinEmail(email);
		
			
							
	}
						
}