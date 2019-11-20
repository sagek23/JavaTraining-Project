<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>비밀번호찾기</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
$(function(){
	$.ajax({url:"/mail.go", successs:function(r){
		alert(r);
		var oknum = $("#oknum").text();
		if(r != oknum){
			alert("입력하신 인증번호를 확인해주세요!");
			return false;
		}
		else{
			$.ajax({url:"/findpwd.go", data:data})
		}
	}});
});
</script>
</head>
<body>
	<div class="sub">
		<h2>비밀번호 찾기</h2>
		<h4>입력하신 메일로 인증번호를 전송하였습니다.</h4>
		<h4>인증번호를 입력해주세요.</h4>
	</div>
	<div class="content">
		<input type="hidden" id="email" value="${email }">
		인증번호 : <input type="text" id="oknum">
		<input type="button" id="okbtn" value="확인">
	</div>
</body>
</html>