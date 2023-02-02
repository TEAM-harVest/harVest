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
    <link rel="stylesheet" href="resources/assets/vendors/themify-icons/css/themify-icons.css">
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100;300;400;500;700;900&display=swap" rel="stylesheet">
    <!-- Bootstrap + JoeBLog main styles -->
	<link rel="stylesheet" href="resources/assets/css/joeblog.css">
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
            <a class="navbar-brand" href="#">
                <img src="resources/harVest_img/harvest_logo.png">
            </a>
            <div class="socials">
                <a href="javascript:void(0)">프로젝트 올리기</a>
                <a href="javascript:void(0)">로그인</a>
            </div>
        </div>
    </nav>
    <!-- End Of First Navigation -->

    <!-- Page Second Navigation -->
    <nav class="navbar custom-navbar navbar-expand-md navbar-light bg-white sticky-top">
        <div class="container">
            <button class="navbar-toggler ml-auto" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav">
                <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                       카테고리
                      </a>
                      <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                          <a class="dropdown-item" href="#">1</a>
                          <a class="dropdown-item" href="#">2</a>
                          <a class="dropdown-item" href="#">3</a>
                      </div>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="index.html">홈</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="no-sidebar.html">인기</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="single-post.html">신규</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="single-post.html">마감임박</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link disabled" href="#">공개예정</a>
                    </li>
                </ul>
                <div class="navbar-nav ml-auto">
                	<div class="input-group">
						<input type="text" class="form-control form-control-sm" placeholder="Search" aria-label="Recipient's username" aria-describedby="button-addon2">
						<button class="btn btn-outline-secondary btn-sm" type="button" id="button-addon2"><svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
						<path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
					</svg></button>
					</div>
					
                </div>
            </div>
        </div>
    </nav>
    <!-- End Of Page Second Navigation -->
    
    <!-- page-header -->
<!--     <header class="page-header"></header> -->
    <!-- end of page header -->

    <div class="container">
        <section>
            <div class="feature-posts">
                <a href="single-post.html" class="feature-post-item">                       
                    <span>Featured Posts</span>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="resources/assets/imgs/img-1.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Incidunt Quaerat</div>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="resources/assets/imgs/img-2.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Culpa Ducimus</div>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="resources/assets/imgs/img-3.jpg" class="w-100" alt="">
                    <div class="feature-post-caption">Temporibus Simile</div>
                </a>
                <a href="single-post.html" class="feature-post-item">
                    <img src="resources/assets/imgs/img-4.jpg" class="w-100" alt="">
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
                <div class="row">                       
                    <div class="col-lg-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="resources/assets/imgs/blog-2.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#Placeat</a>        
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h5 class="card-title mb-2">Voluptates Corporis Placeat</h5>    
                                <small class="small text-muted">January 20 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">34 Comments</a>
                                </small>
                                <p class="my-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos saepe dolores et nostrum porro odit reprehenderit animi, est ratione fugit aspernatur ipsum. Nostrum placeat hic saepe voluptatum dicta ipsum beatae.</p>
                            </div>
                            
                            <div class="card-footer p-0 text-center">
                                <a href="single-post.html" class="btn btn-outline-dark btn-sm">READ MORE</a>
                            </div>                  
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="resources/assets/imgs/blog-3.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#dolores</a>        
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h5 class="card-title mb-2">Dolorum Dolores Itaque</h5> 
                                <small class="small text-muted">January 19 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">64 Comments</a>
                                </small>
                                <p class="my-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos saepe dolores et nostrum porro odit reprehenderit animi, est ratione fugit aspernatur ipsum. Nostrum placeat hic saepe voluptatum dicta ipsum beatae.</p>
                            </div>
                            
                            <div class="card-footer p-0 text-center">
                                <a href="single-post.html" class="btn btn-outline-dark btn-sm">READ MORE</a>
                            </div>                  
                        </div>
                    </div>
                </div>
                <div class="row">                       
                    <div class="col-lg-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="resources/assets/imgs/blog-4.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#amet</a>       
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h5 class="card-title mb-2">Quisquam Dignissimos</h5>   
                                <small class="small text-muted">January 17 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">93 Comments</a>
                                </small>
                                <p class="my-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos saepe dolores et nostrum porro odit reprehenderit animi, est ratione fugit aspernatur ipsum. Nostrum placeat hic saepe voluptatum dicta ipsum beatae.</p>
                            </div>
                            
                            <div class="card-footer p-0 text-center">
                                <a href="single-post.html" class="btn btn-outline-dark btn-sm">READ MORE</a>
                            </div>                  
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="resources/assets/imgs/blog-5.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#lorem</a>      
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h5 class="card-title mb-2">Voluptas Optio Soluta</h5>  
                                <small class="small text-muted">January 15 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">112 Comments</a>
                                </small>
                                <p class="my-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos saepe dolores et nostrum porro odit reprehenderit animi, est ratione fugit aspernatur ipsum. Nostrum placeat hic saepe voluptatum dicta ipsum beatae.</p>
                            </div>
                            
                            <div class="card-footer p-0 text-center">
                                <a href="single-post.html" class="btn btn-outline-dark btn-sm">READ MORE</a>
                            </div>                  
                        </div>
                    </div>
                </div>
                <div class="row">                       
                    <div class="col-lg-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="resources/assets/imgs/blog-1.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#lipsum</a>     
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h5 class="card-title mb-2">Voluptates Corporis Placeat</h5>    
                                <small class="small text-muted">January 14 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">120 Comments</a>
                                </small>
                                <p class="my-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos saepe dolores et nostrum porro odit reprehenderit animi, est ratione fugit aspernatur ipsum. Nostrum placeat hic saepe voluptatum dicta ipsum beatae.</p>
                            </div>
                            
                            <div class="card-footer p-0 text-center">
                                <a href="single-post.html" class="btn btn-outline-dark btn-sm">READ MORE</a>
                            </div>                  
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="card text-center mb-5">
                            <div class="card-header p-0">                                   
                                <div class="blog-media">
                                    <img src="resources/assets/imgs/blog-7.jpg" alt="" class="w-100">
                                    <a href="#" class="badge badge-primary">#Elit</a>       
                                </div>  
                            </div>
                            <div class="card-body px-0">
                                <h5 class="card-title mb-2">Praesentium Asperiores</h5> 
                                <small class="small text-muted">January 10 2019 
                                    <span class="px-2">-</span>
                                    <a href="#" class="text-muted">143 Comments</a>
                                </small>
                                <p class="my-2">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eos saepe dolores et nostrum porro odit reprehenderit animi, est ratione fugit aspernatur ipsum. Nostrum placeat hic saepe voluptatum dicta ipsum beatae.</p>
                            </div>
                            
                            <div class="card-footer p-0 text-center">
                                <a href="single-post.html" class="btn btn-outline-dark btn-sm">READ MORE</a>
                            </div>                  
                        </div>
                    </div>
                </div>
                <button class="btn btn-primary btn-block my-4">Load More Posts</button>
            </div>

            <!-- Sidebar -->
            <div class="page-sidebar text-left">
            	<!-- 인기 프로젝트 -->
                <h6 class="sidebar-title section-title mb-4">인기프로젝트</h6>
	                <div class="media text-left mb-4">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="resources/assets/imgs/blog-1.jpg" width="100px" alt="Generic placeholder image">
	                    <div class="media-body">
	                        <h6 class="mt-0">굿즈-키보드</h6>
	                        <p class="mb-2">더보기</p>
	                        <p class="text-danger small">999% 달성</p>
	                    </div>
	                </div>
	                <div class="media text-left mb-4">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="resources/assets/imgs/blog-2.jpg" width="100px" alt="Generic placeholder image">
	                    <div class="media-body">
	                        <h6 class="mt-0">한권으로 끝내는 인쇄</h6>
	                        <p class="mb-2">더보기</p>                            
	                        <p class="text-danger small">120% 달성</p>
	                    </div>
	                </div>
	                <div class="media text-left mb-4">
	                    <a href="#" class="overlay-link"></a>
	                    <img class="mr-3" src="resources/assets/imgs/blog-3.jpg" width="100px" alt="Generic placeholder image">
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

                <h6 class="sidebar-title mt-5 mb-4">Newsletter</h6>
                <form action="">
                    <div class="subscribe-wrapper">
                        <input type="email" class="form-control" placeholder="Email Address">
                        <button type="submit" class="btn btn-primary"><i class="ti-location-arrow"></i></button>
                    </div>
                </form>

                <h6 class="sidebar-title mt-5 mb-4">Tags</h6>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#iusto</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#quibusdam</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#officia</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#animi</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#mollitia</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#quod</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#ipsa at</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#dolor</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#incidunt</a>
                <a href="javascript:void(0)" class="badge badge-primary m-1">#possimus</a>

                <h6 class="sidebar-title mt-5 mb-4">Instagram</h6>
                <div class="row px-3">
                    <div class="col-4 p-1 figure">
                        <a href="#" class="figure-img">
                            <img src="resources/assets/imgs/insta-1.jpg" alt="">
                        </a>
                    </div>
                    <div class="col-4 p-1 figure">
                        <a href="#" class="figure-img">
                            <img src="resources/assets/imgs/insta-2.jpg" alt="" class="w-100 m-0">
                        </a>
                    </div>  
                    <div class="col-4 p-1 figure">
                        <a href="#" class="figure-img">
                            <img src="resources/assets/imgs/insta-3.jpg" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-4 p-1 figure">
                        <a href="#" class="figure-img">
                            <img src="resources/assets/imgs/insta-4.jpg" alt="" class="w-100 m-0">
                        </a>
                    </div>  
                    <div class="col-4 p-1 figure">
                        <a href="#" class="figure-img">
                            <img src="resources/assets/imgs/insta-5.jpg" alt="" class="w-100">
                        </a>
                    </div>
                    <div class="col-4 p-1 figure">
                        <a href="#" class="figure-img">
                            <img src="resources/assets/imgs/insta-6.jpg" alt="" class="w-100 m-0">
                        </a>
                    </div>                          
                </div>  

                <figure class="figure mt-5">
                    <a href="single-post.html" class="figure-img">
                        <img src="resources/assets/imgs/img-4.jpg" alt="" class="w-100">
                        <figcaption class="figcaption">Laboriosam</figcaption>
                    </a>
                </figure>

                <h6 class="sidebar-title mt-5 mb-4">Popular Posts</h6>
                <div class="card mb-4">
                    <a href="single-post.html" class="overlay-link"></a>
                    <div class="card-header p-0">                                   
                        <div class="blog-media">
                            <img src="resources/assets/imgs/blog-6.jpg" alt="" class="w-100">
                            <a href="#" class="badge badge-primary">#Lorem</a>      
                        </div>  
                    </div>
                    <div class="card-body px-0">
                        <h5 class="card-title mb-2">Corporis Placeat</h5>   
                        <small class="small text-muted"><i class="ti-calendar pr-1"></i> January 24 2019
                        </small>
                        <p class="my-2">consectetur adipisicing Cum veritatis minus iustorpo cupiditate voluptas ...</p>
                    </div>      
                </div>
            </div>
        </div>
    </div>

    <!-- Page Footer -->
    <footer class="page-footer">
        <div class="container">
            <div class="row align-items-center justify-content-between border-top">
                <div class="col-md-7 text-center text-md-left">
                <p class="mb-0 mt-4 small">
                회사명 텀블벅(주) 주소 서울 서초구 서초대로 398, 19층 (서초동, BNK디지털)
                사업자등록번호 123-45-67890
                통신판매업 신고번호 대표번호 02-0000-0000 Tumblbug Inc.</p>
                </div>
                <div class="col-md-5 text-center text-md-right">
                    <div class="socials">
                        <a href="javascript:void(0)" class="font-weight-bold text-muted mr-4"><i class="ti-facebook pr-1"></i></a>
                        <a href="javascript:void(0)" class="font-weight-bold text-muted mr-4"><i class="ti-twitter pr-1"></i></a>
                        <a href="javascript:void(0)" class="font-weight-bold text-muted mr-4"><i class="ti-pinterest-alt pr-1"></i></a>
                        <a href="javascript:void(0)" class="font-weight-bold text-muted mr-4"><i class="ti-instagram pr-1"></i></a>
                        <a href="javascript:void(0)" class="font-weight-bold text-muted mr-4"><i class="ti-youtube pr-1"></i></a>
                    </div>
                </div>  
            </div>
        </div>      
    </footer>
    <!-- End of Page Footer -->

	<!-- core  -->
    <script src="resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- JoeBLog js -->
    <script src="resources/assets/js/joeblog.js"></script>

</body>
</html>