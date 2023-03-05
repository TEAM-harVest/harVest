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
<title>payment.jsp</title>
<link href="${pageContext.request.contextPath}/resources/harVest_css/payment.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/harVest_js/jquery-3.6.3.js"></script>
<script type="text/javascript">
$(document).ready(function() {
	// 금액 변경창 열기
	$(".pay_change").click(modalOpen)
	// 금액 변경창 닫기
	$(".modal_x").click(modalClose)
	// 금액 변경하기
	$("#payBtn").click(changePay)
	$("#userDona").keydown(keyDown)
	// 유의사항 전부 체크
	$("#allBtn").click(allChecked)
	// 유의사항 체크 해제
	$("input[name=pay_checked]").click(checkNone)
	$(".agree_cont").click(agreeShow)
	$(".notice_cont").click(noticeShow)
})
function agreeShow() {
	if($(".agree_article").css("display") == "none") {
		$(".agree_article").show()
		$(".agree_cont").css({"background":"#fdf4f3", "color":"#e4527f", "border":"1px solid #e4527f"})
	} else {
		$(".agree_article").hide()
		$(".agree_cont").css({"background":"white", "color":"#e2ddd6", "border":"1px solid #e2ddd6"})
	}
}
function noticeShow() {
	if($(".notice_article").css("display") == "none") {
		$(".notice_article").show()
		$(".notice_cont").css({"background":"#fdf4f3", "color":"#e4527f", "border":"1px solid #e4527f"})
	} else {
		$(".notice_article").hide()
		$(".notice_cont").css({"background":"white", "color":"#e2ddd6", "border":"1px solid #e2ddd6"})
	}
}

function allChecked() {
	if($("#allBtn").is(":checked")) $("input[name=pay_checked]").prop("checked", true);
	else $("input[name=pay_checked]").prop("checked", false);
}
function checkNone() {
	var all = $("input[name=pay_checked]").length;
	var check = $("input[name=pay_checked]:checked").length;
	if(all != check) $("#allBtn").prop("checked", false);
	else $("#allBtn").prop("checked", true);
}
function modalOpen() {
	$(".modal_bg").show();
}
function modalClose() {
	$(".modal_bg").hide();
}
// 후원금액 변경시 조건
function changePay() {
	if (!$('#userDona').val()){ // 후원금액 미입력 시 
		Swal.fire({
			title: '후원금액을 입력해주세요.',
			icon: 'warning',
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '닫기'
		}).then((result) => {
			if(result.value)	return false;
		})
	} else if($('#userDona').val() <= ${projectDTO.sumMoney}) { // 최소 후원금 이하일 경우 
		Swal.fire({
			title: '최소금액보다 큰 금액을 입력해주세요.',
			icon: 'warning',
			confirmButtonColor: '#3085d6',
			cancelButtonColor: '#d33',
			confirmButtonText: '닫기'
		}).then((result) => {
			if(result.value) return false;
		})
	} else {
		$('#payForm').submit();
	}
}
function keyDown(e) {
    if(e.key == 'Enter'||e.keyCode == 13){
    	changePay();
    	return false;
    }
}
</script>
</head>
<body>
<!-- header 들어갈 부분 -->
	<div id="paymentWrapper">
		<div>
			<div class="payment_top">
				<a href="#"><img src="${pageContext.request.contextPath}/resources/harVest_img/harvest_logo.png" width="100"></a>
				<span>프로젝트 후원하기</span>
			</div>
			<div class="payment_container">
				<div class="payment_cont">
					<div class="proj_info">
						<div>
							<img onclick="location.href='${pageContext.request.contextPath}/project/projectInfo?idx=${projectDTO.idx}'" src="${pageContext.request.contextPath}/resources/harVest_img/${projectDTO.img1}" width="150">
						</div>
						<div>
							<span class="category" onclick="location.href='${pageContext.request.contextPath}/main/mainList'">${projectDTO.category}</span>
							<h3 onclick="location.href='${pageContext.request.contextPath}/project/projectInfo?idx=${projectDTO.idx}'">${projectDTO.title}</h3>
							<div>
								<strong><fmt:formatNumber value="${funding_name}" />원</strong>
								<span class="point" style="font-weight:900;">${Math.round(projectDTO.sumMoney / projectDTO.targetAmt * 100)}%</span>
								<span>
								<fmt:parseNumber value="${now.time / (1000*60*60*24)}" integerOnly="true" var="nowDtParse" scope="request"/>
								<fmt:parseNumber value="${projectDTO.end.time / (1000*60*60*24)}" integerOnly="true" var="dbDtParse" scope="request"/>
								<c:if test="${(dbDtParse - nowDtParse) + 1 > 0}">
									<span class="days"> | ${(dbDtParse - nowDtParse) + 1}일 남음</span>
								</c:if>
								<c:if test="${(dbDtParse - nowDtParse) + 1 == 0}">
									<span class="point"> | 오늘 마감</span>
								</c:if></span>
							</div>
						</div>
					</div> <!-- 프로젝트 정보 간략 끝 -->
					<div class="payment_info">
						<div>
							<div class="info_reward">
								<div class="payinfo_title"><p>후원 정보</p></div>
								<div class="payinfo_cont">
									<table>
										<tr>
											<th>후원금액</th>
											<td><fmt:formatNumber value="${funding_name}" />원</td>
										</tr>
									</table>
									<div class="pay_change">변경</div>
								</div>
							</div>
							<div class="info_user">
								<div class="payinfo_title"><p>후원자 정보</p></div>
								<div class="payinfo_cont">
									<table>
										<tr>
											<th>아이디</th>
											<td>${sessionScope.iD}</td>
										</tr>
										<tr>
											<th>연락처</th>
											<td>010-9949-6359</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="info_deliver">
								<div class="payinfo_title"><p>배송지 정보</p></div>
								<div class="payinfo_cont">
									<table>
										<tr>
											<td>
												<div>
													<p style="margin-top:0;">받는 사람</p>
													<input type="text" name="user_name">
												</div>
											</td>
										</tr>
									</table>
									<table class="address_tb">
										<tr class="address_tr">
											<td>
												<div>
													<p>우편번호</p>
													<input type="text" name="post_num" placeholder="우편번호"><button type="button" class="postBtn">우편번호 찾기</button><br>
													<div style="display: flex;margin-top:5px;">
														<input type="text" name="address_a" placeholder="주소를 입력해주세요."><input type="text" name="address_b" placeholder="상세주소를 입력해주세요.">
													</div>
												</div>
											</td>
										</tr>
									</table>
								</div>
							</div>
							<div class="info_pay">
								<div class="payinfo_title"><p>결제 정보</p></div>
								<div class="payinfo_cont">
									<label>
										<input type="radio" name="payment" id="cardPay" checked>
										<span>카드결제</span>
									</label>
									<label>
										<input type="radio" name="payment" id="naverPay">
										<span>네이버페이</span>
									</label>
								</div>
							</div>
						</div>
						<div class="payment_box">
							<div class="payment_res">
								<div class="info_reward">
								<div class="payinfo_title"><p>최종 결제</p></div>
								<div class="payinfo_cont">
									<table>
										<tr>
											<th class="point">최종 후원 금액</th>
											<td class="point total_money"><fmt:formatNumber value="${funding_name}" />원</td>
										</tr>
									</table>
								</div>
								<div class="pay_notice">
									<p>프로젝트 성공시, 결제는 <span class="point" style="font-weight:600;">${projectDTO.end}</span> 에 진행됩니다. 프로젝트가 무산되거나 중단된 경우, 예약된 결제는 자동으로 취소됩니다.</p>
									<div class="pay_checkbox">
										<div class="allcheck_box">
											<input type="checkbox" id="allBtn" style="display:none;">
											<label for="allBtn">
												<span class="all_check"></span>
												<span>전체 선택</span>
											</label>
										</div>
										<div class="pay_agree">
											<input type="checkbox" id="agreeBtn" name="pay_checked" style="display:none;">
											<label for="agreeBtn">
												<span class="agree_check"></span>
												<span>개인정보 제 3자 제공 동의</span>
											</label>
											<div class="agree_cont">내용보기</div>
										</div>
										<div class="agree_article">
											<p>회원의 개인정보는 당사의 개인정보 취급방침에 따라 안전하게 보호됩니다. '회사'는 이용자들의 개인정보를 개인정보 취급방침의 '제 2조 수집하는 개인정보의 항목, 수집방법 및 이용목적'에서 고지한 범위 내에서 사용하며, 이용자의 사전 동의 없이는 동 범위를 초과하여 이용하거나 원칙적으로 이용자의 개인정보를 외부에 공개하지 않습니다.</p>
										</div>
										<div class="pay_offi">
											<input type="checkbox" id="offiBtn" name="pay_checked" style="display:none;">
											<label for="offiBtn">
												<span class="offi_check"></span>
												<span>후원 유의사항 확인</span>
											</label>
											<div class="notice_cont">내용보기</div>
										</div>
										<div class="notice_article">
											<p class="point" style="margin-bottom:0;font-weight:600;">후원은 구매가 아닌 창의적인 계획에 자금을 지원하는 일입니다.</p>
											텀블벅에서의 후원은 아직 실현되지 않은 프로젝트가 실현될 수 있도록 제작비를 후원하는 과정으로, 기존의 상품 또는 용역을 거래의 대상으로 하는 매매와는 차이가 있습니다. 따라서 전자상거래법상 청약철회 등의 규정이 적용되지 않습니다.
											<p class="point" style="margin-bottom:0;font-weight:600;">프로젝트는 계획과 달리 진행될 수 있습니다.</p>
											예상을 뛰어넘는 멋진 결과가 나올 수 있지만 진행 과정에서 계획이 지연, 변경되거나 무산될 수도 있습니다. 본 프로젝트를 완수할 책임과 권리는 창작자에게 있습니다.
										</div>
									</div>
									<div class="total_btn" onclick="location.href='${pageContext.request.contextPath}/payment/paySuccess'">후원하기</div>
								</div>
							</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="modal_bg">
			<div class="modal_pay">
				<div class="modal_x">
					<span>후원금 변경</span>
					<svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-x-lg" viewBox="0 0 16 16">
						<path d="M2.146 2.854a.5.5 0 1 1 .708-.708L8 7.293l5.146-5.147a.5.5 0 0 1 .708.708L8.707 8l5.147 5.146a.5.5 0 0 1-.708.708L8 8.707l-5.146 5.147a.5.5 0 0 1-.708-.708L7.293 8 2.146 2.854Z"/>
					</svg>
				</div>
				<form action="${pageContext.request.contextPath}/payment/payment?idx=${projectDTO.idx}" id="payForm" method="post">
					<input type="hidden" name="idx" value="${projectDTO.idx}">
					<input type="hidden" name="funding_name" value="0" id="userPayment" checked>
					<div>
						<div>
							<input type="text" name="userDona" id="userDona" placeholder="후원금액을 입력해주세요." maxlength="7"><span style="color:#c8cbb6;font-weight:900;">원</span>
						</div>
						<div>
							<button id="payBtn" type="button">변경하기</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
<!-- footer 들어갈 부분 -->
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
</body>
</html>