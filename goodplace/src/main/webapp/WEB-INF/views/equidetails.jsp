<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<link href="resources/css/equidetails.css" rel="stylesheet" />
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
			<c:forEach items="${dto }" var="EquipDTO">
				<div class="main-area">
					<div style="float: left">
						<a href="equiplist"> <img src="resources/assets/img/left.png"
							width="50" height="50" alt="..." />
						</a>
					</div>
					<br> <br> <br>

					<form action="updateEquip" method="post">
						<div class="box" style="float: left;">
							<img src="${EquipDTO.p_imagePath }" width="280" height="280"
								style="margin-top: 10px;" />
						</div>
						<div style="margin-left: 300px">
							제품번호 : <input type="text" id="equipName" name="p_id"
								style="margin-right: 100px; padding: 0;"
								value="${EquipDTO.p_id }" value="${EquipDTO.p_name }"> <br>
							<br> <br> 제품명 : <input type="text" id="equipName"
								name="p_name" style="margin-right: 100px; padding: 0;"
								value="${EquipDTO.p_name }"> <br> <br> <br>
							상품설명 : <input type="text" id="equipContent" name="p_content"
								style="margin-right: 70px" value="${EquipDTO.p_content }">
							<br> <br> <br> 제품분류 : <input type="text"
								id="equipKind" name="p_kind" style="margin-right: 70px"
								value="${EquipDTO.p_kind }"> <br> <br> <br>
							가격 : <input type="text" id="equipPrice" name="p_price"
								style="margin-right: 70px" value="${EquipDTO.p_price }">
							<br>
						</div>
						<br> <br> <br>
						<div class="buttonContainer" style="float: right">
							<button onclick="sendDelete('${EquipDTO.p_id }')"
								style="background-color: black; color: white;">삭제</button>
						</div>
						<div class="buttonContainer" style="float: right">
							<input type="submit"
								style="background-color: black; color: white;" value="수정">
						</div>
					</form>
					<script>
							function sendDelete(p_id) {
								if (window.confirm("삭제하시겠습니까?")) {
									var width = 500;
									var height = 400;
									var positionX = (window.screen.width / 2) - (width / 2);
					                var positionY = (window.screen.height / 2) - (height / 2);
					                
									window.open(
											"deleteEquipTemp?p_id=" + p_id, 	// 링크
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
						style="width: 380px; height: 300px; border: 1px solid black; float: left;">
						<br>
						<div class="buttonContainer">제품후기</div>
						<hr>
						<p>사용자 후기(제목, 사용자명, 일시)</p>
						<hr>
						<p>사용자 후기(제목, 사용자명, 일시)</p>
						<hr>
						<p>★★★★★</p>
					</div>
					<div
						style="width: 380px; height: 300px; border: 1px solid black; float: left;">
						<br>
						<div class="buttonContainer">대여현황</div>
						<hr>
						<p>대여정보(대여자, 대여날짜)</p>
						<hr>
						<div class="buttonContainer" style="margin-top: 110px">대여기록</div>
					</div>
					<div
						style="width: 380px; height: 300px; border: 1px solid black; float: left;">
						<br>
						<div class="buttonContainer">매출</div>
						<div class="buttonContainer" style="margin-top: 190px">구매기록</div>
					</div>
				</div>
			</c:forEach>
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