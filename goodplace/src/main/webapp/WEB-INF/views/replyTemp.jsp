<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Page</title>
<script>
	var q_id = ${q_id};

	function sendValue() {
		var url = "/ex/updateQna?q_id=" + q_id;
		opener.window.location = url;

		close();
	}
</script>
</head>
<body onload="sendValue()">
</body>
</html>