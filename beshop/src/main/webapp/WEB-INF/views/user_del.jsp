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
		
		$("#pwForm").submit(function(){
			if($("#old_pw").val() !== $("#pw2").val()){
				alert("비밀번호가 다릅니다.");
				$("#old_pw").val("").focus();
				$("#pw2").val("");
				return false;
			}else if($.trim($("#old_pw").val()) !== $("#old_pw").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else{
				var result = confirm("탈퇴하시겠습니까?");
				if(result){
					return true;
				}
				else{
					return false;
				}
			}
		})
	})
</script>
<style>
	#joinBtn{transition: all 0.5s;}
</style>
<title>회원정보수정</title>
</head>
<body>
<h3 style="padding:10px;">회원탈퇴</h3>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div>
	
				<br />
				<form id="pwForm" action="user_del" method="post">	
					<input type="text" name="beuid" value="${sessionScope.beuid }">
					<p>
						<label>기존 비밀번호</label>
						<input class="w3-input" id="old_pw" name="upw" type="password" required>
					</p>
					<p>
						<label>비밀번호 확인</label>
						<input class="w3-input" type="password" id="pw2" type="password" required>
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round delbtn">비밀번호 변경</button>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>