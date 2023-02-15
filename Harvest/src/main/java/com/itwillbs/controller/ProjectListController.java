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
	public String main(Model model, HttpServletRequest request) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("GB", "POP");
		List<ProjectDTO> popList=projectListService.getProjectList(param);
		model.addAttribute("getPopList", popList);
		
		param.put("GB", "NEW");
		List<ProjectDTO> newList=projectListService.getProjectList(param);
		model.addAttribute("getNewList", newList);
		
		param.put("GB", "DEAD");
		List<ProjectDTO> deadList=projectListService.getProjectList(param);
		model.addAttribute("getDeadList", deadList);
		
		param.put("GB", "EXP");
		List<ProjectDTO> expList=projectListService.getProjectList(param);
		model.addAttribute("getExpList", expList);
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
	
	@RequestMapping(value = "projectList/categoryList", method = RequestMethod.GET)	
	public String categoryList(Model model, HttpServletRequest request) {
		String category=request.getParameter("category");
		List<ProjectDTO> categoryList=projectListService.getCategoryList(category);
		int cateCount=projectListService.getCateCount(category);
		model.addAttribute("getCateCount", cateCount);
		model.addAttribute("getCategoryList", categoryList);
		return "projectList/category";
	}
	
	@RequestMapping(value = "projectList/popular", method = RequestMethod.GET)	
	public String popular(Model model, HttpServletRequest request) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("GB", "POP");
		List<ProjectDTO> popList=projectListService.getProjectList(param);
		model.addAttribute("getPopList", popList);
		
		int count = projectListService.getCount(param);
		model.addAttribute("getCount", count);
		
		return "projectList/popular";
	}
	
	@RequestMapping(value = "projectList/newly", method = RequestMethod.GET)	
	public String newly(Model model) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("GB", "NEW");
		List<ProjectDTO> newList=projectListService.getProjectList(param);
		model.addAttribute("getNewList", newList);
		
		int count = projectListService.getCount(param);
		model.addAttribute("getCount", count);
		
		return "projectList/newly";
	}
	
	@RequestMapping(value = "projectList/deadline", method = RequestMethod.GET)	
	public String deadline(Model model) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("GB", "DEAD");
		List<ProjectDTO> deadList=projectListService.getProjectList(param);
		model.addAttribute("getDeadList", deadList);
		
		int count = projectListService.getCount(param);
		model.addAttribute("getCount", count);
		
		return "projectList/deadline";
	}
	
	@RequestMapping(value = "projectList/expect", method = RequestMethod.GET)	
	public String expect(Model model) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("GB", "EXP");
		List<ProjectDTO> expList=projectListService.getProjectList(param);
		model.addAttribute("getExpList", expList);
		
		int count = projectListService.getCount(param);
		model.addAttribute("getCount", count);
		
		return "projectList/expect";
	}
	
	@RequestMapping(value = "projectList/search", method = RequestMethod.GET)	
	public String search(@RequestParam("search")String search, Model model
			, HttpServletRequest request) {
		Map<String, String> param = new HashMap<String, String>();
		param.put("search", search + "");
		List<ProjectDTO> searchList=projectListService.getProjectList(param);
		model.addAttribute("getProjectList", searchList);
		
		int count = projectListService.getCount(param);
		model.addAttribute("getCount", count);
		
		return "projectList/allProject";
	}
	
	
}
