package com.itwillbs.controller;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;
import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.itwillbs.domain.BoardDTO;
import com.itwillbs.domain.CommunityDTO;
import com.itwillbs.domain.PaymentDTO;
import com.itwillbs.domain.ProductUpdateDTO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.service.CommunityService;
import com.itwillbs.service.ProductUpdateService;
import com.itwillbs.service.ProjectInfoService;


@Controller
public class ProjectInfoController {
	
	@Inject
	private ProjectInfoService projectInfoService;
	
//	@Inject
	private CommunityService communityService;
	
	@Inject
	private ProductUpdateService productUpdateService;
	
	// xml 업로드 경로(자원이름) => 변수 저장
//	@Resource(name = "uploadPath") // servlet-context.xml에 있는 id
//	private String uploadPath;
		
	@RequestMapping(value = "/main/mainList", method = RequestMethod.GET)
	public String mainList(HttpServletRequest request, Model model) {
		List<ProjectDTO> projectList = projectInfoService.getProjectList();
		model.addAttribute("projectList", projectList);
		return "main/list";
	}
	
	@RequestMapping(value = "/project/projectInfo", method = RequestMethod.GET)
	public String projectInfo(@RequestParam("idx")int idx, Model model, HttpSession session, CommunityDTO communityDTO, ProductUpdateDTO productUpdateDTO, HttpServletRequest request) {
		
		Map<String, String> param = new HashMap<String, String>();
		String sessionId = (String)session.getAttribute("id");
		
		if(sessionId != null) {
			param.put("SESSIONID", sessionId);
		}
		param.put("IDX", idx + "");
		
		ProjectDTO projectDTO = projectInfoService.getProjectInfo(param);
		
		model.addAttribute("projectDTO", projectDTO);

		// 숙
		List<ProductUpdateDTO> productUpdateList = productUpdateService.getUpdateList(productUpdateDTO);
		
		model.addAttribute("productUpdateList", productUpdateList);
		
		productUpdateDTO.setPjIdx(Integer.parseInt(request.getParameter("idx")));
//		model.addAttribute("productUpdateDTO", productUpdateDTO);
//		model.addAttribute("communityDTO", communityDTO);
		
		// 프로젝트 창작자만 '창작자 공지탭' 글쓰기/수정/삭제 하기위해 id 가져오기
		ProjectDTO creatorWrite = productUpdateService.getCreatorWrite(idx);
		model.addAttribute("creatorWrite", creatorWrite);
		
		return "projectInfo/projectInfoPage";
	}

	// 숙인
	// 창작자 공지 인서트,업데이트 동시에 하기
	@RequestMapping(value = "/project/productUpdateWritePro", method = RequestMethod.POST)
	public String productUpdateWritePro(ProductUpdateDTO productUpdateDTO, 
										RedirectAttributes redirect, 
										HttpServletRequest request, 
										Model model,
										HttpServletResponse response,
										@RequestParam("text")int idx) {
		
		
		productUpdateDTO.setIdx(idx);
		productUpdateService.insertBoard(productUpdateDTO);
		
		
		redirect.addAttribute("idx", request.getParameter("pjIdx"));
		
		// 기본 이동방식 : 주소변경 없이 이동
		return "redirect:/project/projectInfo";
	}
	
	
	// 창작자 공지글 삭제하기
	@RequestMapping(value = "/project/delete", method = RequestMethod.GET)	
	public String delete(ProductUpdateDTO productUpdateDTO
					   , HttpServletRequest request
					   , RedirectAttributes redirect) {

		int idx = Integer.parseInt(request.getParameter("idx")); // 프로젝트 번호
		int num = Integer.parseInt(request.getParameter("num")); // 프로젝트의 인덱스번호
		
		productUpdateDTO.setIdx(num);
		productUpdateDTO.setPjIdx(idx);
		productUpdateService.deleteBoard(productUpdateDTO);
		
		redirect.addAttribute("idx", idx);
		
		
		return "redirect:/project/projectInfo"; 
	}
	
}
