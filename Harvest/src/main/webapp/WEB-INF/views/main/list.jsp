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
	<c:if test="${!empty sessionScope.iD}">${sessionScope.iD}님 로그인 하셨습니다.</c:if>
	
	
</body>
</html>