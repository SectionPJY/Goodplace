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
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<%
	Object e_id = session.getAttribute("e_id");
%>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp" %>
	<%@include file = "sidemenu.jsp" %>
		<div id="layoutSidenav_content">
			<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4"><%=(String) e_id%></h1>
				<hr>
				<div class="row">
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-area me-1"></i> 주간 수익
							</div>
							<div class="card-body">
								<canvas id="myAreaChart" width="100%" height="40"></canvas>
							</div>
						</div>
					</div>
					<div class="col-xl-6">
						<div class="card mb-4">
							<div class="card-header">
								<i class="fas fa-chart-bar me-1"></i> 매출 현황
							</div>
							<div class="card-body">
								<canvas id="myBarChart" width="100%" height="40"></canvas>
							</div>
						</div>
					</div>
				</div>
				<div class="card mb-4">
					<div class="card-header">
						<i class="fas fa-table me-1"></i> 최근 문의 내역
					</div>
					<div class="card-body">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>문의내역 제목</th>
									<th>문의내용</th>
									<th>작성자</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dtos }" var="QnADTO">
									<tr>
										<td>${QnADTO.q_title }</td>
										<td>${QnADTO.q_content }</td>
										<td>${QnADTO.q_uid }</td>
										<td><button id="btnQna"
												onclick="linkTest('${QnADTO.q_id}')">문의확인</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<script>
							function linkTest(q_id) {
								var width = 500;
								var height = 400;
				                var positionX = (window.screen.width / 2) - (width / 2);
				                var positionY = (window.screen.height / 2) - (height / 2);
				                
								window.open(
										"adminQna?q_id=" + q_id, 	// 링크
										"qnaReply",	// 새 창 아이디
										"width=" + width + 
										", height=" + height + 
										", top=" + positionY +
										", left=" + positionX);
								return false;
							}
						</script>
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
