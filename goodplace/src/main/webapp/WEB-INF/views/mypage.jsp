
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>마이페이지</title>
<!-- Classes Bootstrao-->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
<!-- Bibliothèque d'icones-->
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.7.2/css/all.css"
	integrity="sha384-fnmOCqbTlWIlj8LyTjo7mOUStjsKC4pOpQbqyi7RrhN7udi9RwhKkMHpvLbHG9Sr"
	crossorigin="anonymous">
<!-- Material Design Bootstrap -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdbootstrap/4.7.4/css/mdb.min.css"
	rel="stylesheet">
<!-- Style principal-->
<link rel="stylesheet" type="text/css" href="resources/css/mypage.css">
<!-- Style principal en LESS -->

</head>

<body>
	<%@include file="header.jsp"%>
	<br>
	<br>
	<br>
	<section class="user-page section-padding">
		<div class="container">
			<div class="row align-items-stretch">
				<div class="col-lg-4 col-md-5 col-xs-12">
					<div class="user-profile-box">
						<div class="header clearfix d-flex flex-column align-items-center">
							<img id="g-profile-img" class="img-fuid mb-3" width="100"
								height="100" alt="avatar"
								src="resources/assets/img/user-interface.png">
							<h2>사용자 이름</h2>
						</div>
					</div>
					<!-- Détail-->
					<!-- User profile box-->
				</div>
				<div class="col-lg-8 col-md-7 col-xs-12">
					<div class="dashborad-box">
						<div>
							<c:forEach items="${userInfo}" var="UserDTO">
								<h4 class="title" style="margin-right: 475px;">${UserDTO.u_name}</h4>
								<hr>
								<input type="text" class="floatleft"
									placeholder=${UserDTO.u_email } name="searchText"
									maxlength="100"
									style="float: left; margin-right: 400px; width: 200px;">
								<button>수정</button>
								<hr>
								<input type="text" placeholder="${UserDTO.u_address }"
									name="searchText" maxlength="100"
									style="float: left; margin-right: 400px; width: 200px;">
								<button>수정</button>
								<hr>
								<input type="password" placeholder="12*********"
									name="searchText" maxlength="100"
									style="float: left; margin-right: 400px; width: 200px;">
								<button>수정</button>

								<hr>
								<input type="text" placeholder=${UserDTO.u_phone }
									name="searchText" maxlength="100"
									style="float: left; margin-right: 400px; width: 200px;">
								<button>수정</button>
							</c:forEach>
						</div>
					</div>
					<!-- dashbox -->
					<div class="dashborad-box">
						<h4 class="title">예약현황</h4>
						<h4>&nbsp;회원&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;장소&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;예약날짜&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
							인원</h4>
						<hr>
						<h5 style="float: left; margin-right: 100px;">관리자 &nbsp;경민대학교
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;22-04-03&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;4</h5>
						<button>예약취소</button>
					</div>

					<div class="dashborad-box">
						<h4 class="title">주문 배송 현황</h4>
						<table id="datatablesSimple">
							<thead>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
								</tr>
							</thead>
							<tfoot>
								<tr>
									<th>Name</th>
									<th>Position</th>
									<th>Office</th>
									<th>Age</th>
									<th>Start date</th>
									<th>Salary</th>
								</tr>
							</tfoot>
							<tbody>
								<tr>
									<td>Tiger Nixon</td>
									<td>System Architect</td>
									<td>Edinburgh</td>
									<td>61</td>
									<td>2011/04/25</td>
									<td>$320,800</td>
								</tr>
								<tr>
									<td>Garrett Winters</td>
									<td>Accountant</td>
									<td>Tokyo</td>
									<td>63</td>
									<td>2011/07/25</td>
									<td>$170,750</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="dashborad-box">
						<h4 class="title">나의 문의 사항</h4>
						<table>
							<thead>
								<tr>
									<th>질문제목</th>
									<th>질문내용</th>
									<th>답변여부</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${dtos}" var="QnAList">
									<tr>
										<td>${QnAList.q_title }</td>
										<td>${QnAList.q_content }</td>
										<td>${QnAList.q_ans }</td>
										<td><button id="btnQna"
												onclick="linkTest('${QnAList.q_id}')">수정</button></td>
										<td><button onclick="deleteQuestion('${QnAList.q_id}')">삭제</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
						<script>
							function deleteQuestion(q_id) {
								var width = 500;
								var height = 400;
				                var positionX = (window.screen.width / 2) - (width / 2);
				                var positionY = (window.screen.height / 2) - (height / 2);
				                
								if(window.confirm("삭제하시겠습니까?")) {
									window.open(
											"deleteQuestion?q_id=" + q_id, 	// 링크
											"qnaReply",	// 새 창 아이디
											"width=" + width + 
											", height=" + height + 
											", top=" + positionY +
											", left=" + positionX);
									return false;
								}
							}
						</script>
					</div>
				</div>
				<!-- Dbox -->
			</div>
		</div>
	</section>
	<br>
	<%@include file="footer.jsp"%>
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
		integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
		integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.js"></script>
	<script src="resources/assets/demo/chart-area-demo.js"></script>
	<script src="resources/assets/demo/chart-bar-demo.js"></script>
	<script src="resources/assets/demo/chart-reservation-demo.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/simple-datatables@latest"
		crossorigin="anonymous"></script>
</body>

</html>