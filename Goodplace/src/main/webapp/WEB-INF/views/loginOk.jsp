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
		Object u_id = session.getAttribute("id");

		out.println((String) u_id);
	%>
</body>
</html>