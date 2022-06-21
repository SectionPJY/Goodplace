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
<link href="resources/css/memberdetails.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
</head>
<body class="sb-nav-fixed">
	<%@include file="adminheader.jsp"%>
	<div id="layoutSidenav">
		<
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
			<main>
			<div class="container-fluid px-4">
				<br> <br>
				<div class="main-area">
					<div style="float: left">
						<a href="memberlist"> <img src="resources/assets/img/left.png"
							width="50" height="50" alt="..." />
						</a>
					</div>
					<br> <br> <br>
					<c:forEach items="${userInfo }" var="UserDTO">
						<form action="updateUser" method="post">
							<div style="float: left">
								이름 : <input type="text" id="name" name="u_name"
									value="${UserDTO.u_name }"
									style="margin-right: 100px; padding: 0;"> 아이디 : <input
									type="text" id="id" name="u_id" value="${UserDTO.u_id }"><br>
								<hr>
								이메일 : <input type="text" id="email" name="u_email"
									style="margin-right: 70px" value="${UserDTO.u_email }">
								비밀번호 : <input type="password" id="pw" name="u_pw"
									value="${UserDTO.u_pw }"> <br>
								<hr>
								핸드폰번호 : <input type="text" id="phone" name="u_phone"
									value="${UserDTO.u_phone }" style="margin-right: 70px">
								주소 : <input type="text" id="address" name="u_address"
									value="${UserDTO.u_address }"> <br>
								<hr>
							</div>
							<div>
								<img src="resources/assets/img/user-interface.png" width="130"
									height="130" alt="..." />
							</div>
							<div class="buttonContainer" style="float: right">
								<button onclick="sendDelete('${UserDTO.u_id }')"
									value="${UserDTO.u_id }"
									style="background-color: black; color: white;">삭제</button>
							</div>
							<div class="buttonContainer" style="float: right">
								<%--
								<button onclick="sendUpdate('${UserDTO.u_id }')"
									style="background-color: black; color: white;">수정</button>  --%>
								<input type="submit" value="수정"
									style="background-color: black; color: white;">
							</div>
						</form>
					</c:forEach>
					<script>
						function sendDelete(u_id) {
							if (window.confirm("삭제하시겠습니까?")) {
								var width = 500;
								var height = 400;
								var positionX = (window.screen.width / 2) - (width / 2);
				                var positionY = (window.screen.height / 2) - (height / 2);
				                
								window.open(
										"deleteUserTemp?u_id=" + u_id, 	// 링크
										"temp",	// 새 창 아이디
										"width=" + width +
										", height=" + height +
										", top=" + positionY +
										", left=" + positionX);
								return false;
							}
						}
					</script>
					<br> <br>
					<hr>
					<div class="tabs">
						<input class="radiotab" name="tabs" tabindex="1" type="radio"
							id="tabone" checked="checked"> <label class="label"
							for="tabone">캠핑장 이용 현황</label>
						<div class="panel" tabindex="1">
							<div
								style="width: 570px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">예약중인 캠핑장</p>
							</div>
							<div
								style="width: 570px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">이용 완료한 캠핑장</p>
							</div>
						</div>

						<input class="radiotab" tabindex="1" name="tabs" type="radio"
							id="tabtwo"> <label class="label" for="tabtwo">장비
							이용 현황</label>

						<div class="panel" tabindex="1">
							<div
								style="width: 380px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">대여 현황</p>
							</div>
							<div
								style="width: 380px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">구매/배송 현황</p>
							</div>
							<div
								style="width: 380px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">취소/반품 현황
								<p>
							</div>


						</div>

						<input class="radiotab" tabindex="1" name="tabs" type="radio"
							id="tabthree"> <label class="label" for="tabthree">게시글
							관리</label>
						<div class="panel" tabindex="1">
							<div
								style="width: 380px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">캠핑장 후기</p>
							</div>
							<div
								style="width: 380px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">장비 이용 후기</p>
							</div>
							<div
								style="width: 380px; height: 300px; border: 1px solid black; float: left;">
								<br>
								<p style="float: left">문의사항
								<p>
							</div>


						</div>

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