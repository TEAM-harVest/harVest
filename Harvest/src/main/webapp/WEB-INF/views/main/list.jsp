<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
</head>
<body>
	<!-- 값 넘기는거 보려고 만든거! 안 쓰는 페이지입니다... -->
	<c:forEach var="projectDTO" items="${projectList}">
		<a href="#">${projectDTO.category}</a><br>
		<a href="${pageContext.request.contextPath}/project/projectInfo?idx=${projectDTO.idx}">${projectDTO.title}</a><br>
	</c:forEach>
	
	<c:if test="${empty sessionScope.iD}">
		<form action="${pageContext.request.contextPath}/member/loginPro" method="POST"
			  style="position:fixed; top:40%; left:50%; transform: translate(-50%);">
			아이디 : <input type="text" name="ID"><br>
			비밀번호 : <input type="password" name="PASS"><br>
			<input type="submit" value="로그인">
		</form>
	</c:if>
	<c:if test="${!empty sessionScope.iD}">
	${sessionScope.iD}님 로그인 하셨습니다.
	<button onclick="location.href='${pageContext.request.contextPath}/member/logout'">로그아웃</button>
	</c:if>
	<a href="${pageContext.request.contextPath}/project/projectOpen?idx=1">공개예정</a>
	<a href="${pageContext.request.contextPath}/project/allProject">allProject</a>
	<a href="${pageContext.request.contextPath}/project/main">main</a>
	
	
</body>
</html>