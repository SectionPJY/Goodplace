<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
	rel="stylesheet" type="text/css" />


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<nav class="navbar navbar-light  static-top">
	<div class="container" style="z-index: 2">

		<a class="navbar-brand" href="index"> <img
			src="resources/assets/img/GoodplaceLogo.png" width="50" height="50" />
		</a>

		<div class="dropdown">
			<a class="navbar-brand" href="#!">캠핑장</a>
			<div class="dropdown-content" style="width: 200px">
				<a href="namesearch">이름으로 찾기</a> <a href="mapsearch">지역으로 찾기</a>
			</div>
		</div>

		<div class="dropdown">
			<a class="navbar-brand" href="shopcart">쇼핑</a>
			<div class="dropdown-content" style="width: 200px">
				<a href="shopcart">장비 찾기</a> <a href="rentalguide">장비 대여 안내</a>
			</div>
		</div>

		<div class="dropdown">
			<a class="navbar-brand" href="#!">고객센터</a>
			<div class="dropdown-content" style="width: 200px">
				<a href="question">자주있는 질문</a> <a href="question2">질문하기</a> <a
					href="connection">상담원 연결</a>
			</div>
		</div>
		<%
            if (session == null || session.getAttribute("u_id") == null) {
                out.println("<a class='navbar-brand' href='login2'>로그인</a>");
            } else {
                out.println("<div class='dropdown'><a class='navbar-brand' href='#!'><img src='resources/assets/img/user-interface.png' width='50' height='50' /></a> <div class='dropdown-content' style='width: 200px'><a href='mypage'>마이페이지</a> <a href='logout'>로그아웃</a></div></div>");
            }
        %>


	</div>
</nav>