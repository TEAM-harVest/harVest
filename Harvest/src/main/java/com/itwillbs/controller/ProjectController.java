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
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.context.annotation.SessionScope;

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
	public String projectInfo(@RequestParam("idx")int idx, Model model, HttpSession session, String ID) {
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("SESSIONID", session.getAttribute("iD").toString());
		param.put("IDX", idx + "");
		param.put("ID", ID + "");
		ProjectDTO projectDTO = projectService.getProjectInfo(param);
		Integer sumMoney = projectService.getSumMoney(param);
		Integer sumUser = projectService.getSumUser(param);
		
//		System.out.println("인티저입니다." + sum);
		
//		Map<String, Integer> map = new HashMap<String, Integer>();
//		map.put("idx", idx);
		
		
//		int sumMoney = projectService.getSumMoney(idx);
//		projectDTO.setSumMoney(sumMoney);
		
//		int sumUser = projectService.getSumUser(idx);
//		projectDTO.setSumUser(sumUser);
		
		System.out.println("몇 명?" + sumUser);
		
		model.addAttribute("projectDTO", projectDTO);
		model.addAttribute("sumMoney", sumMoney);
		model.addAttribute("sumUser", sumUser);
		return "project/projectPage";
	}
}
