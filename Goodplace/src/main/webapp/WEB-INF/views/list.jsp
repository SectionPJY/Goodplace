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
				<td>${dto.id }</td>
				<td>${dto.pw }</td>
				<td>${dto.name }</td>
			</tr>
		</c:forEach>
	</table>
</body>
</html>