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
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

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
    <style type="text/css">
    .container {
    	margin-top: 30px;
    	text-align: center;
    }
    </style>
    </head>
    <body>
    	<div class="container">
        <input type="hidden" id="noticenum" value="${i.qnanum}">
        <form action="notice_delete" method="post">
            <div class="form-group">
                <label>글번호</label>
                <p>${i.qnanum}</p>
                
            </div>
            <div class="form-group">
                <label>제목</label>
                <p>${i.qna_title}</p>
            </div>
            <div class="form-group">
                <label>작성날짜</label>
                <p>${i.regist_date}</p>
            </div>
            <div class="form-group">
                <label>내용</label>
                <p>${i.regist_date}</p>
                </div>
                <button type="submit" class="btn btn-primary" ><a href="inquiry">목록</a></button>
    	</form>
            </div>
</body>
</html>