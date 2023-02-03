<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="resources/harVest_css/header.css" rel="stylesheet">
</head>
<body>
	<header>
		<input type="checkbox" id="hamburgerBtn">
		<nav class="nav_menu">
			<div>
				<a href="#"><img src="resources/harVest_img/harvest_logo.png" width="100"></a>
				<button class="project_btn">프로젝트 올리기</button>
			</div>
			<div class="menu_link">
				<label class="hamburger_btn" for="hamburgerBtn">
					<span class="hamburger_bar1"></span>
					<span class="hamburger_bar2"></span>
					<span class="hamburger_bar3"></span>
				</label>
				<div class="menu_list">
					<div class="menu_name"><a href="#">홈</a></div>
					<div class="menu_name"><a href="#">인기</a></div>
					<div class="menu_name"><a href="#">신규</a></div>
					<div class="menu_name"><a href="#">마감임박</a></div>
					<div class="menu_name"><a href="#">공개예정</a></div>
				</div>
				<div class="serch_box">
					<input type="text" placeholder="검색어를 입력하세요">
					<button type="submit"><img src="resources/harVest_img/search_icon.png" width="20"></button>
				</div>
				<div class="mypage_box">
					<a href="#"><img src="resources/harVest_img/mypage.png" width="30"></a>
				</div>
			</div>
		</nav>
		<div class="category_cont">
		
		</div>
	</header>
</body>
</html>