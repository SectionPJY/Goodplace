<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

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

						<div style="margin-top: 330px">
							<a class="nav-link" href="index" style="margin-left: 50px;">Logout</a>
						</div>
					</div>
				</div>
			</nav>
		</div>