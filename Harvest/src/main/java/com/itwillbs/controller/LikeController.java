package com.itwillbs.controller;

import java.util.HashMap;
import java.util.Map;

import javax.inject.Inject;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.itwillbs.service.ProjectService;

@Controller
public class LikeController {

	@Inject
	private ProjectService projectService;

	@ResponseBody
	@RequestMapping(value = "/project/likePro" , method = RequestMethod. POST)
	public String editCustomer(@RequestParam(value = "PJ_IDX") String pjIdx,
							   @RequestParam(value = "USER_ID") String userId) {

		Map<String, String> param = new HashMap<String, String>();
		param.put("PJ_IDX", pjIdx);
		param.put("USER_ID", userId);
		String result = projectService.setLike(param);
		System.out.println("¾ÆÀÌµð: " + userId);
		return result;
	}
}