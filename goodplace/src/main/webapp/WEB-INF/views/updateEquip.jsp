<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update User</title>
<script>
	var result = ${result};
	function updateResult() {
		if (1 == result) {
			alert("수정되었습니다");
			opener.location.href = "/ex/quiplist";
			close();
		} else {
			alert("수정에 실패했습니다");

			opener.location.reload();
			close();
		}
	}
</script>
</head>
<body onload="updateResult()">
</body>
</html>