<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
                <th>등록일</th>
                <th>조회수</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td>1</td>
                <td>안녕하세용용용 반갑습니다용</td>
                <td>2019-10-16</td>
                <td>3</td>
            </tr>
            <tr>
                <td>2</td>
                <td>테스트2</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>3</td>
                <td>테스트3</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>4</td>
                <td>테스트4</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>5</td>
                <td>테스트5</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>6</td>
                <td>테스트6</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>7</td>
                <td>테스트7</td>
                <td></td>
                <td></td>
            </tr>
            <tr>
                <td>8</td>
                <td>테스트8</td>
                <td></td>
                <td></td>
            </tr>
            </tbody>
        </table>
        <hr/>
        <a href="noticewrite.jsp" class="btn btn-default pull-right">글쓰기</a>
        <div class="text-center">
            <ul class="pagination">
                <li><a href="#">1</a></li>
                <li><a href="#">2</a></li>
                <li><a href="#">3</a></li>
                <li><a href="#">4</a></li>
                <li><a href="#">5</a></li>
            </ul>
            
        </div>
    </div>
    <!-- /container -->
</body>

</html>