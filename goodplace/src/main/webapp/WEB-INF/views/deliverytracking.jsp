<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>결제페이지</title>
<link href="resources/css/deliverytracking.css" rel="stylesheet" />
<link href="resources/css/styles.css?after" rel="stylesheet" />
</head>
<body>
		<%@include file = "header.jsp" %>
	<hr>
	<br>
	<div class="dHwqA-d">
		<div class="jXzews">배송조회</div>
		<div class="hmIkOp">
			<div class="dFchUs">11/15(월) 도착 완료</div>
			<div class="goGxol">고객님이 주문하신 상품이 배송완료 되었습니다.</div>
		</div>
			<table class="UEwLx">
				<tbody>
					<tr>
						<td class="isxZGj"><table class="cpMUMw">
								<tbody>
									<tr>
										<td class="gauflz">로켓배송</td>
									</tr>
									<tr>
										<td class="llqUPX">송장번호</td>
										<td class="bfQGhI">10225498034555</td>
									</tr>
									<tr>
										<td colspan="2" class="llqUPX"><span class="jKqGhk"><svg
													xmlns="http://www.w3.org/2000/svg" width="11" height="12"
													viewBox="0 0 11 12">
											<g fill="none" fill-rule="evenodd">
											<path d="M0 0h12v12H0z"></path>
											<path fill="#333" fill-rule="nonzero"
														d="M1.38 1.245l-.635.635L2.5 3.635V10.5c0 .55.45 1 1 1h5c.51 0 .925-.385.99-.875l.86.86.635-.635L1.38 1.245zM3.5 9.5V4.635L8.365 9.5H3.5zm5-7v4.585l1 1V1.5c0-.55-.45-1-1-1h-5c-.425 0-.79.27-.935.65l1.35 1.35H8.5z"></path></g></svg></span>배송업무
											중 연락을 받을 수 없습니다.</td>
									</tr>
								</tbody>
							</table></td>
						<td class="dDatIa"><table class="cpMUMw">
								<tbody>
									<tr>
										<td class="llqUPX">받는사람</td>
										<td class="bfQGhI">서현식</td>
									</tr>
									<tr>
										<td class="llqUPX">받는주소</td>
										<td class="bfQGhI">서울특별시 도봉구 도봉동 609-23 낙원빌라 301호</td>
										<td class="bfQGhI kVGkVb"></td>
									</tr>
									<tr>
										<td class="llqUPX">배송요청사항</td>
										<td class="bfQGhI">문 앞</td>
										<td class="bfQGhI kVGkVb"></td>
									</tr>
									<tr>
										<td class="llqUPX">상품수령방법</td>
										<td class="bfQGhI kaQmPo">문앞 전달</td>
									</tr>
								</tbody>
							</table></td>
					</tr>
				</tbody>
			</table>
		<div class="hVQCUg">
			<table class="eNIROz">
				<thead>
					<tr>
						<th>시간</th>
						<th>현재위치</th>
						<th>배송상태</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>2021.11.14 20:43</td>
						<td>서울HUB</td>
						<td>집하</td>
					</tr>
					<tr>
						<td>2021.11.14 20:43</td>
						<td>서울HUB</td>
						<td>센터상차</td>
					</tr>
					<tr>
						<td>2021.11.14 23:05</td>
						<td>안성5 HUB</td>
						<td>센터도착</td>
					</tr>
					<tr>
						<td>2021.11.14 23:07</td>
						<td>안성5 HUB</td>
						<td>센터상차</td>
					</tr>
					<tr>
						<td>2021.11.15 00:21</td>
						<td>안성5 HUB</td>
						<td>센터도착</td>
					</tr>
					<tr>
						<td>2021.11.15 00:21</td>
						<td>안성5 HUB</td>
						<td>소터분류</td>
					</tr>
					<tr>
						<td>2021.11.15 01:56</td>
						<td>안성5 HUB</td>
						<td>센터상차</td>
					</tr>
					<tr>
						<td>2021.11.15 04:06</td>
						<td>일산3XHUB</td>
						<td>센터도착</td>
					</tr>
					<tr>
						<td>2021.11.15 04:32</td>
						<td>일산5 ( 경기 고양시 )</td>
						<td>캠프도착</td>
					</tr>
					<tr>
						<td>2021.11.15 09:27</td>
						<td>일산5 ( 경기 고양시 )</td>
						<td>배송출발</td>
					</tr>
					<tr>
						<td>2021.11.15 13:33</td>
						<td>일산5 ( 경기 고양시 )</td>
						<td>배송완료</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<br>
	<%@include file = "footer.jsp" %>
</body>
</html>