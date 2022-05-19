<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login OK</title>
</head>
<body>
	<h1>Login Success</h1>
	<%
		Object userInfo = session.getAttribute("userInfo");

		out.println((String) userInfo);
	%>
</body>
</html>