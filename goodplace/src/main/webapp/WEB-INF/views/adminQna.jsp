<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Qna</title>
</head>
<body>
	<form action="updateQna" method="post">
		<c:forEach items="${dto }" var="QnADTO">
			<div>
				<input type="text" name="q_id" value="${QnADTO.q_id }">
				<input type="text"
					style="float: left; height: 30px; width: 250px; margin-bottom: 10px;"
					value="${QnADTO.q_title }"> <input type="text"
					style="float: right; height: 30px; width: 100px; margin-bottom: 10px;"
					value="${QnADTO.u_name }">
			</div>
			<br>
			<div>
				<input type="text"
					style="width: 100%; height: 300px; text-align: center;"
					value="${QnADTO.q_content }">
			</div>
			<div>
				<p>
					<textarea name="q_reply"
						style="width: 100%; height: 200px; resize: none;"
						placeholder="답변을 써주세요~"></textarea>
				</p>
			</div>
			<div>
				<input type="submit" value="답변작성" 
					style="float: right; height: 30px; width: 100px; margin-bottom: 10px;">
			</div>
		</c:forEach>
	</form>
</body>
</html>