<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment.jsp</title>
<link href="${pageContext.request.contextPath}/resources/harVest_css/payment.css" rel="stylesheet">
</head>
<body>
<!-- header 들어갈 부분 -->
	<div id="paymentWrapper">
		<div>
			<div class="payment_top">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/harVest_img/harvest_logo.png" width="100"></a>
				<span>프로젝트 후원하기</span>
			</div>
			<div class="payment_container">
				<div class="payment_cont">
					<div class="proj_info">
						<div>
							<img src="${pageContext.request.contextPath}/resources/harVest_img/${projectDTO.img1}" width="100">
						</div>
						<div>
							<span>${projectDTO.category}</span>
							<h3>${projectDTO.title}</h3>
							<div>
								<strong>${projectDTO.sumMoney}</strong>
								<span>퍼센트</span>
								<span>며칠 남음</span>
							</div>
						</div>
					</div>
					<div>${sessionScope.iD}</div>
					<div>결제수단 넣는 곳</div>
				</div>
				<div class="payment_res">
					<div>최종결제 넣는 곳</div>
				</div>
			</div>
		</div>
	</div>
<!-- footer 들어갈 부분 -->
</body>
</html>