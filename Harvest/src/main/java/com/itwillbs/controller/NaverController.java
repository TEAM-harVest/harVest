package com.itwillbs.controller;

import javax.servlet.http.HttpSession;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.scribejava.core.model.OAuth2AccessToken;
import com.itwillbs.naver.NaverLoginBO;


@Controller
public class NaverController {

	/*NaverLoginBO*/
	private NaverLoginBO naverLoginBO;
	private String apiResult = null;

	@Autowired
	private void setNaverLoginBO(NaverLoginBO naverLoginBO) {
		this.naverLoginBO = naverLoginBO;
	}


	// �α���������
	// �α��� ù ȭ�� ��û �޼ҵ�
	@RequestMapping(value = "/user/login", method = {RequestMethod.GET, RequestMethod.POST })
	public String login(Model model, HttpSession session) {
		
		/*�׾Ʒ� ���� URL�� �����ϱ� ���Ͽ� naverLoginBO Ŭ������ getAuthorizationUrl �޼ҵ� ȣ��*/
		String naverAuthUrl = naverLoginBO.getAuthorizationUrl(session);

		/*������û�� Ȯ��*/
		System.out.println("���̹�: " + naverAuthUrl);
		
		/*��ü ���ε�*/
		model.addAttribute("urlNaver", naverAuthUrl);


		/*������ ���� URL�� View�� ����*/
		return "user/loginForm";
	}


	// ���̹� �α��� ���� �� callback ȣ�� �޼���
	@RequestMapping(value = "/callbackNaver.do", method = { RequestMethod.GET, RequestMethod.POST })
	public String callbackNaver(Model model, @RequestParam String code, @RequestParam String state, HttpSession session) throws Exception {
		System.out.println("�α��� ���� callbackNaver");
		OAuth2AccessToken oauthToken;
		oauthToken = naverLoginBO.getAccessToken(session, code, state);
		
		// �α��� ����� ������ �о�´�.
		apiResult = naverLoginBO.getUserProfile(oauthToken);

		JSONParser jsonParser = new JSONParser();
		JSONObject jsonObj;

		jsonObj = (JSONObject)jsonParser.parse(apiResult);
		JSONObject response_obj = (JSONObject)jsonObj.get("response");

		// ������ ��ȸ
		String email = (String)response_obj.get("email");
		String name = (String)response_obj.get("name");

		// ���ǿ� ����� ���� ���
		// session.setAttribute("islogin_r", "Y");
		session.setAttribute("signIn", apiResult);
		session.setAttribute("email", email);
		session.setAttribute("name", name);


		/*���̹� �α��� ���� ������ View ȣ��*/
		return "redirect:/projectList/main";
	}

//		// �Ҽ� �α��� ���� ������
//		@RequestMapping("/loginSuccess.do")
//		public String loginSuccess() {
//			return "loginSuccess";
//		}

}


