<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<title>Document</title>
<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

<!-- Slick -->
<link type="text/css" rel="stylesheet" href="css/slick.css" />
<link type="text/css" rel="stylesheet" href="css/slick-theme.css" />

<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">

<!-- Custom stlylesheet -->
<link type="text/css" rel="stylesheet" href="css/style.css" />
<body>
<div class="container">

       	  <form method="POST" id=notice_update>	
          <div class="form-group">
          <%-- <input type="hidden" name="noticenum" class="form-control" value="${n.noticenum}"> --%>
            <label>제목</label>
            <input type="text" name="notice_name" class="form-control" value="${n.notice_name}">
          </div>
          <div class="form-group">
            <label>공지분류</label>
            <input type="text" name="notice_ca" class="form-control" value="${n.notice_ca}">
          </div>
          <div class="form-group">
            <label>내용</label>
            <textarea name="notice_con" class="form-control" rows="15">${n.notice_con}</textarea>
          </div>
          
          <button type="submit" class="btn btn-default pull-right">작성</button>
        </form>
    </div>



</body>
</html>