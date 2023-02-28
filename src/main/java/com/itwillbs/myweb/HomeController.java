package com.itwillbs.myweb;

//import java.text.DateFormat;
//import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */

// Controller(BoardFrontController) => 주소 매핑을 하고 jsp로 이동 or java메서드 호출하여 처리 후 이동
@Controller // @Controller 역할: 주소매핑하는 역할
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	
	// @RequestMapping : 가상주소에서 자동으로 주소 뽑기
	// 전송 방식이 get방식 : method = RequestMethod.GET => get방식으로 요청이 들어옴
	// => 뽑아온 주소와 value="/"를 비교
	// => 주소 비교해서 일치하면 메서드 동작
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
//		logger.info("Welcome home! The client locale is {}.", locale);
//		
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//		
//		String formattedDate = dateFormat.format(date);
//		
//		// 메서드에서 Model model 변수에 객체 생성한 model을 받아서
//		// model에 데이터를 담아서(글 목록, 페이지 정보 => request에 저장)
//		model.addAttribute("serverTime", formattedDate );
		// ${serverTime} => model에 담아간 데이터 이름을 출력하면 값이 출력 됨
		
		// 가상주소 : http://localhost:8080/myweb/
		// 주소 변경없이 이동하는 방식
		// RequestDispatcher dis = request.getResquestDispatcher(forward.getPath());
		// dis.forward(request, response);
		
		// 여기로 이동. 이동 주소 지정
		// 실제 화면에 보이는 내용 : /WEB-INF/views/파일이름.jsp
		// 기본 이동방식 : 주소 변경없이 이동(redirect:없음)
//		return "home"; // cf) redirect가 있으면 주소 변경하여 이동
//		return "redirect:/user/mainPage";
//		return "redirect:/user/insert";
		return "redirect:/user/login";
		
	} // 메서드
	
	
}
