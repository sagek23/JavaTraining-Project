<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
	$(function(){
		
		$("#joinBtn").click(function(){
			var data = $("#pwForm").serialize();
			alert(data)
			if($("#new_pwd").val() !== $("#new_pwd2").val()){
				alert("비밀번호가 다릅니다.");
				$("#new_pwd").val("").focus();
				$("#new_pwd2").val("");
				return false;
			}else if ($("#new_pwd").val().length < 8) {
				alert("비밀번호는 8자 이상으로 설정해야 합니다.");
				$("#new_pwd").val("").focus();
				return false;
			}else if($.trim($("#new_pwd").val()) !== $("#new_pwd").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else{
				$.ajax({url:"user_update", 
					type:"POST", 
					data:data, 
					success:function(r){
						if(r == 1){
							alert("회원 정보 수정 완료");
						}else{
							alert("입력하신 정보를 확인해주세요");
						}
					}
					});
				}			
		});
		function alertOk() {
			alert("회원 정보 수정 완료");
		}
		function alertError() {
			alert("회원 정보 수정 실패");	
		}
	});
</script>
<style>
	#joinBtn{transition: all 0.5s;}
</style>
<title>회원정보수정</title>
</head>
<body>
<h3 style="padding:10px;">회원정보수정</h3>
	<div class="w3-content w3-container w3-margin-top">
		<div class="w3-container w3-card-4">
			<div>
				<br />
				<form id="pwForm" method="post">	
				<p>
					<input type="text" name="beuid" value="${ beuid }">
					</p>
					<p>
						<label>기존 비밀번호</label>
						<input class="w3-input" id="pwd" name="pwd" type="password" required>
					</p>
					<p>
						<label>새 비밀번호</label> 
						<input class="w3-input" id="new_pwd" name="new_pwd" type="password" required>
					</p>
					<p>
						<label>새 비밀번호 확인</label>
						<input class="w3-input" type="password" id="new_pwd2" type="password" required>
					</p>
					<p class="w3-center">
						<button type="submit" id="joinBtn" class="w3-button w3-block w3-black w3-ripple w3-margin-top w3-round">비밀번호 변경</button>
					</p>
				</form>
			</div>
		</div>
	</div>
</body>
</html>