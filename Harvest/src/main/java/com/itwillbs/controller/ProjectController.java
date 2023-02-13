package com.itwillbs.controller;

import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.domain.MemberDTO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.service.ProjectService;


@Controller
public class ProjectController {
	
	@Inject
	private ProjectService projectService;
	
	@RequestMapping(value = "/main/mainList", method = RequestMethod.GET)
	public String mainList(HttpServletRequest request, Model model) {
		List<ProjectDTO> projectList = projectService.getProjectList();
		model.addAttribute("projectList", projectList);
		return "main/list";
	}
	
	@RequestMapping(value = "/project/projectInfo", method = RequestMethod.GET)
	public String projectInfo(@RequestParam("idx")int idx, Model model) {
		ProjectDTO projectDTO = projectService.getProjectInfo(idx);
		
		int sumMoney = projectService.getSumMoney(idx);
		projectDTO.setSumMoney(sumMoney);
		
		int sumUser = projectService.getSumUser(idx);
		projectDTO.setSumUser(sumUser);
		
		model.addAttribute("projectDTO", projectDTO);
		return "project/projectPage";
	}
}
