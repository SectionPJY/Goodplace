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
<link href="resources/css/income.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<nav class="sb-topnav navbar navbar-expand navbar-dark bg-dark">
		<!-- Navbar Brand-->
		<a href="admin"> <img src="resources/assets/img/GoodplaceLogo.png"
			width="50" height="50" style="margin-left: 20px" />
		</a>
		<!-- Navbar Search-->
		<form
			class="d-none d-md-inline-block form-inline ms-auto me-0 me-md-3 my-2 my-md-0">
			<div class="input-group">
				<input class="form-control" type="text" placeholder="Search for..."
					aria-label="Search for..." aria-describedby="btnNavbarSearch"
					style="float: center" />
				<button class="btn btn-primary" id="btnNavbarSearch" type="button">
					<i class="fas fa-search"></i>
				</button>
				<div class="menu-button">
					<button class="user" id="userregister" type="button"
						style="height: 50px">회원 등록</button>
					<button class="equip" id="equipmentregistration" type="button"
						style="height: 50px">장비 등록</button>
					<button class="question" id="questionregister" type="button"
						style="height: 50px">캠핑장 등록</button>
				</div>
			</div>
		</form>
	</nav>
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
							aria-controls="collapseequip">
							장비관리
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
							aria-controls="collapsecamping">
							캠핑장관리
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
							aria-controls="collapsead" >
							광고관리
							<div class="sb-sidenav-collapse-arrow">
								<i class="fas fa-angle-down"></i>
							</div>
						</a>
						<div class="collapse" id="collapsead"
							aria-labelledby="headingOne" data-bs-parent="#sidenavAccordion">
							<nav class="sb-sidenav-menu-nested nav">
								<a class="nav-link" href="adlist">광고목록 </a> <a
									class="nav-link" href="adreg">광고등록</a>
							</nav>
						</div>


						<a class="nav-link collapsed" href="#" data-bs-toggle="collapse"
							data-bs-target="#collapseincome" aria-expanded="false"
							aria-controls="collapseincome">
							수입관리
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
			<main>
			<div class="container-fluid px-4">
				<h1 class="mt-4">수입조회</h1>
				<hr>
				<div class="main-area">

					<div id="container">
						<input id="tab-1" type="radio" name="tab-group" checked="checked" />
						<label for="tab-1">주간</label> <input id="tab-2" type="radio"
							name="tab-group" /> <label for="tab-2">월간</label> <input
							id="tab-3" type="radio" name="tab-group" /> <label for="tab-3">연간</label>
						<input id="tab-4" type="radio" name="tab-group" /> <label
							for="tab-4">오늘</label> <input id="tab-5" type="radio"
							name="tab-group" /> <label for="tab-5">연도</label> <input
							id="tab-6" type="radio" name="tab-group" /> <label for="tab-6">월</label>

						<input id="tab-7" type="radio" name="tab-group" /> <label
							for="tab-7">일</label> <input id="tab-8" type="radio"
							name="tab-group" /> <label for="tab-8">그래프</label>

						<div id="content">
							<div id="content-1">

								<p>주간</p>
							</div>

							<div id="content-2">
								<p>월간</p>

							</div>
							<div id="content-3">
								<p>연간</p>

							</div>
							<!--Contenido de la Pestaña 3-->
							<div id="content-4">

								<p>오늘</p>

							</div>

							<div id="content-5">

								<p>연도</p>

							</div>


							<div id="content-6">
								<p>월</p>


							</div>

							<div id="content-7">

								<p>일</p>

							</div>
							
							<div id="content-8">

								<p>그래프</p>

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