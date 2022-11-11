<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>List Test</title>
</head>
<body>
	<table>
		<tr>
			<td>ID</td>
			<td>Password</td>
			<td>Name</td>
		</tr>
		<c:forEach items="${userInfo }" var="info">
			<tr>
				<td>${info.u_id }</td>
				<td>${info.u_pw }</td>
				<td>${info.u_name }</td>
				<td>${info.u_email }</td>
				<td>${info.u_address }</td>
				<td>${info.u_phone }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>