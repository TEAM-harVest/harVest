package com.itwillbs.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.service.MyAlarmService;

@Controller
public class MyAlarmController {

	@Inject
	private MyAlarmService myAlarmService;
	
	@RequestMapping(value = "/myPage/myAlarm", method = RequestMethod.GET)
	public String myAlarmList(HttpSession session, Model model) {
		
		String id = (String)session.getAttribute("id");
		List<Map<String, String>> myAlarmList = myAlarmService.getMyAlarmList(id);

		model.addAttribute("myAlarmList", myAlarmList);

		Map<String, String> codeMap =  new HashMap<String, String>();
		codeMap.put("ALM1", "null");
		codeMap.put("ALM2", "null");
		codeMap.put("ALM3", "null");

		
		codeMap.put("idx1", "0");
		codeMap.put("idx2", "0");
		codeMap.put("idx3", "0");
		
		String idx = "";
		
		for(Map<String, String> param : myAlarmList) {
			if(param.get("code").contains("ALM1")) {
				codeMap.put("ALM1", "checked"); 	
				idx = String.valueOf(param.get("idx"));
				codeMap.put("idx1", idx);
				continue;
			}
			if(param.get("code").contains("ALM2")) {
				codeMap.put("ALM2", "checked"); 	
				idx = String.valueOf(param.get("idx"));
				codeMap.put("idx2", idx);
				continue;
			} 
			if(param.get("code").contains("ALM3")) {
				codeMap.put("ALM3", "checked"); 	
				idx = String.valueOf(param.get("idx"));
				codeMap.put("idx3", idx);
				continue;
			} 
			
		}
		
		model.addAttribute("codeMap", codeMap);
		
		return "myPage/myAlarm";

	}
	
}
