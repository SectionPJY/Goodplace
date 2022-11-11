<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Cancle/Exchange/Return Page</title>
<link href="resources/css/styles.css" rel="stylesheet" />
<link href="resources/css/exchange.css" rel="stylesheet" />
</head>
<body>
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<hr>
	<br>
	<div class="text">
		<h1>취소/반품/교환 신청</h1>
	</div>
	<br>
	<div style="padding: 30px 20px">
		<div class="tabs">
			<input class="radiotab" name="tabs" tabindex="1" type="radio"
				id="tabone" checked="checked"> <label class="label"
				for="tabone">취소</label>
			<div class="panel" tabindex="1">

				<div class="box">
					<img src="resources/assets/img/GoodplaceLogo.png" width="50"
						height="50" style="text-align: center" />
				</div>
				<br> <input type="button" value="취소하기" class="button"></input><br>
				<div class="text-area">
					취소<br> - 여행/레저/숙박 상품은 취소 시 수수료가 발생할 수 있으며,<br> 취소 수수료를
					확인하여 2일 이내(주말, 공휴일 제외) 처리결과를 문자로 안내해드립니다. (당일 접수 기준, 마감시간 오후 4시)<br>
					- 문화 상품은 사용 전날 24시까지 취소 신청 시 취소 수수료가 발생되지 않습니다.<br> <br>
					반품<br> - 상품 수령 후 7일 이내 신청하여 주세요<br> - 상품이 출고된 이후에는 배송 완료
					후, 반품 상품을 회수합니다.<br> - 설치상품/주문제작/해외배송 상품 등은 고색센터에서만 반품 신청이
					가능합니다.<br> <br> 교환<br> - 상품의 교환 신청은 고객센터로 문의하여 주세요.<br>
				</div>

			</div>
			<input class="radiotab" tabindex="1" name="tabs" type="radio"
				id="tabtwo"> <label class="label" for="tabtwo">교환</label>
			<div class="panel" tabindex="1">
				<div class="box">
					<img src="resources/assets/img/GoodplaceLogo.png" width="50"
						height="50" style="text-align: center" />
				</div>
				<br> <input type="button" value="교환하기" class="button"></input><br>
				<div class="text-area">
					취소<br> - 여행/레저/숙박 상품은 취소 시 수수료가 발생할 수 있으며,<br> 취소 수수료를
					확인하여 2일 이내(주말, 공휴일 제외) 처리결과를 문자로 안내해드립니다. (당일 접수 기준, 마감시간 오후 4시)<br>
					- 문화 상품은 사용 전날 24시까지 취소 신청 시 취소 수수료가 발생되지 않습니다.<br> <br>
					반품<br> - 상품 수령 후 7일 이내 신청하여 주세요<br> - 상품이 출고된 이후에는 배송 완료
					후, 반품 상품을 회수합니다.<br> - 설치상품/주문제작/해외배송 상품 등은 고색센터에서만 반품 신청이
					가능합니다.<br> <br> 교환<br> - 상품의 교환 신청은 고객센터로 문의하여 주세요.<br>
				</div>
			</div>
			<input class="radiotab" tabindex="1" name="tabs" type="radio"
				id="tabthree"> <label class="label" for="tabthree">반품</label>
			<div class="panel" tabindex="1">
				<div class="box">
					<img src="resources/assets/img/GoodplaceLogo.png" width="50"
						height="50" />
				</div>
				<br> <input type="button" value="반품하기" class="button"></input><br>
				<div class="text-area">
					취소<br> - 여행/레저/숙박 상품은 취소 시 수수료가 발생할 수 있으며,<br> 취소 수수료를
					확인하여 2일 이내(주말, 공휴일 제외) 처리결과를 문자로 안내해드립니다. (당일 접수 기준, 마감시간 오후 4시)<br>
					- 문화 상품은 사용 전날 24시까지 취소 신청 시 취소 수수료가 발생되지 않습니다.<br> <br>
					반품<br> - 상품 수령 후 7일 이내 신청하여 주세요<br> - 상품이 출고된 이후에는 배송 완료
					후, 반품 상품을 회수합니다.<br> - 설치상품/주문제작/해외배송 상품 등은 고색센터에서만 반품 신청이
					가능합니다.<br> <br> 교환<br> - 상품의 교환 신청은 고객센터로 문의하여 주세요.<br>
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<%@include file="footer.jsp"%>
</body>
</html>