<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>GoodPlace</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Bootstrap icons-->
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/shopcart.css" rel="stylesheet" />
<link href="resources/css/slider.css" rel="stylesheet" />
</head>
<body>
	<!-- Navigation-->
	<%@include file="header.jsp"%>
	<hr>
	<!-- Header-->
	<header>
		<div class="box-wrap">
			<script
				src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
			<script src="http://code.jquery.com/jquery-latest.js"></script>
			<script src="resources/js/slider.js"></script>
			<div class="box-list">
				<div class="box active">
					<img src="resources/assets/img/advertise1.jpg" alt="이미지">
				</div>
				<div class="box ">
					<img src="resources/assets/img/advertise2.jpg" alt="이미지">
				</div>
				<div class="box ">
					<img src="resources/assets/img/advertise3.jpg" alt="이미지">
				</div>
				<div class="box ">
					<img src="resources/assets/img/advertise4.jpg" alt="이미지">
				</div>
				<div class="box ">
					<img src="resources/assets/img/advertise5.jpg" alt="이미지">
				</div>

			</div>
		</div>

		<br> <br> <br>
	</header>
	<div align="center">
		<select class="searchchang">
			<option>카테고리</option>
			<option>텐트</option>
			<option>침낭</option>
			<option>화로</option>
			<option>키친</option>
			<option>퍼니처</option>
		</select> <input type="text" class="searchchang" autofocus required>
		<button class="searchbutton" type="submit">검색</button>
	</div>
	<!-- Section-->
	<section class="py-5">
		<div class="container px-4 px-lg-5 mt-5">
			<div
				class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
				<c:forEach items="${dtos }" var="EquipDTO">
					<div class="col mb-5">
						<div class="card h-100">
							<!-- Product image-->
							<img class="card-img-top" src="${EquipDTO.p_imagePath }"
								alt="..." />
							<!-- Product details-->
							<div class="card-body p-4">
								<div class="text-center">
									<!-- Product name-->
									<h5 class="fw-bolder">${EquipDTO.p_name }</h5>
									<!-- Product price-->
									${EquipDTO.p_price }원
								</div>
							</div>
							<!-- Product actions-->
							<div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
								<div class="text-center">
									<button class="btn btn-outline-dark mt-auto"
										onclick="sendValue('${EquipDTO.p_id }')">상품보기</button>
								</div>
							</div>
						</div>
					</div>
				</c:forEach>
				<script>
					function sendValue(p_id) {
						window.location = "/ex/itempage?p_id=" + p_id;
					}
				</script>
			</div>
		</div>
	</section>
	<!-- Footer-->

	<%@include file="footer.jsp"%>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
</body>
</html>
