<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="Start your development with JoeBLog landing page.">
<meta name="author" content="Devcrud">
<title>harVest</title>
<!-- font icons -->
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

	<!-- page First Navigation -->
	<nav class="navbar navbar-light bg-white">
		<div class="container">
			<a class="navbar-brand" href="#"> <img
				src="${pageContext.request.contextPath }/resources/harVest_img/harvest_logo.png">
			</a>
			<div class="socials">
				<a href="javascript:void(0)">프로젝트 올리기</a> <a
					href="javascript:void(0)">로그인</a>
			</div>
		</div>
	</nav>
	<!-- End Of First Navigation -->

	<!-- Page Second Navigation -->
	<nav
		class="navbar custom-navbar navbar-expand-md navbar-light bg-white sticky-top">
		<div class="container">
			<button class="navbar-toggler ml-auto" type="button"
				data-toggle="collapse" data-target="#navbarSupportedContent"
				aria-controls="navbarSupportedContent" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav">
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">카테고리</a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="#">1</a>
							<a class="dropdown-item" href="#">2</a>
							<a class="dropdown-item" href="#">3</a>
						</div>
					</li>
					<li class="nav-item"><a class="nav-link" href="index.html">홈</a></li>
					<li class="nav-item"><a class="nav-link" href="no-sidebar.html">인기</a></li>
					<li class="nav-item"><a class="nav-link" href="single-post.html">신규</a></li>
					<li class="nav-item"><a class="nav-link" href="single-post.html">마감임박</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">공개예정</a></li>
				</ul>
				<div class="navbar-nav ml-auto">
					<div class="input-group">
						<input type="text" class="form-control form-control-sm" placeholder="Search" aria-label="Recipient's username" aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary btn-sm" type="button" id="button-addon2">
							<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
							<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z" />
							</svg>
						</button>
					</div>
				</div>
			</div>
		</div>
	</nav>
	<!-- End Of Page Second Navigation -->

	<!-- page-header -->
	<!--     <header class="page-header"></header> -->
	<!-- end of page header -->

	<!-- 로그인 폼 -->
	<div class="container text-center">
	    <section>
	       <div class="btn-group show">
				<div class="col-md-12 text-center">
                    <h2 class="mb-4">로그인</h2>
		            <form action="#" method="post" name="login">
		                <div class="form-group">
		                    <input type="text" name="id" class="form-control" id="id" aria-describedby="" placeholder="아이디">
		                </div>
		                <div class="form-group">
		                    <input type="password" name="pass" id="pass" class="form-control" aria-describedby="" placeholder="비밀번호">
		                </div>
		                
		                <div class="col-md-12 mb-3">
		                    <button type="submit" class="btn btn-block mybtn btn-primary tx-tfm">로그인</button>
		                </div>
		            </form>
		            <div class="col-md-12 mb-3">
	                    <input type="button" value="회원가입" class="btn btn-block mybtn btn-primary tx-tfm"
						onclick="location.href='#'">
	                </div>
	            </div> 
	       </div>
	    </section>
	</div>
	<!-- 로그인 폼 끝 -->

	<!-- Page Footer -->
	<footer class="page-footer">
		<div class="container">
			<div
				class="row align-items-center justify-content-between border-top">
				<div class="col-md-7 text-center text-md-left">
					<p class="mb-0 mt-4 small">회사명 텀블벅(주) 주소 서울 서초구 서초대로 398, 19층
						(서초동, BNK디지털) 사업자등록번호 123-45-67890 통신판매업 신고번호 대표번호 02-0000-0000
						Tumblbug Inc.</p>
				</div>
				<div class="col-md-5 text-center text-md-right">
					<div class="socials">
						<a href="javascript:void(0)"
							class="font-weight-bold text-muted mr-4"><i
							class="ti-facebook pr-1"></i></a> <a href="javascript:void(0)"
							class="font-weight-bold text-muted mr-4"><i
							class="ti-twitter pr-1"></i></a> <a href="javascript:void(0)"
							class="font-weight-bold text-muted mr-4"><i
							class="ti-pinterest-alt pr-1"></i></a> <a href="javascript:void(0)"
							class="font-weight-bold text-muted mr-4"><i
							class="ti-instagram pr-1"></i></a> <a href="javascript:void(0)"
							class="font-weight-bold text-muted mr-4"><i
							class="ti-youtube pr-1"></i></a>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End of Page Footer -->

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