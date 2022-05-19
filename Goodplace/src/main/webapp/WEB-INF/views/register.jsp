<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>marketkurly</title>
<link rel="stylesheet" href="resources/css/register.css">
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript"></script>
</head>



<body>
	<header style="text-align: center">
		<h2>회원가입</h2>
	</header>
	<div class="info_member">

		<div>
			<p>아이디</p>
			<div>
				<input type="text" name="" value="" placeholder="예: marketkurly12"
					required>
				<button type="submit" name="button">중복확인</button>
			</div>
		</div>

		<div>
			<p>비밀번호</p>
			<input type="text" name="" value="" placeholder="비밀번호를 입력해주세요"
				required>
		</div>

		<div>
			<p>비밀번호 확인</p>
			<input type="text" name="" value="" placeholder="비밀번호를 한번 더 입력해주세요"
				required>
		</div>

		<div>
			<p>이름</p>
			<input type="text" name="" value="" placeholder="이름을 입력해주세요" required>
		</div>

		<div>
			<p>이메일</p>
			<input type="text" name="" value=""
				placeholder="예: marketkurly@kurly.com" required>
		</div>

		<div>
			<p>휴대폰</p>
			<div>
				<input type="text" name="" value="" placeholder="숫자만 입력해주세요"
					required>
				<button type="submit" name="button" disabled>인증번호 받기</button>
			</div>
		</div>

		<div>
			<p>주소</p>
			<input type="text" name="" value="" placeholder="도로명, 지번, 건물명 검색"
				required> <span>배송지에 따라 상품 정보가 달라질 수 있습니다. </span>
		</div>

		<div>
			<p>생년월일</p>
			<div>
				<input type="text" size="4" maxlength="4" placeholder="YYYY">
				<span>/</span> <input type="text" size="2" maxlength="2"
					placeholder="MM"> <span>/</span> <input type="text"
					size="2" maxlength="2" placeholder="DD">
			</div>
		</div>

		<div>
			<p>성별</p>
			<label for="smallradio"> <input type="radio"
				class="smallradio" name="sex"> 남자
			</label> <label for="smallradio"> <input type="radio"
				class="smallradio" name="sex"> 여자
			</label>
		</div>
	</div>


	<div class="consent">

		<span>이용약관 동의</span>

		<div>
			<input type="radio" class="smallradio" checked> <label
				for="smallradio">전체 동의합니다.</label>
			<p>선택 항목에 동의하지 않은 경우도 회원가입 및 일반적인 서비스를 이용할 수 있습니다.</p>
		</div>


		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">이용약관 동의 <span>(필수)</span></label>
		</div>

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">개인정보 수집·이용 동의 <span>(필수)</span></label>
		</div>

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">개인정보 수집·이용 동의 <span>(선택)</span></label>
		</div>

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">무료배송, 할인쿠폰 등 혜택/정보 수신 동의<span>(선택)</span></label>
		</div>

		<div>
			<label for="smallradio"> <input type="radio"
				class="smallradio" name="contact"> SMS
			</label> <label for="smallradio"> <input type="radio"
				class="smallradio" name="contact"> 이메일
			</label>
		</div>

		<img
			src="https://res.kurly.com/mobile/service/join/2007/bnr_join_benefit_v3.svg?v=1"
			alt="">

		<div>
			<input type="radio" class="smallradio"> <label
				for="smallradio">본인은 만 18세 이상입니다.<span>(필수)</span></label>
		</div>

		<button type="button" name="button">가입하기</button>

	</div>



</body>