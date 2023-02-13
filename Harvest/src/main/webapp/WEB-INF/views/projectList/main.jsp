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
	
	<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/kenwheeler/slick@1.8.1/slick/slick-theme.css"/>
    <link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"/>
				
	<style>
	 /* Make the image fully responsive */
	 .carousel-inner img {width: 100%; height: 100%;}
	</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

	<!-- page-header -->
  	<jsp:include page="../inc/header.jsp"></jsp:include>
    
    <!-- 본문 내용 -->
    <div class="container">
    <br>
        <div class="page-container">
            <div class="page-content">
                <div class="card">
                	<!-- 상단 광고슬라이드 -->
                    <div id="demo" class="carousel slide" data-ride="carousel">

						<!-- Indicators -->
						<ul class="carousel-indicators">
							<li data-target="#demo" data-slide-to="0" class="active"></li>
							<li data-target="#demo" data-slide-to="1"></li>
							<li data-target="#demo" data-slide-to="2"></li>
						</ul>
					
						<!-- The slideshow -->
						<div class="carousel-inner">
							<div class="carousel-item active">
							 	<img src="https://tumblbug-assets.s3.ap-northeast-1.amazonaws.com/heroes/main_pc.jpg?q=80&width=768&height=280&fit=crop" alt="Los Angeles">
							 </div>
							<div class="carousel-item">
						    	<img src="https://tumblbug-assets.s3.ap-northeast-1.amazonaws.com/heroes/early_bird_feb.jpg?q=80&width=768&height=280&fit=crop" alt="Chicago">
						  	</div>
							<div class="carousel-item">
								<img src="https://tumblbug-assets.s3.ap-northeast-1.amazonaws.com/heroes/thegrapefruit.jpg?q=80&width=768&height=280&fit=crop" alt="New York">
							</div>
						</div>
					
						<!-- Left and right controls -->
						<a class="carousel-control-prev" href="#demo" data-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</a>
						<a class="carousel-control-next" href="#demo" data-slide="next">
					    	<span class="carousel-control-next-icon"></span>
						</a>
					</div>
					<!-- 상단 광고슬라이드 끝 -->
                </div>
                
                <!-- 주목할 만한 프로젝트 4줄 정렬-->
                <hr>
                <h5>주목할 만한 프로젝트</h5>
                <div class="row">
                <c:forEach var="dto" items="${allList }" begin="1" end="8">
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
                            <div class="mb-2">
                            	<p class="my-2">${dto.category } | ${dto.creNm }</p>
                                <h6 class="m-0">${dto.title }</h6>
                                <span class="text-danger">${Math.round(dto.totalAmt / dto.targetAmt * 100)}%</span>
                                <small class="small text-danger"> 달성</small>
                            </div>
                        </div>
                    </div>
                </c:forEach>            
                </div>
                <!-- 주목할 만한 프로젝트 4줄 정렬 끝-->
            </div>

            <!-- Sidebar -->
            <div class="page-sidebar text-left">
            	<!-- 인기 프로젝트 -->
            	<h6 class="sidebar-title section-title">인기프로젝트</h6>
            	<c:forEach var="dto" items="${popular }" begin="1" end="8">
	                <div class="media text-left">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="${pageContext.request.contextPath }/resources/assets/imgs/${dto.img1 }" width="100px" alt="">
	                    <div class="media-body">
	                    	<p class="my-2">${dto.category } | ${dto.creNm }</p>
	                        <h6 class="m-0">${dto.title }</h6>
	                        <p class="small text-danger">${Math.round(dto.totalAmt / dto.targetAmt * 100)}% 달성</p>
	                    </div>
	                </div>
				</c:forEach>
				<div class="text-center">
					<a href="#" class="btn btn-outline-secondary btn-sm rounded">전체보기</a>
				</div>
				<!-- 인기 프로젝트 끝 -->
            </div>
        </div>
    </div>
    
    <!-- 신규 마감임박 공개예정 프로젝트 -->
    <div class="container">
    <hr>
    <h5>신규 프로젝트</h5>
    <div class="items">
    	<c:forEach var="dto" items="${allList }">
        	<div>
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
              	<p class="my-2">${dto.category } | ${dto.creNm }</p>
                <h6 class="m-0">${dto.title }</h6>
                <span class="text-danger">${Math.round(dto.totalAmt / dto.targetAmt * 100)}%</span>
                <small class="small text-danger"> 달성</small>
			</div>
		</c:forEach>
    </div>
	<hr>
	<h5>마감임박 프로젝트</h5>
	<div class="items">
    	<c:forEach var="dto" items="${allList }">
        	<div>
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
              	<p class="my-2">${dto.category } | ${dto.creNm }</p>
                <h6 class="m-0">${dto.title }</h6>
                <span class="text-danger">${Math.round(dto.totalAmt / dto.targetAmt * 100)}%</span>
                <small class="small text-danger"> 달성</small>
			</div>
		</c:forEach>
    </div>
	<hr>
	<h5>공개예정 프로젝트</h5>
	<div class="items">
    	<c:forEach var="dto" items="${allList }">
        	<div>
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
              	<p class="my-2">${dto.category } | ${dto.creNm }</p>
                <h6 class="m-0">${dto.title }</h6>
                <span class="text-danger">${Math.round(dto.totalAmt / dto.targetAmt * 100)}%</span>
                <small class="small text-danger"> 달성</small>
			</div>
		</c:forEach>
    </div>
	<hr>
    </div>

    <!-- Page Footer -->
    <jsp:include page="../inc/footer.jsp"></jsp:include>

	<!-- core  -->
    <script src="${pageContext.request.contextPath }/resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>
    <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>

    <!-- JoeBLog js -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/joeblog.js"></script>

</body>
</html>