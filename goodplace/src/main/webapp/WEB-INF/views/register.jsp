<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="ko">


<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>회원가입</title>
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
	<form action="signupInsert" method="post">
		<div class="info_member">

			<div>
				<p>아이디</p>
				<div>
					<input type="text" id="registId" name="u_id"
						placeholder="예: example123" required>
					<button onclick="idDupCheck();" name="button" formaction="idCheck">중복확인</button>
					<script>
                  var width = 300;
                  var height = 200;
                  var positionX = (window.screen.width / 2) - (width / 2);
                  var positionY = (window.screen.height / 2) - (height / 2);
                  
                  function idDupCheck() {
                     window.open(
                        "idDupCheckPage",
                        "idDupCheckPage",
                        "width=" + width + ", height=" + height + ", top=" + positionY + ", left=" + positionX
                     );
                     return false;
                  }
               </script>
				</div>
			</div>

			<div>
				<p>비밀번호</p>
				<input type="password" name="userPW" id="pw" onchange="check_pw()">
			</div>

			<div>
				<p>비밀번호확인</p>
				<input type="password" name="userPW2" id="pw2" onchange="check_pw()"
					style="width: 100%">&nbsp;<span id="check"></span>
			</div>

			<div>
				<p>이름</p>
				<input type="text" id="registName" name="u_name"
					placeholder="이름을 입력해주세요 (이름은 변경할 수 없습니다)" required>
			</div>

			<div>
				<p>이메일</p>
				<input type="text" id="registEmail" name="u_email"
					placeholder="예: example123@example.com" required>
			</div>

			<div>
				<p>휴대폰</p>
				<div>
					<input type="text" id="registPhone" name="u_phone" name="phoneNum"
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

			<button type="submit" name="button"
				style="width: 100%; padding: 30px 40px;">가입하기</button>

		</div>
	</form>
	<script type="text/javascript" src="resources/js/password.js"></script>
</body>