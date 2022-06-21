<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>관리자페이지</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="resources/css/admin.css" rel="stylesheet" />
<link href="resources/css/adprofile.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<%@include file = "adminheader.jsp" %>
<%@include file = "sidemenu.jsp" %>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid px-4">
				<br> <br>
				<div class="main-area">
					<div style="float: left">
						<a href="adlist"> <img
							src="resources/assets/img/left.png" width="50" height="50"
							alt="..." />
						</a>
					</div>
					<br> <br> <br> </a> 회사명 : <input type="text"
						style="margin-right: 100px; padding: 0;"> 대표명 : <input
						type="text"> <br>
					<hr>
					상품명 : <input type="text" style="margin-right: 70px"> 회사이메일
					: <input type="text"> <br>
					<hr>
					회사번호 : <input type="text" style="margin-right: 70px"> 회사사이트
					: <input type="text"> <br>
					<hr>
					<div class="buttonContainer" style="float: right">삭제</div>
					<div class="buttonContainer" style="float: right">수정</div>
					<div class="buttonContainer" style="float: left">계약서 확인</div>
					<br> <br>
					<hr>
					<div
						style="width: 630px; height: 300px; border: 1px solid black; float: left;">
						<br>
						<div class="buttonContainer">노출빈도</div>
					</div>
					<div
						style="width: 630px; height: 300px; border: 1px solid black; float: left;">
						<br>
						<div class="buttonContainer">유저 접속 빈도</div>
					</div>
				</div>
			</div>
		</div>
		</main>
		<footer> </footer>
	</div>
	</div>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/js/scripts.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.8.0/Chart.min.js"
		crossorigin="anonymous"></script>
	<script src="resources/assets/demo/chart-area-demo.js"></script>
	<script src="resources/assets/demo/chart-bar-demo.js"></script>

	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
	<script src="resources/js/datatables-simple-demo.js"></script>
</body>
</html>