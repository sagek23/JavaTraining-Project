<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function(){
		var msg = $("#msg").val();
		if(msg == "ok"){
			alert("탈퇴되었습니다.");
			location.href="main";
		}
		else{
			alert("입력하신 정보를 확인해주세요");
			location.href="main";
		}
	});
</script>
<title></title>
</head>
<body>
<input type="hidden" id="msg">${msg }
</body>
</html>