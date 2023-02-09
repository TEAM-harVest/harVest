<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment.jsp</title>
<link href="${pageContext.request.contextPath }/resources/harVest_css/payment.css" rel="stylesheet">
<link href="${pageContext.request.contextPath }/resources/payment/payment.css" rel="stylesheet">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description"
	content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/vendors/themify-icons/css/themify-icons.css">
<link
	href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap"
	rel="stylesheet">
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet"
	href="${pageContext.request.contextPath }/resources/assets/css/joeblog.css">
<style>
/* Make the image fully responsive */
.carousel-inner img {
	width: 100%;
	height: 100%;
}
</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
<body>

	<!-- page-header -->
	<%--   	<jsp:include page="../inc/header.jsp"></jsp:include> --%>
	<!-- page First Navigation -->
	<nav class="navbar navbar-light bg-white">
		<div class="container">
			<a class="navbar-brand" href="#"> <img
				src="${pageContext.request.contextPath }/resources/harVest_img/harvest_logo.png">
			</a>
			<div class="socials">
				<a href="javascript:void(0)">프로젝트 올리기</a> <a
					href="${pageContext.request.contextPath }/resources/views/loginPage.jsp">로그인</a>
			</div>
		</div>
	</nav>
	<!-- End Of First Navigation -->


	<!-- Page Second Navigation -->
	<nav
		class="navbar custom-navbar navbar-expand-md navbar-light bg-white sticky-top shadow">
		<div class="container">
			<button class="navbar-toggler ml-auto" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a
						class="nav-link text-dark dropdown-toggle" href="#"
						id="navbarDropdown" role="button" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> 카테고리 </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">1</a> <a class="dropdown-item"
								href="#">2</a> <a class="dropdown-item" href="#">3</a>
						</div></li>
					<li class="nav-item"><a class="nav-link text-dark"
						href="${pageContext.request.contextPath }/resources/views/mainPage.jsp">홈</a>
					</li>
					<li class="nav-item"><a class="nav-link text-dark"
						href="${pageContext.request.contextPath }/resources/views/popularPage.jsp">인기</a>
					</li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">신규</a>
					</li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">마감임박</a>
					</li>
					<li class="nav-item"><a class="nav-link text-dark" href="#">공개예정</a>
					</li>
				</ul>
				<div class="navbar-nav ml-auto">
					<div class="input-group">
						<input type="text" class="form-control form-control-sm"
							placeholder="Search" aria-label="Recipient's username"
							aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary btn-sm" type="button"
							id="button-addon2">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16"
								fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
						<path
									d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
					</svg>
						</button>
					</div>

				</div>
			</div>
		</div>
	</nav>
	<!-- End Of Page Second Navigation -->
	<!-- header 들어갈 부분 -->
	<div id="wrapper">
		<div class="payment_container">
			<div class="payment_cont">
				<h1>프로젝트 후원하기</h1>
				<hr>
				<div class="RoundedWrapper__Wrapper-a7usag-0 qlVky">
				<div class="style__FlexRoundedWrapper-sc-1b41ica-6 dCjPpO">
<!-- 				 <h4>후원정보</h4><br> -->
				 <table>
				  <tbody>
				   <tr>
					<th>선물 구성</th>		
					 <td>
					 	"[나만알고싶은 퍼품핸드 싱글]"
					  <ul class="style__FlexRoundedWrapper-sc-1b41ica-6 dCjPpO">
					   <li></li>
					   
					  </ul>
					 </td>			   
				   </tr>
				   <tr>
				    <th>선물금액</th>
				     <td>9000원</td>
				   </tr>
				   <tr>
				    <th>예상전달일<th>
				     <td>2023년 3월 6일</td>
				   </tr>		  
				  </tbody>
				 </table>
				  <span>프로젝트 이름</span>
				</div>
			   </div>
				
				<div>
				 <h4>후원자 정보(세션값가져오기)</h4>
				  <hr>
					${dto.name}<br>
					${dto.address}<br>
					${dto.phone}<br><br>
					<p>*위 연락처와 이메일로 후원 관련 소식이 전달됩니다.<br>
					   *연락처 및 이메일 변경은 설정>계정 설정에서 가능합니다.</p>
				</div>
				 <div>
				  <h4>배송지</h4>
				  <input type="button" value="변경" id="address" onclick="window.open('${pageContext.request.contextPath }/payment/address','배송지','width=445, height=400, left=500, top=100');"> <!-- 오른쪽으로 옮기기..-->
				 </div>
				<div>
				 <h4>결제수단</h4><br>
				  <input type="radio" name="payMethod" id="card" checked="checked">카드 및 계좌
				  <input type="radio" name="payMethod" id="naverpay">네이버페이
				</div>
				<div class="style__AddButton-sc-1393oxn-2 fizgUv">
				 <span>+ 결제수단 추가</span>
<!-- 				 <input type="button" value="결제수단 추가" id="address"  -->
<%-- 				  onclick="window.open('${pageContext.request.contextPath }/payment/address','배송지','width=445, height=400, left=500, top=100');"> <!-- 오른쪽으로 옮기기..--> --%>
				 
				</div>
			</div>
			
			<div>최종 후원 금액/ 약관동의 넣는 곳</div>
			<!-- <div>최종결제 넣는 곳</div> -->
			<div class="payment_res">
				<div>
					<!-- jQuery -->
					<script type="text/javascript"
						src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
					<!-- iamport.payment.js -->
					<script type="text/javascript"
						src="https://cdn.iamport.kr/js/iamport.payment-1.1.8.js"></script>
					<P>아임포트 테스트</P>
					<script type="text/javascript">
							IMP.init("imp22281850"); 
							function requestPay() {
							  IMP.request_pay({
							    pg: "html5_inicis", 				//KG이니시스 코드값
							    pay_method: "card", 				//결제수단
							    merchant_uid : 'merchant_'+new Date().getTime(),
							    name: "펀딩제품",
							    amount: 100,    					//금액                     
							    buyer_email: "", 	//주문자 이메일
							    buyer_name: "김민영",					//주문자 이름
							    buyer_tel: "010-1234-5678", 		//주문자 전화번호
							    buyer_addr: "부산진구 동천로 어쩌구", 		//주문자 주소
						// 	    m_redirct_url : "", 				//모바일 결제시 사용할 url
							  }, function (rsp) { // callback
						    	if (rsp.success) {
						    	    // 결제 성공 시 로직
						            var msg = "결제가 완료되었습니다.";
						            alert(msg);
// 						        	$.ajax({
// 										url : "", // 예약 db처리 할 경로
// 										data : {
// 											res_num : rsp.merchant_uid,
// 											car_num : $('.carNum').val(),
// 											res_stime : $('.stime').val(),
// 											res_time : $('.time').val(),
// 											price : $('.price').val(),
// 											usePoint : usept
// 										}, // 예약에 들어갈 정보들
// 										success : function(data) {
// 											alert("예약이 완료되었습니다.");
// 											location.href = "./CarListUser.ci"; // 내 예약 목록
// 										}
// 									});
						            location.href = "${pageContext.request.contextPath }/payment/paySuccess}";
							  	} else {
								// 결제 실패 시 로직
								alert("결제 실패: "+ rsp.error_msg);
								//돌아가기 후원결제목록 페이지
								//location.href = "${pageContext.request.contextPath }/payment/donationPage}";
							    }
							  });
						 	}
						</script>
					<button id="pay" type="button" onclick="requestPay()">결제테스트</button>
				</div>
			</div>
		</div>
	</div>

	<jsp:include page="../inc/footer.jsp"></jsp:include>
	<!-- core  -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
	<script
		src="${pageContext.request.contextPath }/resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

	<!-- JoeBLog js -->
	<script
		src="${pageContext.request.contextPath }/resources/assets/js/joeblog.js"></script>


</body>
</html>