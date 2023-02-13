<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!-- 시스템 시간 -->
<jsp:useBean id="now" class="java.util.Date" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productPage.jsp</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/harVest_js/jquery-3.6.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/harVest_js/projectPage.js"></script>
<link href="${pageContext.request.contextPath}/resources/harVest_css/projectPage.css" rel="stylesheet">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">

<script type="text/javascript">

$(document).ready(function(){
	$("#likeBtn").click(like)
})

function like() {
	$.ajax({
		  url	: "${pageContext.request.contextPath}/project/likePro", // 요청이 전송될 URL 주소
		  type	: "POST", // http 요청 방식 (default: ‘GET’)
		  data  : {'PJ_IDX' : $('#pjIdx').val(),
			  	   'USER_ID' : $('#'.val())}, // TODO session 아이디로 바까라 좋은말 할때...
		  //processData : true, // 데이터를 컨텐트 타입에 맞게 변환 여부
		  success : function(data) {
			  var src = $('#likeBtn').attr('src');
			  src = src.substring(0, src.lastIndexOf('/') + 1) + data;
			  $('#likeBtn').attr('src', src);
		  }
		})
}

</script>
</head>
<body>
	<!-- 상품 이미지 및 간략 정보 -->
	<input type="checkbox" id="fundingBtn" style="display:none;">
	<div id="productContent">
		<div class="prod_title">
			<button>${projectDTO.category}</button>
			<h1>${projectDTO.title}</h1>
			<input type="hidden" id="pjIdx" value="${projectDTO.idx }">
		</div>
		<div class="prod_cont">
			<div> <!-- 이미지 캐러셀 -->
				<div id="carouselExampleIndicators" class="carousel slide">
				  <div class="carousel-indicators">
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
				    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
				  </div>
				  <div class="carousel-inner">
				    <div class="carousel-item active">
				      <img src="https://tumblbug-pci.imgix.net/326f0b30dedd61b1b4ab402a546ed23ff763b676/a942a2f8dc6f8cb765a188a7817e4d132d87ed86/b5f809fa459add77e412896fb41972bf73dbb890/2f162593-feb4-4450-bafa-d11bbcf334f5.jpeg?ixlib=rb-1.1.0&w=1240&h=930&auto=format%2Ccompress&lossless=true&fit=crop&s=e761a6cc2af8edba46fefb72a395250b" class="d-block w-100" alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="https://tumblbug-pci.imgix.net/326f0b30dedd61b1b4ab402a546ed23ff763b676/a942a2f8dc6f8cb765a188a7817e4d132d87ed86/b5f809fa459add77e412896fb41972bf73dbb890/2f162593-feb4-4450-bafa-d11bbcf334f5.jpeg?ixlib=rb-1.1.0&w=1240&h=930&auto=format%2Ccompress&lossless=true&fit=crop&s=e761a6cc2af8edba46fefb72a395250b" class="d-block w-100" alt="...">
				    </div>
				    <div class="carousel-item">
				      <img src="https://tumblbug-pci.imgix.net/326f0b30dedd61b1b4ab402a546ed23ff763b676/a942a2f8dc6f8cb765a188a7817e4d132d87ed86/b5f809fa459add77e412896fb41972bf73dbb890/2f162593-feb4-4450-bafa-d11bbcf334f5.jpeg?ixlib=rb-1.1.0&w=1240&h=930&auto=format%2Ccompress&lossless=true&fit=crop&s=e761a6cc2af8edba46fefb72a395250b" class="d-block w-100" alt="...">
				    </div>
				  </div>
				  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
				    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Previous</span>
				  </button>
				  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
				    <span class="carousel-control-next-icon" aria-hidden="true"></span>
				    <span class="visually-hidden">Next</span>
				  </button>
				</div>
			</div>
			<div> <!-- 상품 정보 -->
				<div class="project_info">
					<div class="info_price">
						<span>모인 금액</span>
						<span style="font-size: 1em !important;">${Math.round(projectDTO.sumMoney / projectDTO.targetAmt * 100)}%</span>
						<h2>
							<fmt:formatNumber value="${projectDTO.sumMoney}" />원
						</h2>
					</div>
					<div class="info_time">
						<span>남은 시간</span>
						<h2>
<%-- 							<fmt:parseDate value="${projectDTO.start }" var="startDate" pattern="yyyy-MM-dd"/> --%>
<%-- 							<fmt:parseNumber value="${projectDTO.start.time / (1000*60*60*24)}" integerOnly="true" var="start"></fmt:parseNumber> --%>
<%-- 							<fmt:parseDate value="${projectDTO.end }" var="endDate" pattern="yyyy-MM-dd"/> --%>
<%-- 							<fmt:parseNumber value="${projectDTO.end.time / (1000*60*60*24)}" integerOnly="true" var="end"></fmt:parseNumber> --%>
<%-- 							${end - start}일 --%>
							<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowDtParse" scope="request"/>
							<fmt:parseNumber value="${projectDTO.end.time/ (1000*60*60*24)}" integerOnly="true" var="dbDtParse" scope="request"/>
							<c:if test="${(dbDtParse - nowDtParse) + 1 > 0}">
								<span class="days">${(dbDtParse - nowDtParse) + 1}일</span>
							</c:if>
							<c:if test="${(dbDtParse - nowDtParse) + 1 == 0}">
								<span class="deadline">오늘 마감</span>
							</c:if>
						</h2>
					</div>
					<div class="info_support">
						<span>후원자</span>
						<h2><fmt:formatNumber value="${projectDTO.sumUser}" />명</h2>
					</div>
				</div>
				<div class="project_summary">
					<div>
						<div>목표 금액</div>
						<div><fmt:formatNumber value="${projectDTO.targetAmt}"/>원</div>
						<div>${Math.round(projectDTO.sumMoney / projectDTO.targetAmt * 100)}%</div>
					</div>
					<div>
						<div>펀딩 기간</div>
						<div>${projectDTO.start}~${projectDTO.end}</div>
						<div>
							<c:if test="${(dbDtParse - nowDtParse) + 1 > 0}">
							<span class="deadline_box">${(dbDtParse - nowDtParse) + 1}일 남음</span>
							</c:if>
							<c:if test="${(dbDtParse - nowDtParse) + 1 == 0}">
							<span class="deadline_box">${(dbDtParse - nowDtParse) + 1}일 남음</span>
							</c:if>
						</div>
					</div>
					<div>
						<div>결제 일시</div>
						<div>목표금액 달성시 2023.03.06에 결제 진행</div>
						<div>목표 달성</div>
					</div>
				</div>
				<div class="project_btn">
<%-- 					<form action="${pageContext.request.contextPath}/project/likePro" method="post"> --%>
<!-- 					<label> -->
<!-- 						<input type="checkbox" id="likeBtn" name="likeBtn" style="display:none;"> -->
<!-- 						<span class="heart"> -->
<!-- 							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-suit-heart" viewBox="0 0 16 16"> -->
<!-- 								<path d="m8 6.236-.894-1.789c-.222-.443-.607-1.08-1.152-1.595C5.418 2.345 4.776 2 4 2 2.324 2 1 3.326 1 4.92c0 1.211.554 2.066 1.868 3.37.337.334.721.695 1.146 1.093C5.122 10.423 6.5 11.717 8 13.447c1.5-1.73 2.878-3.024 3.986-4.064.425-.398.81-.76 1.146-1.093C14.446 6.986 15 6.131 15 4.92 15 3.326 13.676 2 12 2c-.777 0-1.418.345-1.954.852-.545.515-.93 1.152-1.152 1.595L8 6.236zm.392 8.292a.513.513 0 0 1-.784 0c-1.601-1.902-3.05-3.262-4.243-4.381C1.3 8.208 0 6.989 0 4.92 0 2.755 1.79 1 4 1c1.6 0 2.719 1.05 3.404 2.008.26.365.458.716.596.992a7.55 7.55 0 0 1 .596-.992C9.281 2.049 10.4 1 12 1c2.21 0 4 1.755 4 3.92 0 2.069-1.3 3.288-3.365 5.227-1.193 1.12-2.642 2.48-4.243 4.38z"/> -->
<!-- 							</svg> -->
<!-- 						</span> -->
<!-- 						<span class="heart_fill"> -->
<!-- 							<svg xmlns="http://www.w3.org/2000/svg" width="30" height="30" fill="currentColor" class="bi bi-suit-heart-fill" viewBox="0 0 16 16"> -->
<!-- 								<path d="M4 1c2.21 0 4 1.755 4 3.92C8 2.755 9.79 1 12 1s4 1.755 4 3.92c0 3.263-3.234 4.414-7.608 9.608a.513.513 0 0 1-.784 0C3.234 9.334 0 8.183 0 4.92 0 2.755 1.79 1 4 1z"/> -->
<!-- 							</svg> -->
<!-- 						</span> -->
<!-- 					</label> -->
<!-- 					</form> -->
					<img id="likeBtn" src="${pageContext.request.contextPath}/resources/harVest_img/heart.svg">
					<button>공유</button>
					<label for="fundingBtn" class="funding_btn">후원하기</label>
				</div>
			</div>
		</div>
	</div>
	<!-- 탭 메뉴 -->
	<div id="productInfoMore">
		<ul class="nav nav-tabs" id="myTab" role="tablist">
			<li class="nav-item" role="presentation">
				<button class="nav-link active" id="home-tab" data-bs-toggle="tab" data-bs-target="#home-tab-pane" type="button" role="tab" aria-controls="home-tab-pane" aria-selected="true">프로젝트 계획</button>
			</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="profile-tab" data-bs-toggle="tab" data-bs-target="#profile-tab-pane" type="button" role="tab" aria-controls="profile-tab-pane" aria-selected="false">진행사항</button>
		  	</li>
			<li class="nav-item" role="presentation">
				<button class="nav-link" id="contact-tab" data-bs-toggle="tab" data-bs-target="#contact-tab-pane" type="button" role="tab" aria-controls="contact-tab-pane" aria-selected="false">커뮤니티</button>
			</li>
		</ul>
		<div class="fundingInfo">
			<div class="tab-content" id="myTabContent">
				<div class="tab-pane fade show active" id="home-tab-pane" role="tabpanel" aria-labelledby="home-tab" tabindex="0">
				${projectDTO.intro}<br>
				${projectDTO.budget}원<br>
				${projectDTO.start}~${projectDTO.end}
				</div>
				<div class="tab-pane fade" id="profile-tab-pane" role="tabpanel" aria-labelledby="profile-tab" tabindex="0">
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.
				</div>
				<div class="tab-pane fade" id="contact-tab-pane" role="tabpanel" aria-labelledby="contact-tab" tabindex="0">
					<!-- 커뮤니티 탭/탭 내용 -->
					<div class="container mt-5">
				      <ul class="list">
				        <li class="tab_button tab_active">응원글</li>
				        <li class="tab_button">문의</li>
				        <li class="tab_button">후기</li>
				      </ul>
				      <div class="tab_content tab_show">
				        <p>응원글입니다.</p>
				      </div>
				      <div class="tab_content">
				        <p>문의글입니다.</p>
				      </div>
				      <div class="tab_content">
				        <p>후기입니다.</p>
				      </div>
				    </div>
				</div>
			</div>
			<div class="project_info_box">
				<label for="fundingBtn" class="info_x">
					<svg xmlns="http://www.w3.org/2000/svg" width="18" height="18" fill="currentColor" class="bi bi-x-circle" viewBox="0 0 16 16">
						<path d="M8 15A7 7 0 1 1 8 1a7 7 0 0 1 0 14zm0 1A8 8 0 1 0 8 0a8 8 0 0 0 0 16z"/>
						<path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708z"/>
					</svg>
				</label>
				<div class="creator_box">크리에이터 박스</div>
				<div class="prod_option">상품 옵션</div>
			</div>
			<label for="fundingBtn" class="info_bg"></label>
		</div>
	</div>
	<!-- 상세 페이지 및 창작자 소개, 금액 -->
	<div class=""></div>
	
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
</body>
</html>