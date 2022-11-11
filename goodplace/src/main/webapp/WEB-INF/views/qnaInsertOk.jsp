<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function insertOk() {
		alert("질문이 등록되었습니다");
		opener.window.location.href = "/ex/question2";
		
		close();
	}
</script>
</head>
<body onload="insertOk()">
</body>
</html>