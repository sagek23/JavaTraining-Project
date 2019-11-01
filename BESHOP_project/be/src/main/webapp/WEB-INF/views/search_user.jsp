<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/search_user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
/* 	$(function() {
		$(".btn_iid").click(function(){
			var data = $("#f").serialize();
			alert(data);
			$.ajax({
				url:"/search_id",
				type:GET,
				data:data,
				success:function(r){
				alert(r);
		}});
		});
	}); */
</script>
	<title>아이디/비밀번호 찾기</title>
</head>
<body>
    <h1 id="logo"><a href="main.jsp">BESHOP</a></h1>
    <div id="search_id">
       <h2>아이디 찾기</h2>
        <form action="search_id">
            <p>이름</p><span><input type="text" name="uname" id="uname"></span><br>
            <p>이메일</p>
            <span><input type="text" name="email" id="email" placeholder="  이메일을 입력해주세요."></span> 
            <br>
            <input type="submit" value="아이디 찾기" id="btn_insert" class="btn_id">
        </form>
    </div>
     <div id="search_pwd">
       <h2>비밀번호 찾기</h2>
        <form action="/search_pwd" method="post">
            <p>이름</p><span><input type="text" name="beuid" id="uname"></span><br>
            <p>아이디</p>
            <span><input type="email" name="beuid" id="email" placeholder="  이메일을 입력해주세요."></span> 
            <br>
            <p>이메일</p>
            <span><input type="email" name="email" id="email" placeholder="  이메일을 입력해주세요."></span> 
            <br>
            <input type="submit" value="비밀번호 찾기" id="btn_insert">
        </form>
    </div>
</body>
</html>
