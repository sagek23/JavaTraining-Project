<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js
    "></script>
    <script type="text/javascript">
    	$(function() {
				$("#notice_delete").click(function() {
					var re = confirm("정말로 삭제하시겠습니까?");
					if(re == true) {
						var noticenum = $("#noticenum").val();
						location.href="notice_delete?noticenum="+noticenum;
					}
				});
		});
    </script>
    <style>
        .container {
            margin-top: 30px;
        }
        .form-group {
            border-bottom: 1px solid black;
        }
    </style>

</head>

<body>
    <div class="container">
        <input type="hidden" id="noticenum" value="${n.noticenum}">
        <form action="notice_delete" method="post">
            <div class="form-group">
                <label>글번호</label>
                <p>${n.noticenum}</p>
                
            </div>
            <div class="form-group">
                <label>제목</label>
                <p>${n.notice_name}</p>
            </div>
            <div class="form-group">
                <label>작성날짜</label>
                <p>${n.noticedate}</p>
            </div>
            <div class="form-group">
                <label>내용</label>
                <p>${n.notice_con}</p>
            </div>
            <button type="submit" class="btn btn-primary notice_update"><a href="notice_update?noticenum=${n.noticenum}">수정</a></button>
            <button type="submit" class="btn btn-primary notice_delete"><a href="#" id="notice_delete">삭제</a></button>
            <button type="submit" class="btn btn-primary" >목록</button>
        </form>
    </div>



</body></html>