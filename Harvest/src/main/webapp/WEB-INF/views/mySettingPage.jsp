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
	 .carousel-inner img {width: 100%; height: 100%;}
	</style>
</head>
<body data-spy="scroll" data-target=".navbar" data-offset="40" id="home">

	<!-- page-header -->
  	<jsp:include page="../views/header.jsp"></jsp:include>
    
    <!-- 본문 내용 -->
    
	<!-- 프로필 시작 -->
	<div class="container text-left">
	    <section>
			<div class="media mb-5">
				<h2 class="mt-0">설정</h2>
            </div>
           	<!-- 프로필 메뉴영역 -->
               <ul class="nav nav-tabs">
			  <li class="nav-item">
			    <a class="nav-link active" aria-current="page" href="#">프로필</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">계정</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">결제수단</a>
			  </li>
			  <li class="nav-item">
			    <a class="nav-link" href="#">알림</a>
			  </li>
			</ul>
			<!-- 프로필 메뉴영역 끝 -->
	    </section>
	</div>
	
	<div class="container">
        <div class="page-container">
            <div class="page-content">
                <div class="card">
					<div class="container">
						<div class="media">
							<h5 class="components-section-title col-10 pl-0">프로필 사진</h5>
							<label class="btn-ch btn btn-outline-dark btn-sm rounded" for="ch1">수정</label> <!-- 버튼처럼 이용할 레이블-->
<%-- 							<img src="${pageContext.request.contextPath }/resources/assets/imgs/avatar-2.jpg" class="thumb-sm rounded-circle" alt=""> --%>
						</div>
						<input type="checkbox" class="chck" id="ch1"> <!-- 체크 기능만 있고 숨기는 체크박스 -->
						<div class="box">
							<form action="#" method="post" name="update">
								<input type="text" name="username" class="form-control" id="username" aria-describedby="">
								<button type="submit" class="btn btn-dark">저장</button>
				            </form>
						</div>
						<hr>
				      
						<div class="media">
							<h5 class="components-section-title col-10 pl-0">이름</h5>
							<label class="btn-ch btn btn-outline-dark btn-sm rounded" for="ch2">수정</label> <!-- 버튼처럼 이용할 레이블--> 
						</div>
						<input type="checkbox" class="chck" id="ch2"> <!-- 체크 기능만 있고 숨기는 체크박스 -->
						<div class="box">
							<form action="#" method="post" name="update">
								<input type="text" name="username" class="form-control" id="username" aria-describedby="">
								<button type="submit" class="btn btn-dark">저장</button>
				            </form>
						</div>
						<hr>
				      
				      	<div class="media">
							<h5 class="components-section-title col-10 pl-0">이메일</h5>
							<label class="btn-ch btn btn-outline-dark btn-sm rounded" for="ch3">수정</label> <!-- 버튼처럼 이용할 레이블-->
						</div>
						<input type="checkbox" class="chck" id="ch3"> <!-- 체크 기능만 있고 숨기는 체크박스 -->
						<div class="box">
							<form action="#" method="post" name="update">
								<input type="text" name="username" class="form-control" id="username" aria-describedby="">
								<button type="submit" class="btn btn-dark">저장</button>
				            </form>
						</div>
						<hr>
						
						<h5 class="components-section-title col-10 pl-0">비밀번호</h5>
						<hr>
						
						<h5 class="components-section-title col-10 pl-0">연락처</h5>
						<hr>
						
						<h5 class="components-section-title col-10 pl-0">결제수단</h5>
						<div>아직 없음</div>
						<hr>
						
						<h5 class="components-section-title col-10 pl-0">배송지</h5>
						<div>홍길동</div>
						<div>부산 어쩌구</div>
						<hr>
						
						<h5 class="components-section-title col-10 pl-0">알림</h5>
						<hr>
				   </div>
				</div>
           		<hr>
			</div>
	<!-- 프로필 끝 -->

            <!-- Sidebar -->
            <div class="page-sidebar text-left">
				<div class="card mb-4">
                    <a href="single-post.html" class="overlay-link"></a>
                    <div class="card-body px-0">
                        <h5 class="card-title mb-2">어떤 정보가 프로필에 공개되나요?</h5>   
                        <p class="my-2">프로필 사진과, 이름, 회원님과 관련된 프로젝트 등이 프로필 페이지에 공개 됩니다.</p>
                    </div>      
                </div>
            </div>
        </div>
    </div>

    <!-- Page Footer -->
    <jsp:include page="../views/footer.jsp"></jsp:include>

	<!-- core  -->
    <script src="resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
    <script src="resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

    <!-- JoeBLog js -->
    <script src="resources/assets/js/joeblog.js"></script>

</body>
</html>