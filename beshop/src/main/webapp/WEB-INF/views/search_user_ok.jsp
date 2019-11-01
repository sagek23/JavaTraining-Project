<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/search_user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#btn_pwd").click(function(){
			location.href="main";		
		});
	});
</script>
	<title>비밀번호 변경 완료</title>
</head>
<body>
    <h1 id="logo"><a href="main">BESHOP</a></h1>
 
     <div id="search_pwd">
       <h2>비밀번호 변경 완료</h2>
        <div class="container" style="text-align:center; padding:30px; border:2px solid gray;">
        	<h3>임시비밀번호가 발급되었습니다.</h3>
        	<h3>변경된 비밀번호로 로그인을 해주세요!</h3>
        </div>
            <input type="button" value="홈페이지로 이동하기" id="btn_pwd">
    </div>
</body>
</html>

