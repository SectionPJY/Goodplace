<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Page</title>
<script>
	var u_id = "${u_id }";
	var u_pw = ${u_pw };
	
	console.log(u_id);
	console.log(u_pw);

	function sendValue() {
		var url = "/ex/memberdetails?u_id=" + u_id + "&u_pw=" + u_pw;
		opener.window.location = url;
	
		close();
	}
</script>
</head>
<body onload="sendValue()">
</body>
</html>