<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script type="text/javascript">
	Kakao.init('3fc37ff4b17fd3a8918da187f484255f');
	function kakaologout(){
		Kakao.Auth.logout(function(){
			setTimeout(function(){
				location.href='/'
				},1000);
			});
		}
	
</script>
</head>
<body>
	<button onclick="kakaologout()">카카오로그아웃</button>
</body>
</html>