<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%> 
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="Start your development with JoeBLog landing page.">
    <meta name="author" content="Devcrud">
    <title>harVest</title>
    <!-- font icons -->
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendors/themify-icons/css/themify-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- Bootstrap + JoeBLog main styles -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/joeblog.css">
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

	<!-- page-header -->
  	<jsp:include page="../inc/header.jsp"></jsp:include>
    
    <!-- 본문 내용 -->
	<div class="container mt-5 mb-4"><b style="color: red; white-space: nowrap;">${getExpCount }</b>개의 프로젝트가 있습니다.</div>
	
	
	<!-- !!! 카테고리 메뉴항목 배열로 4줄씩 가져오기 -->
	<div class="container">
		<div class="page-container">
			<div class="page-content">
				<!-- 주목할 만한 프로젝트 4줄 정렬-->
				<div class="row">
				<c:forEach var="dto" items="${expect }">
					<div class="col-md-3 col-sm-6">
						<div class="card text-left">
							<div class="card-header p-0">
								<!-- 찜버튼 -->
								<div class="blog-media">
									<img src="${pageContext.request.contextPath }/resources/assets/imgs/${dto.img1 }" alt="" class="w-100">
									<label class="like_btn badge">
                                   		<input type="checkbox" class="like_input" id="likeBtn">
                                   		<span class="heart">
                                   			<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16">
                                   				<path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z"/>
                                   			</svg>
                                   		</span>
                                   		<span class="heart_fill">
                                    		<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-suit-heart-fill" viewBox="0 0 16 16">
                                    			<path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/>
                                    		</svg>
                                   		</span>
                                   	</label>	
								</div>
							</div>
							<div class="card-body px-0">
								<p class="my-2">${dto.category } | ${dto.creNm }</p>
								<h5 class="card-title mb-2">${dto.title }</h5>
								<span class="text-muted">${dto.start } 공개예정입니다.</span><br>
								<span class="text-danger">N명 알림신청 중</span>
								<p>
								<form action="${pageContext.request.contextPath }/projectList/alram" method="post">
								<button class="btn btn-outline-secondary btn-sm mt-2" type="submit" id="button" style="width:100%;">
									알림신청
									<a href="#">
									<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" viewBox="0 0 16 16">
										<path fill-rule="evenodd" clip-rule="evenodd" d="M4.85203 0.9375C4.85203 0.833947 4.93598 0.75 5.03953 0.75H6.91453C7.01808 0.75 7.10203 0.833947 7.10203 0.9375V1.24582C9.46092 1.76082 11.227 3.86166 11.227 6.375V9.14062L11.5778 12.1659C11.5907 12.2773 11.5036 12.375 11.3915 12.375H0.562525C0.450415 12.375 0.36336 12.2773 0.376272 12.1659L0.727029 9.14062V6.375C0.727029 3.86166 2.49314 1.76082 4.85203 1.24582V0.9375ZM1.92703 9.20996L1.6992 11.175H10.2549L10.027 9.20996V6.375C10.027 4.13825 8.21378 2.325 5.97703 2.325C3.74028 2.325 1.92703 4.13825 1.92703 6.375V9.20996Z"></path><path d="M7.85203 13.125H4.47703C4.47703 13.7463 4.98071 14.4375 5.60203 14.4375H6.72703C7.34835 14.4375 7.85203 13.7463 7.85203 13.125Z"></path>
									</svg>
									</a>
								</button>
								</form>
								</p>
							</div>
						</div>
					</div>
				</c:forEach>
				<!-- 주목할 만한 프로젝트 4줄 정렬 끝-->
				</div>
			</div>
		</div>
	</div>

    <!-- Page Footer -->
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