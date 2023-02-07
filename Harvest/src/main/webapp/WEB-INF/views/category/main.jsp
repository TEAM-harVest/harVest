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
    <link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/vendors/themify-icons/css/themify-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- Bootstrap + JoeBLog main styles -->
	<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/assets/css/joeblog.css">
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
        <section>
            <div class="feature-posts">
                <a href="single-post.html" class="feature-post-item">                       
                    <span>Featured Posts</span>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="${pageContext.request.contextPath }/resources/assets/imgs/img-1.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Incidunt Quaerat</div>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="${pageContext.request.contextPath }/resources/assets/imgs/img-2.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Culpa Ducimus</div>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="${pageContext.request.contextPath }/resources/assets/imgs/img-3.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Temporibus Simile</div>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="${pageContext.request.contextPath }/resources/assets/imgs/img-4.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Adipisicing</div>
                </a>
            </div>
        </section>
        <hr>
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
                <hr>
                <!-- 주목할 만한 프로젝트 4줄 정렬-->
                <div class="row">                       
                    <div class="col-md-3 col-sm-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <!-- 찜버튼 -->
								<div class="blog-media">
									<img src="${pageContext.request.contextPath }/resources/assets/imgs/blog-3.jpg" alt="" class="w-100">
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
                                <h5 class="card-title mb-2">테스트1</h5>    
                                <small class="small text-muted">January 20 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">34 Comments</a>
                                </small>
                                <p class="my-2">테스트내용1</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <!-- 찜버튼 -->
								<div class="blog-media">
									<img src="${pageContext.request.contextPath }/resources/assets/imgs/blog-3.jpg" alt="" class="w-100">
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
                                <h5 class="card-title mb-2">테스트2</h5> 
                                <small class="small text-muted">January 19 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">64 Comments</a>
                                </small>
                                <p class="my-2">테스트내용2</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <!-- 찜버튼 -->
								<div class="blog-media">
									<img src="${pageContext.request.contextPath }/resources/assets/imgs/blog-3.jpg" alt="" class="w-100">
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
                                <h5 class="card-title mb-2">테스트3</h5>   
                                <small class="small text-muted">January 17 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">93 Comments</a>
                                </small>
                                <p class="my-2">테스트내용3</p>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <!-- 찜버튼 -->
								<div class="blog-media">
									<img src="${pageContext.request.contextPath }/resources/assets/imgs/blog-3.jpg" alt="" class="w-100">
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
                                <h5 class="card-title mb-2">테스트4</h5>  
                                <small class="small text-muted">January 15 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">112 Comments</a>
                                </small>
                                <p class="my-2">테스트내용4</p>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 주목할 만한 프로젝트 4줄 정렬 끝-->
            </div>

            <!-- Sidebar -->
            <div class="page-sidebar text-left">
            	<!-- 인기 프로젝트 -->
                <h6 class="sidebar-title section-title mb-4">인기프로젝트</h6>
	                <div class="media text-left mb-4">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="${pageContext.request.contextPath }/resources/assets/imgs/blog-1.jpg" width="100px" alt="Generic placeholder image">
	                    <div class="media-body">
	                        <h6 class="mt-0">굿즈-키보드</h6>
	                        <p class="mb-2">더보기</p>
	                        <p class="text-danger small">999% 달성</p>
	                    </div>
	                </div>
	                <div class="media text-left mb-4">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="${pageContext.request.contextPath }/resources/assets/imgs/blog-2.jpg" width="100px" alt="Generic placeholder image">
	                    <div class="media-body">
	                        <h6 class="mt-0">한권으로 끝내는 인쇄</h6>
	                        <p class="mb-2">더보기</p>                            
	                        <p class="text-danger small">120% 달성</p>
	                    </div>
	                </div>
	                <div class="media text-left mb-4">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="${pageContext.request.contextPath }/resources/assets/imgs/blog-3.jpg" width="100px" alt="Generic placeholder image">
	                    <div class="media-body">
	                        <h6 class="mt-0">오디오북-세계역사</h6>
	                        <p class="mb-2">더보기</p>                        
	                        <p class="text-danger small">1024% 달성</p>
	                    </div>
	                </div>
	                <div class="text-center">
						<a href="#" class="btn btn-outline-dark btn-sm">전체보기</a>
					</div>  
                <!-- 인기 프로젝트 끝 -->  

            </div>
        </div>
    </div>

    <!-- Page Footer -->
    <jsp:include page="../inc/footer.jsp"></jsp:include>

	<!-- core  -->
    <script src="${pageContext.request.contextPath }/resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="${pageContext.request.contextPath }/resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- JoeBLog js -->
    <script src="${pageContext.request.contextPath }/resources/assets/js/joeblog.js"></script>

</body>
</html>