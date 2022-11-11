<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title></title>
<link rel="stylesheet" href="resources/css/registration.css">
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"></script>
</head>



<body>
	<header style="text-align: center">
		<br>
		<h2>회원 등록</h2>
	</header>
	<form action="registrationCheck" method="post">
		<div class="info_member">

			<div>
				<p>이름</p>
				<input type="text" id="registName" name="u_name"
					placeholder="이름을 입력해주세요" required>
			</div>
			<div>
				<p>휴대폰</p>
				<div>
					<input type="text" id="registPhone" name="u_phone"
						placeholder="숫자만 입력해주세요" required>
				</div>
			</div>
			<div>
				<p>주소</p>
				<input type="text" id="registAddress" name="u_address"
					placeholder="도로명, 지번, 건물명 검색" required> <span>배송지에
					따라 상품 정보가 달라질 수 있습니다. </span>
			</div>
		</div>

		<br>
		<div class="consent">
			<input type="submit" value="등록하기">
		</div>
	</form>
	<br>


</body>