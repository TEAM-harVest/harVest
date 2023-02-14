package com.itwillbs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.service.ProjectListService;

@Controller
public class ProjectListController {
	
	@Inject
	private ProjectListService projectListService;
	
	@RequestMapping(value = "projectList/main", method = RequestMethod.GET)	
	public String main(@RequestParam(value="search",required=false,defaultValue="")String search
//			, @RequestParam("category") String category
			, Model model, HttpServletRequest request) {
		List<ProjectDTO> pjList=projectListService.getPjList(search);
		List<ProjectDTO> popular=projectListService.getPopular();
		List<ProjectDTO> newly=projectListService.getNewly();
		List<ProjectDTO> deadline=projectListService.getDeadline();
		int pjCount=projectListService.getPjCount(search);
		model.addAttribute("getPjCount", pjCount);
		model.addAttribute("getPjList", pjList);
		model.addAttribute("popular", popular);
		model.addAttribute("newly", newly);
		model.addAttribute("deadline", deadline);
		return "projectList/main";
	}
	
	@RequestMapping(value = "projectList/pjList", method = RequestMethod.GET)	
	public String pjList(@RequestParam(value="search",required=false,defaultValue="")String search
//			, @RequestParam("category") String category
			, Model model, HttpServletRequest request) {
		int pjCount=projectListService.getPjCount(search);
		List<ProjectDTO> pjList=projectListService.getPjList(search);
		
		model.addAttribute("getPjCount", pjCount);
		model.addAttribute("getPjList", pjList);
		return "projectList/allProject";
	}
	
	@RequestMapping(value = "projectList/project", method = RequestMethod.GET)
	public String projectList(Model model, HttpSession session) {
		List<ProjectDTO> projectList=projectListService.getProjectList();
		int newCount=projectListService.getNewCount();
		model.addAttribute("projectList", projectList);
		model.addAttribute("getNewCount", newCount);
		return "projectList/newly";
	}
	
	@RequestMapping(value = "projectList/categoryList", method = RequestMethod.GET)	
	public String categoryList(Model model, HttpServletRequest request) {
		String category=request.getParameter("category");
		List<ProjectDTO> categoryList=projectListService.getCategoryList(category);
		int cateCount=projectListService.getCateCount(category);
		model.addAttribute("getCateCount", cateCount);
		model.addAttribute("getCategoryList", categoryList);
		return "projectList/category";
	}
	
//	@RequestMapping(value = "projectList/stateList", method = RequestMethod.GET)	
//	public String stateList(@RequestParam(value="popular",required=false,defaultValue="")String popular
//			, @RequestParam(value="deadline",required=false,defaultValue="")String deadline
//			, Model model, HttpServletRequest request) {
//		int pjCount=projectListService.getPjCount(popular);
//		List<ProjectDTO> pjList1=projectListService.getPjList(popular);
//		List<ProjectDTO> pjList2=projectListService.getPjList(deadline);
//		
//		model.addAttribute("getPjCount", pjCount);
//		model.addAttribute("getPjList", pjList1);
//		model.addAttribute("getPjList", pjList2);
//		return "projectList/allProject";
//	}
	
	@RequestMapping(value = "projectList/popular", method = RequestMethod.GET)	
	public String popular(Model model, HttpServletRequest request) {
		List<ProjectDTO> popular=projectListService.getPopular();
		int popCount=projectListService.getPopCount();
		model.addAttribute("getPopCount", popCount);
		model.addAttribute("popular", popular);
		return "projectList/popular";
	}
	
	@RequestMapping(value = "projectList/newly", method = RequestMethod.GET)	
	public String newly(Model model) {
		List<ProjectDTO> newly=projectListService.getNewly();
		int newCount=projectListService.getNewCount();
		model.addAttribute("getNewCount", newCount);
		model.addAttribute("newly", newly);
		return "projectList/newly";
	}
	
	@RequestMapping(value = "projectList/deadline", method = RequestMethod.GET)	
	public String deadline(Model model) {
		List<ProjectDTO> deadline=projectListService.getDeadline();
		int deadCount=projectListService.getDeadCount();
		model.addAttribute("getDeadCount", deadCount);
		model.addAttribute("deadline", deadline);
		return "projectList/deadline";
	}
	
	@RequestMapping(value = "projectList/expect", method = RequestMethod.GET)	
	public String expect(Model model) {
		List<ProjectDTO> expect=projectListService.getExpect();
		int expCount=projectListService.getExpCount();
		model.addAttribute("getExpCount", expCount);
		model.addAttribute("expect", expect);
		return "projectList/expect";
	}
	
	
}
