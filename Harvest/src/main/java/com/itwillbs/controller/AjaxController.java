package com.itwillbs.controller;

import java.io.File;
import java.sql.Timestamp;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.CommunityDTO;
import com.itwillbs.domain.CommunityReplyDTO;
import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.ProductUpdateDTO;
import com.itwillbs.domain.UserDTO;
import com.itwillbs.service.CommunityReplyService;
import com.itwillbs.service.CommunityService;
import com.itwillbs.service.PaymentService;
import com.itwillbs.service.ProductUpdateService;
import com.itwillbs.service.ProjectInfoService;
import com.itwillbs.service.UserService;
import com.itwillbs.service.UserServiceImpl.MailSendService;

@Controller
public class AjaxController {
	
	@Autowired
	private JavaMailSender mailSender;
	@Autowired
	private MailSendService mailService;
	
	@Inject
	private PaymentService paymentService;
	@Inject
	private ProjectInfoService projectInfoService;
	@Inject
	private UserService userService;
	@Inject
	private ProductUpdateService productUpdateService;
	@Inject
	private CommunityService communityService;
	@Inject
	private CommunityReplyService communityReplyService;
	
	//xml 업로드 경로 (자원이름)=> 변수 저장
	@Resource(name = "uploadPath")
	private String uploadPath;
	
	// projectList 페이지
	@ResponseBody
	@RequestMapping(value = "/project/likePro" , method = RequestMethod. POST)
	public String like(@RequestParam(value = "PJ_IDX") String pjIdx,
							   @RequestParam(value = "USER_ID") String userId) {

		Map<String, String> param = new HashMap<String, String>();
		param.put("PJ_IDX", pjIdx);
		param.put("USER_ID", userId);
		String result = projectInfoService.setLike(param);
		System.out.println("아이디" + userId);
		return result;
	}
	
	@ResponseBody
	@RequestMapping(value = "/project/alramPro" , method = RequestMethod. POST)
	public String alram(@RequestParam(value = "PJ_IDX") String pjIdx,
						@RequestParam(value = "USER_ID") String userId,
						@RequestParam(value = "TITLE") String title
//						@RequestParam(value = "START") String start
						) throws Exception {
		Map<String, String> param = new HashMap<String, String>();
		param.put("PJ_IDX", pjIdx);
		param.put("USER_ID", userId);
		param.put("TITLE", title);
		String result = projectInfoService.setAlram(param);
		String content = "프로젝트펀딩이 시작되었습니다. https://tumblbug.com/";
        String from = "ki6532@naver.com";
		
		try {
        	// �씠硫붿씪 蹂대궡�뒗 援щЦ
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
            
            mailHelper.setFrom(from);
            mailHelper.setTo(userId);
            mailHelper.setSubject("["+title+"] 프로젝트 펀딩이 시작되었습니다.");
            mailHelper.setText(content);
            
            mailSender.send(mail);
            
            System.out.println("성공");
            
        } catch(Exception e) {
            e.printStackTrace();
            System.out.println("실패");
        }
		
		System.out.println("아이디 " + userId);
		System.out.println("제목 " + title);
		return result;
	}
	
	
	// User 페이지
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
		
//		[이메일 인증]
		@GetMapping("/user/mailCheck")
		@ResponseBody
		public String mailCheck(String email) {
			System.out.println("이메일 인증 요청이 들어옴!");
			System.out.println("이메일 인증 이메일 : " + email);
			return mailService.joinEmail(email);
			
				
		}
		
		// 민영
		@RequestMapping(value="/payment/paySuccessPro", method = RequestMethod.GET)
		public  ResponseEntity<String>  paySuccess(Model model, HttpServletRequest request) throws Exception { 
			String result = "성공";
			PaymentDTO dto = new PaymentDTO();
			int pjIdx = Integer.parseInt(request.getParameter("pjIdx")); 
			String id = request.getParameter("id");
			int amount = Integer.parseInt(request.getParameter("amount"));
			String address = request.getParameter("address");
			String phone = request.getParameter("phone");
			String payDate = request.getParameter("payDate");
			String status = request.getParameter("status");
			
			dto.setPjIdx(pjIdx);
			dto.setId(id);
			dto.setAmount(amount);
			dto.setAddress(address);
			dto.setPhone(phone);
			dto.setDate((new Timestamp(System.currentTimeMillis())));
			SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
//			System.out.println(payDate);
//			LocalDate payDate1 = LocalDate.parse(payDate);
			Date payDate1 = format.parse(payDate);
			dto.setPayDate(payDate1);
			
			dto.setStatus(status);
			System.out.println(dto.toString());
			
			paymentService.insertPayment(dto);
		
			 ResponseEntity<String> entity = new ResponseEntity<String>(result, HttpStatus.OK);
	         return entity;
		}
		

		// 숙인
		// 커뮤니티탭에 댓글쓰기
//		@ResponseBody // ajax를 위한 메서드...자바 객체를 HTTP 응답 본문의 객체로 변환
		@RequestMapping(value = "/project/CommunityWriteAjax", method = RequestMethod.POST)
		public ResponseEntity<List<CommunityDTO>> CommunityWriteAjax(@RequestPart(name = "keyA") CommunityDTO communityDTO, HttpServletRequest request, 
																	 @RequestPart(name = "keyB") MultipartFile file) throws Exception {
			
			// 업로드 파일명 => 랜덤문자_파일이름 => 파일이름 중복 안됨
			UUID uuid = UUID.randomUUID();
			String fileName = uuid.toString() + "_" + file.getOriginalFilename();
			
			// 원본 파일 복사 => upload 복사
//			FileCopyUtils.copy(원본, 복사해서 새롭게 파일 만들기);
			FileCopyUtils.copy(file.getBytes(), new File(uploadPath, fileName));
			
			System.out.println("Ddddfsdfsdf");
			
			communityDTO.setPjIdx(Integer.parseInt(request.getParameter("pjIdx")));
			communityDTO.setId(request.getParameter("id"));
			communityDTO.setContent(request.getParameter("content"));
			communityDTO.setContentLabel(request.getParameter("contentLabel"));
			communityDTO.setImgA(fileName);
			
			System.out.println("asdasd" + communityDTO.toString());
			
			
			// 커뮤니티 글 넣기
			communityService.insertBoard(communityDTO);
			
			// 넣은 글 ajax로 보내기
			List<CommunityDTO> communityList1 = communityService.getComm1List(communityDTO);
			
			// ResponseEntity에 출력결과를 담아서 리턴
			ResponseEntity<List<CommunityDTO>> entity = new ResponseEntity<List<CommunityDTO>>(communityList1, HttpStatus.OK);
			
			
			return entity; // 이동 주소가 아니라 결과 값을 담아서 리턴

		}
		
		// 커뮤니티탭에 댓글의 댓글쓰기
		@RequestMapping(value = "/project/CommunityReplyAjax", method = RequestMethod.POST)
		public ResponseEntity<List<CommunityReplyDTO>> CommunityReplyAjax(CommunityReplyDTO communityReplyDTO, HttpServletRequest request ) {
			
			communityReplyService.insertReply(communityReplyDTO);
			
			List<CommunityReplyDTO> getCommunityReplyList = communityReplyService.getCommunityReplyList(communityReplyDTO);
			
			// ResponseEntity에 출력결과를 담아서 리턴
			ResponseEntity<List<CommunityReplyDTO>> entity = new ResponseEntity<List<CommunityReplyDTO>>(getCommunityReplyList, HttpStatus.OK);
			
			
			return entity; // 이동 주소가 아니라 결과 값을 담아서 리턴

		}
		
		// 커뮤니티탭에 쓴 댓글 응원/문의/후기 탭마다 다르게 list보이게 하기
		@RequestMapping(value = "/project/CommunityListAjax", method = RequestMethod.GET)	
		public ResponseEntity<List<CommunityDTO>> communityList(HttpServletRequest request, CommunityDTO communityDTO) {
			
			communityDTO.setContentLabel(request.getParameter("contentLabel"));
			communityDTO.setPjIdx(Integer.parseInt(request.getParameter("pjIdx")));

			List<CommunityDTO> commList = communityService.getComm1List(communityDTO);
			
			ResponseEntity<List<CommunityDTO>> entity = new ResponseEntity<List<CommunityDTO>>(commList,HttpStatus.OK);
			
			return entity;
		}
		
		// 커뮤니티탭 댓글 삭제
		@RequestMapping(value = "/project/deleteAjax", method = RequestMethod.GET)	
		public ResponseEntity<String> delete(CommunityDTO communityDTO, HttpServletRequest request, RedirectAttributes redirect) {

			int idx = Integer.parseInt(request.getParameter("idx")); // 프로젝트 번호
			communityService.deleteBoard(idx);
//			redirect.addAttribute("idx", request.getParameter("pjIdx"));

			String result = "삭제 확인";
					
			ResponseEntity<String> entity = new ResponseEntity<String>(result,HttpStatus.OK);

			return entity; 
		}
						
}