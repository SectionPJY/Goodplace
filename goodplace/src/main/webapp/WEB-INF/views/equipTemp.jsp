<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Temp Page</title>
<script>
	var p_id = ${p_id };
	
	function sendValue() {
		var url = "/ex/equidetails?p_id=" + p_id;		
		opener.window.location = url;
		
		close();
	}
</script>
</head>
<body onload="sendValue()">
</body>
</html>