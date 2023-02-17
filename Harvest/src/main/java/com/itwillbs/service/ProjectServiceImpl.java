package com.itwillbs.service;

import java.util.List;
import java.util.Map;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;

import com.itwillbs.dao.ProjectDAO;
import com.itwillbs.domain.ProjectDTO;

@Service
public class ProjectServiceImpl implements ProjectService{
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Inject
	private ProjectDAO projectDAO;

	@Override
	public List<ProjectDTO> getProjectList() {
		return projectDAO.getProjectList();
	}

	@Override
	public ProjectDTO getProjectInfo(Map<String, String> param) {
		return projectDAO.getProjectInfo(param);
	}

	@Override
	public String setLike(Map<String, String> param) {
		String cnt = projectDAO.getLike(param);
		String result = "";
		if(cnt.equals("0")) {
			projectDAO.setLike(param);
			result = "heart_fill.svg";
		} else {
			projectDAO.delLike(param);
			result = "heart.svg";
		}
		return result;
	}
	
	@Override
	public String setAlram(Map<String, String> param) {
		String cnt = projectDAO.getAlram(param);
		String result = "";
		if(cnt.equals("0")) {
			projectDAO.setAlram(param);
			result = "alram_fill.svg";
			
//			String content = "프로젝트펀딩이 시작되었습니다. https://tumblbug.com/";
//	        String from = "ki6532@naver.com";
//	        MimeMessage mail = mailSender.createMimeMessage();
//	        MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
//	        
//			try {
//	            mailHelper.setFrom(from);
//	            mailHelper.setTo(param.get("USER_ID"));
//	            mailHelper.setSubject("["+param.get("TITLE")+"] 프로젝트 펀딩이 시작되었습니다.");
//	            mailHelper.setText(content);
//	            
//	            mailSender.send(mail);
//	            System.out.println("성공");
//	            
//	        } catch(Exception e) {
//	            e.printStackTrace();
//	            System.out.println("실패");
//	        }
		} else {
			projectDAO.delAlram(param);
			result = "alram.svg";
		}
		return result;
	}

	
}
