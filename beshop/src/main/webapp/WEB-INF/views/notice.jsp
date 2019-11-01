<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Title </title>
     <!-- Google font -->
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

      <link type="text/css" rel="stylesheet" href="css/style.css" />
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
     <script type="text/javascript">
		
     
     </script>
     
     <style type="text/css">
     .title{margin: 20px;}
     </style>
</head>

<body>
    <!-- container -->
    <div class="container">
        <h3 class="title">공지사항</h3>
        
        <table class="table table-hover">
           <thead>
            <tr>
                <th>글번호</th>
                <th>제목</th>
                <th>공지내용</th>
                <th>공지구분</th>
                <th>등록일</th>
            </tr>
            </thead>
            <tbody>
           	<c:forEach var="n" items="${nlist}">
            	<tr>
            	<td>${n.noticenum}</td>
             	<td><a href="notice_detail?noticenum=${n.noticenum}">${n.notice_name}</a></td> 
            	<td>${n.notice_con}</td>
            	<td>${n.notice_ca}</td>
            	<td>${n.noticedate}</td>
            	
            	</tr>
            </c:forEach>
            </tbody>
        </table>
        <hr/>
        <a href="noticewrite" class="btn btn-default pull-right">글쓰기</a>
        <div class="text-center">
             <ul class="pagination">
                <!-- <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li> -->
                <li>${pageStr}</li>
            </ul>
            
        </div>
    </div>
    <!-- /container -->
</body>

</html>