<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Good Place</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/assets/img/GoodplaceLogo.png" />
<!-- Bootstrap icons-->
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/reservation.css" rel="stylesheet" />

</head>
<body>
	<!-- Navigation-->
	<%@include file="header.jsp"%>

	<script>
		var c_name = $
		{
			CampDTO.c_name
		};
	</script>

	<hr>
	<br>
	<div>
		<div style="padding: 0 50px">
			<img src="resources/assets/img/camping.jpg" width="800px"
				height="500px" style="float: left; margin-right: 10px;">
		</div>


		<div data-component="deliveryAddress">
			<table class="delivery-address">
				<tbody>
					<c:forEach items="${dto }" var="CampDTO">
						<tr>
							<th class="delivery-address__th">이름</th>
							<td
								class="delivery-address__td delivery-address__td--name delivery-address__td-rocket-fresh-mvp2">
								<span class="delivery-address__name"> ${CampDTO.c_name }
							</span>
							</td>
						</tr>
						<tr>
							<th class="delivery-address__th">주소</th>
							<td class="delivery-address__td">${CampDTO.c_address }</td>
						</tr>
						<tr>
							<th class="delivery-address__th delivery-address__th--no-line">가격</th>
							<td class="delivery-address__td delivery-address__td--no-line">${CampDTO.c_price }원</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
	<div style="margin-top: 500px">
		<hr>
		<div style="padding: 30px 20px">
			<div class="tabs">
				<input class="radiotab" name="tabs" tabindex="1" type="radio"
					id="tabone" checked="checked"> <label class="label"
					for="tabone">캠핑장 소개</label>
				<div class="panel" tabindex="1">

					<img src="resources/assets/img/GoodplaceLogo.png" width="200"
						height="200" style="float: left; margin-right: 200px;" /> <img
						src="resources/assets/img/GoodplaceLogo.png" width="200"
						height="200" style="float: left; margin-right: 200px;" /> <img
						src="resources/assets/img/GoodplaceLogo.png" width="200"
						height="200" />
					<hr>
					<c:forEach items="${dto }" var="CampDTO">
						<p>
							${CampDTO.c_content }
						</p>
					</c:forEach>
				</div>
				<input class="radiotab" tabindex="1" name="tabs" type="radio"
					id="tabtwo"> <label class="label" for="tabtwo">캠핑장
					이용후기</label>
				<div class="panel" tabindex="1">
					<hr>
					<p>등록된 게시글이 없습니다.</p>
					<hr>
				</div>
				<input class="radiotab" tabindex="1" name="tabs" type="radio"
					id="tabthree"> <label class="label" for="tabthree">이용안내</label>
				<div class="panel" tabindex="1">
					<hr>
					<p>
						답답한 일상, 자연 속에서 힐링하세요!<br> 구로구는 주민들에게 도심 속에서 자연을 즐기며 힐링 할 수 있는
						기회를 제공하기 위해 천왕산 가족 캠핑장을 마련<br> 천왕산 가족캠핑장은 향동149-1(연동로12길149)
						일대에 조성됐다.<br> 총2만7,550㎡면적에 오토야영장18면,일반야영장12면 등 데크30면이 설치됐다.<br>
						주차장,샤워장,식기세척장,화장실 등 편의시설과 전기․통신시설을 갖췄다.<br> 자연을 더욱 만끽할 수 있도록
						소나무,사철나무 등 수목21종1만6,385주도 식재했다.<br> Checkin 14:00 - Checkout
						11:00<br> 안내사항<br> 각 데크는 4인 기준입니다<br> 예고되지 않은 방문객은
						입장할 수 없습니다. 방문객은 21시 이전 반드시 퇴장하십시오.(21시 이후 차량 통제)<br> 시설 이용
						예약자는 반려견 등 반려동물을 동반한 숙박 이용이 불가능합니다.<br> 캠핑장은 전 지역 금연입니다.<br>
						전기제품은 총 사용량 1,000W 이하로만 사용 가능합니다.<br> 주차구획선
						규격(2,300mm*5,500mm) 초과 차량 이용 불가 (무동력 트레일러 등 부착 포함)<br> 화재 예방을
						위한 화기사용 제한 (숯, 번개탄 등을 화로대를 이용하여 사용)<br> 캠핑장내 캠프파이어, 불꽃놀이 전면
						금지<br>
					</p>
					<hr>
				</div>
			</div>
		</div>

	</div>
	<div style="text-align: center">
		<button type="submit" class="reservationbutton">예약하기</button>
	</div>
	<br>
	<!-- Footer-->
	<%@include file="footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
</body>
</html>
