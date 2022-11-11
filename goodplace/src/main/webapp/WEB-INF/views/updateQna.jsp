<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Qna Complete</title>
<script>
	function closeWindow() {
		alert("작성이 완료되었습니다");
		opener.location.reload();
		close();
	}
</script>
</head>
<body onload="closeWindow()">
</body>
</html>