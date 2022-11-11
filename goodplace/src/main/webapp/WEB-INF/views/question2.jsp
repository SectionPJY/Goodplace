<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">

<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>자주하는 질문</title>
<link rel="stylesheet" href="resources/css/question2.css">
<link rel="stylesheet" href="resources/css/styles.css" />
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript"></script>
</head>

<body>
	<%@include file="header.jsp"%>
	<hr>
	<form action="questionInsert" method="post">
		<div class="ct">
			<h3>질문하기</h3>
			<div>
				<h4>GoodPlace의 중심은 항상 고객님입니다.</h4>
				<p>
					GoodPlace를 이용하면서 느끼신 불편사항이나 바라는점을 알려주세요.<br> 고객님의 소중한 의견으로 한
					뼘더 자라는 GoodPlace가 되겠습니다.
				</p>
			</div>
			<div>
				<input type="text" name="q_title">
				<%
					Object u_id = session.getAttribute("u_id");
				%>
				<input type="text" name="q_uid" value="<%=(String) u_id %>">
				<p>
					<textarea id="questionContent" name="q_content"
						placeholder="의견을 남겨주세요 
					*상담사가 내용 확인을 위해 연락을 드릴 수 있습니다.
					전화 연락을 원치 않으시면[전화불필요를]입력해주세요..
					※내용본문에 고객님의 개인정보(주민번호 등)가 포함되지 않도록 주의 해 주세요."
						style="resize: none; height: 500px;">
				</textarea>
				</p>
			</div>
		</div>
		<div class="yon">
			<input type="submit" value="작성하기">
		</div>
	</form>
	<%@ include file="footer.jsp"%>
</body>
</html>
