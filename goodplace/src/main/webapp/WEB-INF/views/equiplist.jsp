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
<link href="resources/css/equiplist.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>

<script>
	
</script>
</head>
<body class="sb-nav-fixed">
	<%@include file = "adminheader.jsp" %>
	<%@include file = "sidemenu.jsp" %>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">장비 목록</h1>
				<hr>
			</div>
			<br>
			<div class="card mb-4">
				<div class="card-body">
					<form method="post" id="equipForm">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>상품번호</th>
									<th>장비명</th>
									<th>종류</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dtos }" var="EquipDTO">
									<tr>
										<td>${EquipDTO.p_id }</td>
										<td>${EquipDTO.p_name }</td>
										<td>${EquipDTO.p_kind }</td>
										<td><button onclick="linkTest('${EquipDTO.p_id }')">장비확인</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
					<script>
						function linkTest(p_id) {
							var width = 500;
							var height = 400;
			                var positionX = (window.screen.width / 2) - (width / 2);
			                var positionY = (window.screen.height / 2) - (height / 2);
			                
							window.open(
									"equipTemp?p_id=" + p_id, 	// 링크
									"temp",	// 새 창 아이디
									"width=" + width + 
									", height=" + height + 
									", top=" + positionY +
									", left=" + positionX);
							return false;
						}
					</script>
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
