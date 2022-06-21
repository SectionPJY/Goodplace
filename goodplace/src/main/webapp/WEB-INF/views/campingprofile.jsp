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
<link href="resources/css/campingprofile.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp"%>
	<%@include file="sidemenu.jsp"%>
	<div id="layoutSidenav_content">
		<main>
		<div class="container-fluid px-4">
			<br> <br>
			<div class="main-area">
				<div style="float: left">
					<a href="camplist"> <img src="resources/assets/img/left.png"
						width="50" height="50" alt="..." />
					</a>
				</div>
				<br> <br> <br>
				<form action="updateCamp" method="post">
					<c:forEach items="${dto }" var="CampDTO">
						<div style="float: right; margin-right: 400px;">
							캠핑장 고유번호 : <input type="text" id="CampID" name="c_id"
								value="${CampDTO.c_id }"
								style="margin-right: 100px; padding: 0;"> <br> <br>
							<br> 캠핑장 이름 : <input type="text" id="CampName" name="c_name"
								value="${CampDTO.c_name }" style="margin-right: 70px"> <br>
							<br> <br> 캠핑장 가격 : <input type="text" id="CampPrice"
								name="c_price" value="${CampDTO.c_price }"
								style="margin-right: 70px"> <br> <br> <br>
							캠핑장 주소 : <input type="text" id="CampAddress" name="c_address"
								value="${CampDTO.c_address }" style="margin-right: 70px">
							<br>

						</div>
						<div class="box">
							<img src="${CampDTO.c_imagePath }" width="280"
								height="280" style="margin-top: 10px;" />
						</div>
						<br>
						<br>
						<br>
						<div class="buttonContainer" style="float: right">
							<button onclick="sendDelete('${CampDTO.c_id }')"
								style="background-color: black; color: white;">삭제</button>
						</div>
						<div class="buttonContainer" style="float: right">
							<input type="submit" value="수정"
								style="background-color: black; color: white;">
						</div>
					</c:forEach>
				</form>
				<script>
							function sendDelete(c_id) {
								if (window.confirm("삭제하시겠습니까?")) {
									var width = 500;
									var height = 400;
									var positionX = (window.screen.width / 2) - (width / 2);
					                var positionY = (window.screen.height / 2) - (height / 2);
					                
									window.open(
											"deleteCampTemp?c_id=" + c_id, 	// 링크
											"temp",	// 새 창 아이디
											"width=" + width +
											", height=" + height +
											", top=" + positionY +
											", left=" + positionX);
									return false;
								}
							}
						</script>
				<br> <br> <br>
				<hr>
				<div
					style="width: 600px; height: 300px; border: 1px solid black; float: left;">
					<br>
					<div class="buttonContainer">소개글</div>
					<div class="buttonContainer"
						style="margin-top: 190px; float: right;">수정</div>
				</div>
				<div
					style="width: 600px; height: 300px; border: 1px solid black; float: left;">
					<br>
					<div class="buttonContainer">이용후기</div>
					<div class="buttonContainer"
						style="margin-top: 190px; float: right;">이용자 목록</div>
				</div>
			</div>
		</div>
		</main>
	</div>
	<footer> </footer>
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