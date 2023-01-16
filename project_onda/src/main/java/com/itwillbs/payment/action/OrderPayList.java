package com.itwillbs.payment.action;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.catalina.tribes.util.Arrays;

import com.itwillbs.cart.db.CartDAO;
import com.itwillbs.cart.db.CartDTO;
import com.itwillbs.payment.db.PaymentDAO;
import com.itwillbs.payment.db.PaymentDTO;


public class OrderPayList implements Action {

	@Override
	public ActionForward execute(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("utf-8");


		HttpSession session = request.getSession();
		String cus_id = (String)session.getAttribute("cus_id");
		
//		String[] chk =request.getParameterValues("crt_num");		

//		System.out.println(Arrays.toString(chk));
		
		ActionForward forward = null;
		
		if(cus_id == null) {
			
			forward=new ActionForward();
			//TODO jsp파일로 이동? java파일로 이동? 확인
			forward.setPath("./OrderPayList.pm");
			forward.setRedirect(true);
			return forward;
			

		} else {
			CartDAO dao = new CartDAO();

			ArrayList<CartDTO> orderPayList = dao.getCartList(cus_id);
			
			
			// 데이터를 담아서 list.jsp 이동
			request.setAttribute("orderPayList", orderPayList);

			forward=new ActionForward();
			forward.setPath("./payment/orderPayList.jsp");
			forward.setRedirect(false);
			return forward;
		

		}
	}
}
