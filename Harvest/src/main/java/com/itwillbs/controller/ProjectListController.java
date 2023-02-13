package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.domain.AlramDTO;
import com.itwillbs.service.AlramService;
import com.itwillbs.service.ProjectListService;

@Controller
public class ProjectListController {
	
	@Inject
	private ProjectListService projectListService;
	
	String percent1 = "";
	String percent2 = "";
	String percent3 = "";
	

	@RequestMapping(value = "projectList/main", method = RequestMethod.GET)	
	public String main(Model model, HttpServletRequest request) {
		String percent=request.getParameter("percent");
		List<ProjectDTO> allList=projectListService.getAllList();
		List<ProjectDTO> popular=projectListService.getPopular(percent);
		List<ProjectDTO> newly=projectListService.getNewly();
		List<ProjectDTO> deadline=projectListService.getDeadline();
		model.addAttribute("allList", allList);
		model.addAttribute("popular", popular);
		model.addAttribute("newly", newly);
		model.addAttribute("deadline", deadline);
		return "projectList/main";
	}
	
	@RequestMapping(value = "projectList/allList", method = RequestMethod.GET)	
	public String allList(Model model) {
		List<ProjectDTO> allList=projectListService.getAllList();
		int projCount=projectListService.getProjCount();
		model.addAttribute("getProjCount", projCount);
		model.addAttribute("allList", allList);
		return "projectList/allProject";
	}
	
	@RequestMapping(value = "projectList/categoryList", method = RequestMethod.GET)	
	public String categoryList(Model model, HttpServletRequest request) {
		String category=request.getParameter("category");
		List<ProjectDTO> categoryList=projectListService.getCategoryList(category);
		int cateCount=projectListService.getCateCount(category);
		model.addAttribute("getCateCount", cateCount);
		model.addAttribute("categoryList", categoryList);
		return "projectList/category";
	}
	
	@RequestMapping(value = "projectList/popular", method = RequestMethod.GET)	
	public String popular(Model model, HttpServletRequest request) {
		String percent=request.getParameter("percent");
		List<ProjectDTO> popular=projectListService.getPopular(percent);
		int popCount=projectListService.getPopCount(percent);
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
	
	@RequestMapping(value = "projectList/search", method = RequestMethod.GET)	
	public String searchList(Model model, HttpServletRequest request) {
		String search=request.getParameter("search");
		List<ProjectDTO> searchList=projectListService.getSearchList(search);
		int searchCount=projectListService.getSearchCount(search);
		model.addAttribute("getSearchCount", searchCount);
		model.addAttribute("searchList", searchList);
		System.out.println(search);
		return "projectList/search";
	}
}
