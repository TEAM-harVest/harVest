<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="${pageContext.request.contextPath}/resources/css/admin.css"rel="stylesheet" type="text/css" >
<title>userView.jsp</title>
</head>
<body>
<jsp:include page="sidebar.jsp"></jsp:include>
   <div class="list_bar">
   		<h3 class="page-name">ȸ��������</h3>
   </div>
   <div class=value>
	   <h5>ȸ��������</h5>
	   <a href="${pageContext.request.contextPath}/admin/userList"><input id="ulist" type="button" value="���"></a>
   </div>>
   <table  class="rwd-table">
   		<tbody>
	        <tr class="color_menu">
	            <th>ȸ�����̵�</th>
	            <th>�̸�</th>
	            <th>������</th>
	            <th>ȸ������</th>
	        </tr>
			

	        <tr class="KOTRA-fontsize-80">
	        	<td>${userDTO.userId}</td>
	        	<td>${userDTO.userName}</td>
	        	<td>${userDTO.userDate}</td>
	        	<td>${userDTO.UNREGISTDETAIL}</td>
<!-- 	        	<td> -->
<%-- 		        	<input type="hidden" name="userId" value="${userDTO.userId}" > --%>
<!-- 		        	<input type="submit" value="�������º���"> -->
<!-- 		        </td> -->
	        </tr>
	        
	        <tr class="color_menu">
	            <th>�����</th>
	            <th>����ó</th>
	            <th>�̸���</th>
	            <th>����</th>
	        </tr>
	        
	        <tr class="KOTRA-fontsize-80">
	        	<td>${userDTO.userAddress}</td>
	        	<td>${userDTO.userPhone}</td>
	        	<td>${userDTO.userEmail}</td>
	        	<td>${userDTO.userLike}</td>
	        </tr>
        </tbody>
    </table>
    
   <hr>
   
   <h5>������ ������Ʈ ���</h5>
   <table  class="rwd-table">
   		<tbody>
	        <tr class="color_menu">
	            <th>������Ʈ��ȣ</th>
	            <th>������Ʈ����</th>
	            <th>�ݵ�������</th>
	            <th>�ݵ�������</th>
	            <th>�ݵ��������</th>
	        </tr>
			<c:forEach var="proDTO" items="${proList}">
		        <tr class="KOTRA-fontsize-80">
		        	<td><a href="${pageContext.request.contextPath}/admin/userDetail">${proDTO.IDX}</a></td>
		        	<td>${proDTO.TITLE}</td>
		        	<td>${proDTO.PROSTART}</td>
		        	<td>${proDTO.PROEND}</td>
		        	<td>${proDTO.FUNDSTATUS}</td>
		        </tr>
		    </c:forEach>
        </tbody>
    </table>
    <hr>
    <h5>�Ŀ��� ������Ʈ ���</h5>
    <table  class="rwd-table">
   		<tbody>
	        <tr class="color_menu">
	            <th>������Ʈ����</th>
	            <th>�Ŀ��ݾ�</th>
	            <th>�ݵ��������</th>
	            <th>��������</th>
	        </tr>
			<c:forEach var="payDTO" items="${payList}">
		        <tr class="KOTRA-fontsize-80">
		        	<td>${payDTO.PTITLE}</td>
		        	<td>${payDTO.AMOUNT}</td>
		        	<td>${payDTO.FUNDSTATUS}</td>
		        	<td>${payDTO.PSTATUS}</td>
		        </tr>
		    </c:forEach>
        </tbody>
    </table>
</body>
</html>