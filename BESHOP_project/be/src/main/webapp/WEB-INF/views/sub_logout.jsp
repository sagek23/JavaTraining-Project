<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"/>
<link href="css/subout.css" rel='stylesheet' type='text/css' />
<meta charset="UTF-8">
<title>Insert title here</title>

</head>

<body>
  
<div class="main">
    <div class="logout">
        <img src="img/new-product.png" class="proicon"/>
        <div class="subMent">
        <h3>새로운 상품을 놓치지 마세요.</h3>
        즐겨찾는 스토어의 업데이트를 확인하려면 로그인하세요.
        </div>
        <button class="btnLogin" onclick="window.open('loginPg2.html')"><img src="img/dpro.png" class="dicon"/>로그인</button>   
    </div>
</div>
</body>
</html>
