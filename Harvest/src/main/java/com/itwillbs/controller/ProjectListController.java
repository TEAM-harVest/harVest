package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.service.ProjectListService;

@Controller
public class ProjectListController {
	
	@Inject
	private ProjectListService projectListService;

	@RequestMapping(value = "projectList/main", method = RequestMethod.GET)	
	public String main(Model model) {
		List<ProjectDTO> allProjectList=projectListService.getAllProjectList();
		int projectCount=projectListService.getProjectCount();
		// projectCount 이름을 "getProjectCount" 담아서 가져가서 앞단에서 사용하겠다!
		model.addAttribute("getProjectCount", projectCount);
		model.addAttribute("allProjectList", allProjectList);
		return "projectList/main";
	}
	
	@RequestMapping(value = "projectList/allProjectList", method = RequestMethod.GET)	
	public String allProjectList(Model model) {
		List<ProjectDTO> allProjectList=projectListService.getAllProjectList();
		int projectCount=projectListService.getProjectCount();
		// projectCount 이름을 "getProjectCount" 담아서 가져가서 앞단에서 사용하겠다!
		model.addAttribute("getProjectCount", projectCount);
		model.addAttribute("allProjectList", allProjectList);
		return "projectList/allProject";
	}
	
	@RequestMapping(value = "projectList/categoryList", method = RequestMethod.GET)	
	public String categoryList(Model model, HttpServletRequest request) {
		String category=request.getParameter("category");
		List<ProjectDTO> categoryList=projectListService.getCategoryList(category);
		int categoryCount=projectListService.getCategoryCount(category);
		model.addAttribute("getCategoryCount", categoryCount);
		model.addAttribute("categoryList", categoryList);
		System.out.println(categoryList);
		return "projectList/category";
	}
	
	@RequestMapping(value = "projectList/popularList", method = RequestMethod.GET)	
	public String popular() {
		return "projectList/popular";
	}
	
	@RequestMapping(value = "projectList/newlyList", method = RequestMethod.GET)	
	public String newly() {
		return "projectList/newly";
	}
	
	@RequestMapping(value = "projectList/deadlineList", method = RequestMethod.GET)	
	public String deadline() {
		return "projectList/deadline";
	}
	
	@RequestMapping(value = "projectList/expectList", method = RequestMethod.GET)	
	public String expect() {
		return "projectList/expect";
	}
}
