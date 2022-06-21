<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Page</title>
<script>
	var u_id = '${u_id}';
	var u_pw = '${u_pw}';
	var u_name = '${u_name}';
	var u_email = '${u_email}';
	var u_address = '${u_address}';
	var u_phone = '${u_phone}';

	function sendValue() {
		var url = "/ex/updateUser?u_id=" + u_id + "&u_pw=" + u_pw + "&u_name="
				+ u_name + "&u_email=" + u_email + "&u_address=" + u_address
				+ "&u_phone=" + u_phone;
		opener.window.location = url;

		close();
	}
</script>
</head>
<body onload="sendValue()">
</body>
</html>