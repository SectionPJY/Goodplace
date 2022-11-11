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
<link href="resources/css/styles.css?after" rel="stylesheet" />
<link href="resources/css/multislide.css" rel="stylesheet">
<link href="resources/css/slider.css?after" rel="stylesheet">
</head>
<body>
	<!-- Navigation-->
		<%@include file = "header.jsp" %>
	<hr>
	<br>
	<br>
	<br>
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
	
	<br>
	<br>
	<br>
	<div class="container">
		<header class="masthead">
			<div class="container position-relative">
				<div class="row justify-content-center">
					<div class="text-center text-white">
						<div class="floatleft">
							<select class="floatleft">
								<option value="0">지역별</option>
								<option value="bbsTitle">서울</option>
								<option value="userID">부산</option>
							</select> <input type="text" class="floatleft"
								placeholder="camping search" name="searchText" maxlength="100">
							<a class="navbar-brand" href="#!">
								<button type="submit" class="btn btn-primary btn-lg disabled">
									<img
										src="https://s3.ap-northeast-2.amazonaws.com/cdn.wecode.co.kr/icon/search.png" />
								</button>
							</a>
						</div>
					</div>
				</div>
			</div>
		</header>
	</div>
	<!-- Testimonials-->
	<div style="text-align:center" > <h1>포토존</h1></div>
   <br>
  <div class="scene">
    <label class="card-wrap">
        <input type="checkbox" class="flipcard">
        <div class="card">
            <div class="front card-face">
                <img src="resources/assets/img/fire.jpg" alt="" class="card-photo">
            </div>
            <div class="back card-face">
                <img src="resources/assets/img/marshmallow.jpg" alt="" class="card-photo">
            </div>
        </div>
    </label>
    <label class="card-wrap">
        <input type="checkbox" class="flipcard">
        <div class="card">
            <div class="front card-face">
                <img src="resources/assets/img/camping.jpg"alt="" class="card-photo"> 
            </div>
            <div class="back card-face">
                   <img src="resources/assets/img/camping3.jpg" alt="" class="card-photo">
            </div>
        </div>
    </label>
    <label class="card-wrap">
        <input type="checkbox" class="flipcard">
        <div class="card">
            <div class="front card-face">
                <img src="resources/assets/img/meal.jpg" alt="" class="card-photo">
            </div>
            <div class="back card-face">
   <img src="resources/assets/img/barbecue2.jpg" alt="" class="card-photo">
            </div>
        </div>
    </label>
    <label class="card-wrap">
        <input type="checkbox" class="flipcard">
        <div class="card">
            <div class="front card-face">
                <img src="resources/assets/img/camping2.jpg" alt="" class="card-photo">
            </div>
            <div class="back card-face">
   <img src="resources/assets/img/tent.jpg" alt="" class="card-photo">
            </div>
        </div>
    </label>
    
</div>
	<!-- Footer-->
	<%@include file = "footer.jsp" %>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.startbootstrap.com/sb-forms-latest.js"></script>
	<!-- Core theme JS-->
	<script src="resources/js/scripts.js"></script>
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->
	<!-- * *                               SB Forms JS                               * *-->
	<!-- * * Activate your form at https://startbootstrap.com/solution/contact-forms * *-->
	<!-- * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * *-->

</body>
</html>
	