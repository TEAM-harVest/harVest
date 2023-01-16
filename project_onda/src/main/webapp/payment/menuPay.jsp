<%@page import="java.text.DecimalFormat"%>
<%@page import="com.itwillbs.cart.db.CartDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>주문 결제 페이지</h1>
<!-- - 메뉴 페이지에서 결제 페이지로 넘어 오는 루트 -->
<%
String cus_id=(String)session.getAttribute("cus_id");

// cus_id가 null(세션값이 없으면) loginForm.jsp 이동
if(cus_id == null) {
	response.sendRedirect("./LoginForm.ca");
}


// requset로 메뉴페이지에서 가져온 정보들 변수에 저장

DecimalFormat df = new DecimalFormat("###,###");
int sum = 0;
%>

<form class = "payment" action="./PaymentPro.pa" method="post">
<table border="1">
<tr><td>no.</td><td>상품정보</td>
    <td>수량</td><td>금액</td></tr>
   
<tr><td><input type="text" name="crt_num" class="crt_num" value="1" readonly></td>
    <td>
    <input type="text" name="menu_num" id="menu_num_" class="menu_num" value="<%=menu_num %>" readonly> <!-- TODO 체크박스변경 -->
    <input type="text" name="menu_img" class="menu_img" value="이미지 사진 띄우기!!!!!!">
    <input type="text" name="menu_name" class="menu_name" value="<%=menu_name %>" readonly>
    </td>
    <td>
    <input type="text" id="pay_count" name="pay_count" class="pay_count" value="<%=pay_count %>" readonly>
    </td>
    <td><input type="text" id="pay_price" name="pay_price" class="pay_price" value="<%pay_price %>" readonly></td>
    <%
    sum += dto.getCrt_count() * dto.getCrt_price();
    }
    %>
</table>
<h3>픽업 시간</h3>
 <input type="radio" name="pick_up" value="1분내"> 1분내
 <input type="radio" name="pick_up" value="5분"> 5분
 <input type="radio" name="pick_up" value="10분"> 10분
 <input type="radio" name="pick_up" value="15분"> 15분
 <input type="radio" name="pick_up" value="20분"> 20분
 <hr>
 <h3>최종 결제 금액 : <b><%=df.format(sum) %></b> 원</h3>
</form>
<input type="button" value="돌아가기" onclick="location.href='./CartList.ca'">
<input type="button" value="결제하기" onclick="requestPay()">
<script type="text/javascript">
function requestPay() {
	var IMP = window.IMP;  
	IMP.init('imp84126554'); //iamport 대신 자신의 "가맹점 식별코드"를 사용
	  IMP.request_pay({
	    pg: 'html5_inicis',
	    pay_method: "card",
	    merchant_uid : 'merchant_'+new Date().getTime(),
	    name : '<%=menu_name %>' + ' 외 ' + <%=4-1 %> + '건' ,	// 상품 이름
	    amount : <%=sum %>,		// 가격
	    buyer_name : '<%=cus_id %>' ,
	  }, function (rsp) { // callback
	      if (rsp.success) {
	    	  var msg = "결제가 완료되었습니다.";
	    	  alert(msg);
	    	  $(".payment").submit();
	    	  
	      } else {
	    	  var msg = '결제에 실패하였습니다.\n';
	          msg += '에러내용 : ' + rsp.error_msg;
	          alert(msg);
	      }
	  });
	}

</script>
</body>
</html>