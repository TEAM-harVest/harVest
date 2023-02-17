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
	<div class="container mt-5 mb-4"><b style="color: red; white-space: nowrap;">${getCount }</b>개의 프로젝트가 있습니다.
	</div>
	
	
	<!-- !!! 카테고리 메뉴항목 배열로 4줄씩 가져오기 -->
	<div class="container">
		<div class="page-container">
			<div class="page-content">
				<!-- 주목할 만한 프로젝트 4줄 정렬-->
				<div class="row">
				<c:forEach var="projectDTO" items="${getExpectList }">
					<div class="col-md-3 col-sm-6">
						<div class="card text-left">
							<div class="card-header p-0">
								<!-- 찜버튼 -->
								<div class="blog-media">
									<img src="${pageContext.request.contextPath }/resources/assets/imgs/${projectDTO.img1 }" alt="" class="w-100">
								</div>
							</div>
							<div class="card-body px-0">
								<input type="hidden" id="pjIdx_${projectDTO.idx }" value="${projectDTO.idx }">
								<input type="hidden" id="title" value="${projectDTO.title }">
								<input type="hidden" id="start" value="${projectDTO.start }">
								<input type="hidden" value="${sessionScope.id }">
								
								<p class="my-2">${projectDTO.category } | ${projectDTO.creNm }</p>
								<h5 class="card-title mb-2">${projectDTO.title }</h5>
								<span class="text-muted">${projectDTO.start } 공개예정입니다.</span><br>
								<span class="text-danger">${projectDTO.count }명 알림신청 중</span>
								<p>
								<button class="btn btn-outline-secondary btn-sm mt-2" style="width:100%;">
									알림신청
									<c:if test="${empty sesssionScope.id}">
										<img width="16" height="16" id="alramBtn_${projectDTO.idx }" class="alram" src="${pageContext.request.contextPath}/resources/harVest_img/${projectDTO.alram}">
										</c:if>
								</button>
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
	<script src="${pageContext.request.contextPath }/resources/assets/vendors/jquery/jquery-3.4.1.js"></script>
	<script src="${pageContext.request.contextPath }/resources/assets/vendors/bootstrap/bootstrap.bundle.js"></script>

	<!-- JoeBLog js -->
	<script src="${pageContext.request.contextPath }/resources/assets/js/joeblog.js"></script>
	
	<script type="text/javascript">
	$(document).ready(function(){
		$(".alram").click(alram)
	})
	
	function alram() {
		let pjIdx = this.id.split('_')[1];
		var title = $('#title').val();
		if(${empty sessionScope.id}){
			alert('로그인 후 이용해주세요');
			return;
		}
		
		$.ajax({
			  url	: "${pageContext.request.contextPath}/project/alramPro", // 요청이 전송될 URL 주소
			  type	: "POST", // http 요청 방식 (default: ‘GET’)
			   data  : {'PJ_IDX' : pjIdx,
				       'USER_ID' : '${sessionScope.id}',
				       'TITLE' : title},
			  //processData : true, // 데이터를 컨텐트 타입에 맞게 변환 여부
			  success : function(data) {
				  alert('성공');
				  var src = $('#alramBtn_' + pjIdx).attr('src');
				  src = src.substring(0, src.lastIndexOf('/') + 1) + data;
				  $('#alramBtn_' + pjIdx).attr('src', src);
			  }
			})
	}
	
	</script>

</body>
</html>