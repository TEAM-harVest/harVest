<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후원성공 페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendors/themify-icons/css/themify-icons.css">
<!-- <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet"> -->
<!-- paySuccess css -->
<!-- Bootstrap + JoeBLog main styles -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/joeblog.css">
<link href="${pageContext.request.contextPath }/resources/harVest_css/paySuccess.css" rel="stylesheet">

<!-- core  -->
<script src="${pageContext.request.contextPath }/resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
<script src="${pageContext.request.contextPath }/resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

<!-- JoeBLog js -->
<script src="${pageContext.request.contextPath }/resources/assets/js/joeblog.js"></script>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">
<body>

	<!-- page-header -->
	  	<jsp:include page="../inc/header.jsp"></jsp:include>
	<!-- page First Navigation -->

	<!-- header 들어갈 부분 -->
</head>
<body>
<!-- 후원성공 페이지 시작 -->
<div class="funding_success">
	<p class="point">축하합니다 !</p><!-- readcount처럼 숫자누적....-->
	<p class="ment1">공식후원자가 되셨습니다.</p> 
	<p>후원 내역 변경은 <a href="#">마이페이지</a>에서 하실 수 있습니다.</p> <!-- href -->
<input type="button" value="후원목록보기" onclick="${pageContext.request.contextPath}/user/#"> 
<!-- 후원성공 페이지 끝  -->
</div>
<!-- 후원완료페이지 몇번째 후원자, 목록, 취소버튼 만들기 -->
<jsp:include page="../inc/footer.jsp"></jsp:include>
</body>
</html>