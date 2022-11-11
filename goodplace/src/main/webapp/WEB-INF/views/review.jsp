<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=3.0">
<title>리뷰페이지</title>
<link rel="stylesheet" href="resources/css/review.css">
<link href="resources/css/styles.css?after" rel="stylesheet" />
<style type="text/css"></style>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="script.js"></script>
<script type="text/javascript"></script>
</head>

<body>
	<%@include file ="header.jsp" %>
	<hr>
	<div class="ct">
		<h3>리뷰하기</h3>
		<hr>
		<div>
			<h5>상세 리뷰</h5>
			<p>
				<textarea placeholder="고객님의 솔직한 리뷰를 남겨주세요" style="resize: none; height: 500px;"></textarea>
			</p>
		</div>
		<hr>
		<div class="image-upload" id="image-upload">
			<div class="fileContainer">
				<p style="margin-right: 20px">사진 첨부:</p>
				<div class="fileInput">
					<p>FILE NAME: </p>
					<p id="fileName2"></p>
				</div>
				<form method="post" enctype="multipart/form-data">
					<div class="button" style="margin-top:50px; margin-left:50px;">
						<label for="chooseFile" style="margin-top:10px">사진첨부하기</label>
					</div>
					<input type="file" id="chooseFile" name="chooseFile"
						accept="image/*" onchange="loadFile2(this)">
				</form>
			</div>
		</div>
		<script src="resources/js/adreg.js"></script>
		<div class="image-show" id="image-show"></div>
	</div>
	<hr>
	<div class="yon">
		<button>취소하기</button>
		<button>등록하기</button>
	</div>
	<%@include file = "footer.jsp" %>
</body>
</html>
