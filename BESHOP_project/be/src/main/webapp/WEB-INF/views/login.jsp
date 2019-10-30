<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/loginPop2.css" rel='stylesheet' type='text/css' />
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <div class="loginPg">
      <div class="logoBox"><img src="img/beShop3.png"  class="logo"/></div>
       <div class="login">
        <input type="text" name="id" class="idpwd" placeholder="아이디"/><br>
        <input type="password" name="pwd" class="idpwd" placeholder="패스워드"><br>
        <button class="btnLogin">로그인</button><br>
        <div class="snsLogin">
        <button class="kakaoLogin"><img src="img/kakao.png" class="kakao"/>로 로그인</button><br>
        <button class="naverLogin"><img src="img/naver.png" class="naver"/>로 로그인</button>
        </div>
        </div>
         <div class="loginPg2">
        <a href="#" class="login_find">아이디찾기</a>&nbsp;&nbsp;<span class="bar" >|</span>&nbsp;&nbsp;
        <a href="#" class="login_find">비밀번호찾기</a>&nbsp;&nbsp;<span class="bar">|</span>&nbsp;&nbsp;<a href="#" class="login_find">회원가입</a>
        </div>
    </div>
</body>
</html>