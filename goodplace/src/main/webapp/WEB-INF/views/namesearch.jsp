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
<title>Good Place</title>
<!-- Favicon-->
<link rel="icon" type="image/x-icon"
	href="resources/assets/img/GoodplaceLogo.png" />
<!-- Bootstrap icons-->
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lato:300,400,700,300italic,400italic,700italic"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="resources/css/namesearch.css" rel="stylesheet" />
</head>
<body>
	<!-- Navigation-->
		<%@include file = "header.jsp" %>
	<hr>
	<div align="center">
		<select class="searchchang">
			<option>카테고리</option>
			<option>텐트</option>
			<option>침낭</option>
			<option>화로</option>
			<option>키친</option>
			<option>퍼니처</option>
		</select> <input type="text" class="searchchang" style="width: 500px">
		<button class="searchbutton" type="submit">검색</button>
	</div>
	<hr />
	<section class="testimonials bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div>
						<img src="resources/assets/img/camping.jpg"
							width="400" height="400" alt="..."
							style="border: 5px solid #000000" />
					</div>
				</div>
				<div class="col-lg-4">
					<a class="navbar-brand" href="reservation">
						<h1>경민캠핑</h1>
						<h4>경기도 의정부시 서부로 545</h4>
					</a>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<section class="testimonials bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div>
						<img src="resources/assets/img/defaultImage.png"
							width="400" height="400" alt="..."
							style="border: 5px solid #000000" />
					</div>
				</div>

				<div class="col-lg-4">
					<a class="navbar-brand" href="">
						<h1>경민효캠핑</h1>
						<h4>경기도 의정부시 서부로 546</h4>
					</a>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<section class="testimonials bg-light">
		<div class="container">
			<div class="row">
				<div class="col-lg-4">
					<div>
						<img src="resources/assets/img/defaultImage.png"
							width="400" height="400" alt="..."
							style="border: 5px solid #000000" />
					</div>
				</div>

				<div class="col-lg-4">
					<a class="navbar-brand" href="">
						<h1>경민예캠핑</h1>
						<h4>경기도 의정부시 서부로 547</h4>
					</a>
				</div>
			</div>
		</div>
	</section>
	<hr>
	<div class="pagenation">
		<a href="#"> < </a> <a href="#">1</a> <a href="#">2</a> <a href="#">3</a>
		<a href="#">4</a> <a href="#">5</a> <a href="#">6</a> <a href="#">7</a>
		<a href="#"> > </a>
	</div>
	<!-- Footer-->
	<br>
	<%@include file = "footer.jsp" %>
	<!-- Bootstrap core JS-->
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
	<!-- Core theme JS-->
	<script src="js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
</body>
</html>
