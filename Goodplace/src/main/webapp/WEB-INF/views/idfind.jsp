<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<link href="resources/css/idfind.css" rel="stylesheet"
	id="bootstrap-css">
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<title>로그인 폼</title>
</head>

<body cellpadding="0" cellspacing="0" marginleft="0" margintop="0"
	width="100%" height="100%" align="center">

	<div class="card align-middle" style="width: 25rem;">
		<div class="card-title" style="margin-top: 30px;">

			<h2 class="card-title" style="color: white;">아이디 찾기</h2>
		</div>
		<form action="login" class="login" method="POST">
			<div class="card-body">
				<input type="text" name="LoginId" id="Id" class="form-control"
					placeholder="휴대폰 번호 입력" autofocus required><br>
				<div style="display: inline-block">
					<input type="password" name="LoginPw" id="Pw" class="form-control"
						placeholder="인증번호" required>
				</div>
				<div style="display: inline-block; padding-left:34px;">
					<input type="button" value="인증번호 발송">
				</div>
				<br>
				<p id="check" class="check">${login_msg}</p>
				<br /> <input id="btn-Yes" class="btn btn-lg btn-primary btn-block"
					type="submit" value="아이디 찾기">
		</form>
	</div>
	<div class="links" style="color: white;">
		<div style="color: white;">
			<a class="a" href="login2">로그인</a> | <a class="a" href="passwordfind">비밀번호
				찾기</a> | <a class="a" href="register">회원가입</a>
		</div>
	</div>
	</div>

</body>
</html>