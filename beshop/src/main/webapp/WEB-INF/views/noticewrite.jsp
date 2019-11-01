<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Title </title>
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

      <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<title>게시글 작성</title>
</head>
<body>
   
    <div class="container" style="padding : 30px;">
     <h3>공지사항 작성</h3>
        <form method="POST" id="noticewrite">
         <%--  <div class="form-group">
            <label>아이디</label>
            <p>${n.notice_name}</p>
          </div> --%>
          <!-- <div class="form-group">
            <label>글번호</label>
            <input type="text" name="noticedate" class="form-control"/>
          </div> -->
          <div class="form-group">
            <label>제목</label>
            <input type="text" name="notice_name" class="form-control">
          </div>
          <div class="form-group">
            <label>공지분류</label>
            <input type="text" name="notice_ca" class="form-control" value="서버점검">
          </div>
          <div class="form-group">
            <label>내용</label>
            <textarea name="notice_con" class="form-control" rows="15"></textarea>
          </div>
          <!-- <div class="form-group">
            <label>날짜</label>
            <input type="text" name="noticedate" class="form-control" />
          </div> -->
          <button type="submit" class="btn btn-default pull-right">작성</button>
        </form>
        
    </div>
    <!-- jQuery Plugins -->
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
        <script src="assets/js/util.js"></script>
        <!-- util functions included in the CodyHouse framework -->
        <script src="assets/js/main.js"></script>
</body>
</html>