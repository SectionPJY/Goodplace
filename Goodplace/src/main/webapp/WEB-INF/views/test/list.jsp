<%@ page language="java" contentType="text/html; charset=EUC-KR"
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
		<c:forEach items="${dtos }" var="dto">
			<tr>
				<td>${dto.u_id }</td>
				<td>${dto.u_pw }</td>
				<td>${dto.u_name }</td>
				<td>${dto.u_email }</td>
				<td>${dto.u_address }</td>
				<td>${dto.u_phone }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>