package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;

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
	public String main() {
		return "projectList/main";
	}
	
	@RequestMapping(value = "projectList/AllProjectList", method = RequestMethod.GET)	
	public String allProjectList(Model model) {
		List<ProjectDTO> allProjectList=projectListService.getAllProjectList();
		int projectCount=projectListService.getProjectCount();
		// projectCount 이름을 "getProjectCount" 담아서 가져가서 앞단에서 사용하겠다!
		model.addAttribute("getProjectCount", projectCount);
		model.addAttribute("allProjectList", allProjectList);
		System.out.println(allProjectList);
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
