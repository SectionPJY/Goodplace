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
<link href="resources/css/memberlist.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp"%>
	<div id="layoutSidenav">
		<div id="layoutSidenav_nav">
			<nav class="sb-sidenav accordion sb-sidenav-dark"
				id="sidenavAccordion">
				<div class="sb-sidenav-menu">
					<div class="nav">
						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseLayouts" aria-expanded="false"
							aria-controls="collapseLayouts" style="margin-top: 100px">
							회원관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseLayouts"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="memberlist">회원목록 </a> <a
									class="nav-link" href="registration">회원등록</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseequip" aria-expanded="false"
							aria-controls="collapseequip"> 장비관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseequip"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="equiplist">장비목록 </a> <a
									class="nav-link" href="equip">장비등록</a>
							</nav>
						</div>




						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsecamping" aria-expanded="false"
							aria-controls="collapsecamping"> 캠핑장관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsecamping"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="camplist">캠핑장목록 </a> <a
									class="nav-link" href="campingreg">캠핑장등록</a>
							</nav>
						</div>

						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapsead" aria-expanded="false"
							aria-controls="collapsead"> 광고관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsead" aria-labelledby="headingOne"
							data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="adlist">광고목록 </a> <a class="nav-link"
									href="adreg">광고등록</a>
							</nav>
						</div>


						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseincome" aria-expanded="false"
							aria-controls="collapseincome"> 수입관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapseincome"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="income">조회 </a>
							</nav>
						</div>
					</div>
				</div>
			</nav>
		</div>
		<div id="layoutSidenav_content">
			<main> <br>
			<div class="card mb-4">
				<div class="card-body">
					<form method="post" id="memberForm">
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>회원명</th>
									<th>아이디</th>
									<th>이메일</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dtos }" var="UserDTO">
									<tr>
										<td>${UserDTO.u_name }</td>
										<td>${UserDTO.u_id }</td>
										<td>${UserDTO.u_email }</td>
										<td><button onclick="linkTest('${UserDTO.u_id }', '${UserDTO.u_pw }')">회원정보</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
					<script>
						function linkTest(u_id, u_pw) {
							var width = 500;
							var height = 400;
							var positionX = (window.screen.width / 2) - (width / 2);
			                var positionY = (window.screen.height / 2) - (height / 2);
			                
							window.open(
									"userTemp?u_id=" + u_id + "&u_pw=" + u_pw, 	// 링크
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
