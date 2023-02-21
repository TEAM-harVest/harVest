package com.itwillbs.email;


import java.util.List;

import javax.inject.Inject;
import javax.mail.internet.MimeMessage;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import com.itwillbs.dao.ProjectInfoDAO;
import com.itwillbs.domain.ProjectDTO;
import com.itwillbs.service.ProjectInfoService;

@Component
public class Scheduler {
	
//	@Transactional
//	@Scheduled(cron = "0 0/1 * * * ?")
//	public void test() {
//		System.out.println("실행");
//	}
	
	@Autowired
	private JavaMailSender mailSender;
	
	@Inject
	private ProjectInfoDAO projectDAO;
	
	@Inject
	private ProjectInfoService projectService;
	
	// 1분마다 실행되게 테스트
	@Transactional
	@Scheduled(cron = "0 0 0 * * *")
//	@Scheduled(cron = "0 0/1 * * * ?")
	public void sendMail() throws Exception {
		
		ProjectDTO projectDTO = new ProjectDTO();
		List<ProjectDTO> alram2List=projectService.getAlram2List(projectDTO);
		System.out.println(alram2List.toString());
//		System.out.println(projectDTO.getId().toString());
		String subject = projectDTO.getTitle().toString();
		String content = "https://tumblbug.com/";
        String from = "ki6532@naver.com";
        String to = projectDTO.getId().toString();
        
        for(int i = 0; i < alram2List.size(); i++) {
        
        try {
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
            
            mailHelper.setFrom(from);
            mailHelper.setTo(to);
            mailHelper.setSubject("["+subject+"] send");
            mailHelper.setText(content);
            
            mailSender.send(mail);
            System.out.println("success");
            
        } catch(Exception e) {
            e.printStackTrace();
            System.out.println("fail");
            break;
        }
        
        }
	}
	
	
	
	// 매일 자정 0시에 실행
	// ALM2 코드인 알람 오늘날짜보다
	@Transactional
	@Scheduled(cron = "0 0 0 * * *")
//	@Scheduled(cron = "0 0/1 * * * ?")
	public int deleteAlram2() {
		System.out.println("ALRAM DELETE");
		return projectDAO.deleteAlram2();
	}
}
