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
<title>캠핑장 리스트</title>
<link
	href="https://cdn.jsdelivr.net/npm/simple-datatables@latest/dist/style.css"
	rel="stylesheet" />
<link href="resources/css/camplist.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp"%>
	<%@include file="sidemenu.jsp"%>
	<div id="layoutSidenav_content">
		<main>
		<div class="container-fluid px-4">
			<h1 class="mt-4">캠핑장 목록</h1>
			<hr>
		</div>
		<br>
		<div class="card mb-4">
			<div class="card-body">
				<table id="datatablesSimple">
					<thead>
						<tr>
							<th>캠핑장 번호</th>
							<th>캠핑장 이름</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${dtos }" var="CampDTO">
							<tr>
								<td>${CampDTO.c_id }</td>
								<td>${CampDTO.c_name }</td>
								<td><button onclick="linkTest('${CampDTO.c_id }')">캠핑장확인</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>
				<script>
						function linkTest(c_id) {
							var width = 500;
							var height = 400;
			                var positionX = (window.screen.width / 2) - (width / 2);
			                var positionY = (window.screen.height / 2) - (height / 2);
			                
							window.open(
									"campListTemp?c_id=" + c_id, 	// 링크
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
