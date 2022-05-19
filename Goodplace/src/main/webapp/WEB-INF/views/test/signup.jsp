<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SignUp Page</title>
</head>
<body>
	<form action="signupCheck" method="post">
		ID : <input type="text" name="id"> <br>
		PW : <input type="password" name="pw" size="20"> <br>
		이름 : <input type="text" name="name"> <br>
		<input type="submit" value="회원가입"> <input type="reset" value="취소">
	</form>
</body>
</html>