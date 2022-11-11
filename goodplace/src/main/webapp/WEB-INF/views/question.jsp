<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>자주하는 질문</title>
<link  href="resources/css/question.css" rel="stylesheet">
<link href="resources/css/styles.css" rel="stylesheet" />
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript"></script>
</head>
<body>
		<%@include file = "header.jsp" %>
	<hr>
	<div class="ct">
		<h3>자주 있는 질문</h3>
		<div>
			<h4>1. 예약을 취소하고 싶어요.</h4>
			<p>
				예약자 본인이 직접 예약확인/취소 가능합니다.<br>예약/결제 당시 안내된 취소/환불 <br> 규정에
				따라 처리되며, 취소수수료가 발생 시 취소수수료를 차감한 금액으로 환불 처리됩니다. <br>
			</p>
		</div>

		<div>
			<h4>2. 천재지변으로 인한 예약취소는 어떻게 하나요?</h4>
			<p>일반적인 우천에 의한 예약 취소 및 변경 불가합니다. 태풍 등 기상 특보 시, 입실 당일 현장 날씨 및
				캠핑장/펜션에 연락하셔서 안내 받으시기 바랍니다.</p>
		</div>
		<div>
			<h4>3. 입실일을 변경하고 싶어요</h4>
			<p>예약 이용일 변경 불가합니다. (취소수수료 확인 후) 기존 예약건 취소 및 재 예약하셔야 합니다.</p>
		</div>
		<div>
			<h4>4. 객실타입(사이트) 변경하고 싶어요</h4>
			<p>굿 플레이스 고객센터로 문의하시기 바랍니다.</p>
		</div>
		<div>
			<h4>5. 취소 수수료 계산 기준은 어떻게되나요?</h4>
			<p>
				취소 수수료는 숙소별로 상이합니다. 취소 수스료는 예약시점과는 무관하게 입시일로부터 남은 날짜 기준으로 부과됩니다.
				결제금액에서 취소수수료를 차감한 금액으로 환불 처리됩니다. <br>환불 예정금액은 조회 시점 및 실제 환불 진행
				시점에 따라 달라질 수 있으므로 예약/결제 진행 당시 안내된 취소/환불 규정을 꼭 숙지해 주시길 바랍니다.
			</p>
		</div>

		<div>
			<h4>6. 예약취소했는데 언제 환불되나요?</h4>
			<p>취소 신청 후 간편결제 사어자 또는 은행/신용카드사에 따라 호나불 절차에 일정 시간이 소요됩니다. 영업일 기준
				(토/일/공휴일 제외) 으로 실시간 꼐좌 이체 2~3일, 신용카드 3~5일 소요됩니다.</p>
			<p></p>
		</div>

	</div>
	<div class="yon">
		<button type="button" onclick="location.href='question2'">질문하기</button>
	</div>
		<%@ include file="footer.jsp"%>
		
</body>
</html>
