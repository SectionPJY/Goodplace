<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="naver-site-verification" content="" />
<meta name="description" content="">
<title>결제페이지</title>
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/order.css" rel="stylesheet" />


<!--[if lt IE 9]>
		<script type="text/javascript" src="/js/ie/ie8-body.js"></script>
	<![endif]-->

<!-- jQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-1.12.4.min.js"></script>

<!-- iamport.payment.js -->
<script type="text/javascript"
	src="https://cdn.iamport.kr/js/iamport.payment-1.2.0.js"></script>
<script>
	var IMP = window.IMP; // 생략 가능
	IMP.init("imp11048506");
</script>


</head>
<%@include file="header.jsp"%>
<hr style="height: 5px">
<br>
<div id="container">
	<div class="payWrap">
		<div class="payHeader">
			<h3 class="title">주문/결제</h3>
			<div class="nav">
				<ul>
					<li><span class="num on">1</span>주문/결제</li>
					<li class="last"><span class="num">2</span>주문완료</li>
				</ul>
			</div>
		</div>
		<c:forEach items="${dto }" var="EquipDTO">
			<c:forEach items="${userInfo }" var="UserInfo">
				<div class="payCont cf">
					<div class="payMethod">
						<div class="tblCartWrap">
							<h4 class="sTitle">주문하시는 상품</h4>
							<table class="tblCart" summary="상품명,기간,제공서비스,결제금액 항목으로 구성된 표입니다.">
								<caption>주문하실 상품 내역</caption>
								<colgroup>
									<col width="21%">
									<col width="16%">
									<col width="*">
									<col width="21%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">상품명</th>
										<th scope="col">기간</th>
										<th scope="col">결제금액</th>
									</tr>
								</thead>
								<tbody>
									<tr>
										<td>${EquipDTO.p_name }</td>
										<td>1개</td>
										<td class="price"><strong>${EquipDTO.p_price }</strong>원</td>
									</tr>
								</tbody>
							</table>
						</div>
						<!--// 결제수단 선택 -->
					</div>
					<!--// payMethod -->
					<div class="payInfo">
						<div class="inner">
							<h4 class="sTitle">결제정보</h4>
							<div class="optWrap">
								<div class="optCont">
									<div class="totalPrice">
										<span class="tit">총 상품금액</span> <span class="con"><strong
											class="colorBlue">${EquipDTO.p_price }</strong>원</span>
									</div>
								</div>
								<div class="optBottom">
									<div class="totalPayPrice">
										<span class="tit">최종 결제금액</span> <span class="con"><strong
											id="total">${EquipDTO.p_price }</strong>원</span>
									</div>
									<p class="desc">
										<span>구매일자 + 372일(1년+1주일)</span> 전 연간상품 재 구매 시<br /> <span>5%할인</span>(이용권,
										가족상품, 명의도용 365 제외)
									</p>
								</div>
							</div>
							<br>
							<div class="btnPay">
								<a onclick="requestPay()">결제하기</a>
							</div>
							<script>
								function requestPay() {
									// IMP.request_pay(param, callback) 결제창 호출
									IMP.request_pay({ // param
										pg : "html5_inicis",
										pay_method : "card",
										merchant_uid : "ORD20180131-0000011",
										name : "${EquipDTO.p_name }", // 상품명
										amount : parseInt($("#total").text()
												.replace(',', '')), // 총 가격
										buyer_email : "${UserInfo.u_email }", // 구매자 이메일
										buyer_name : "${UserInfo.u_name }", // 구매자 이름
										buyer_tel : "${UserInfo.u_phone }", // 구매자 핸드폰
										buyer_addr : "${UserInfo.u_address }", // 구매자 주소
									}, function(rsp) { // callback
										if (rsp.success) {
											alert("결제성공");
										} else {
											alert("결제실패");
										}
									});
								}
							</script>
						</div>
						<!--// inner -->
					</div>
					<!--// payInfo -->
				</div>
			</c:forEach>
		</c:forEach>
	</div>
	<!--// payWrap -->
</div>
<%@include file="footer.jsp"%>
</body>
</html>
