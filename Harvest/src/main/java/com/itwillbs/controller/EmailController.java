package com.itwillbs.controller;


import java.sql.Date;
import java.time.LocalDate;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.itwillbs.domain.ProjectDTO;


@Controller
public class EmailController {
	
	@Autowired
	private JavaMailSender mailSender;
	
	
	@RequestMapping(value = "/email", method = RequestMethod.GET)
    public String sendMail(ProjectDTO projectDTO, HttpSession session, HttpServletRequest request) throws Exception{
        
		// 占쎌궎占쎈뮎占쎄텊筌욑옙 �겫�뜄�쑎占쎌궎疫뀐옙 占쎈�믭옙�뮞占쎈뱜占쎌뒠
		LocalDate todaysDate = LocalDate.now();
		
		String subject = request.getParameter("title");
		String content = "�봽濡쒖젥�듃���뵫�씠 �떆�옉�릺�뿀�뒿�땲�떎. https://tumblbug.com/";
        String from = "ki6532@naver.com";
        String to = (String)session.getAttribute("id");
        
        try {
        	// 占쎌뵠筌롫뗄�뵬 癰귣�沅∽옙�뮉 �뤃�됎�
            MimeMessage mail = mailSender.createMimeMessage();
            MimeMessageHelper mailHelper = new MimeMessageHelper(mail,"UTF-8");
            
            mailHelper.setFrom(from);
            mailHelper.setTo(to);
            mailHelper.setSubject("["+subject+"] �봽濡쒖젥�듃 ���뵫�씠 �떆�옉�릺�뿀�뒿�땲�떎.");
            mailHelper.setText(content);
            
            mailSender.send(mail);
            
        	
            System.out.println("�꽦怨�");
            System.out.println(todaysDate);
            
        } catch(Exception e) {
            e.printStackTrace();
            System.out.println("�떎�뙣");
        }
        
        return "redirect:/projectList/expect";
    }
	



}
