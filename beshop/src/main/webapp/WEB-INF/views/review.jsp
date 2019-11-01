<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
           
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
        
 		<!-- Google font -->
 		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">

 		<!-- Bootstrap -->
 		<link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>

 		<!-- Slick -->
 		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
 		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

 		<!-- nouislider -->
 		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

 		<!-- Font Awesome Icon -->
 		<link rel="stylesheet" href="css/font-awesome.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="css/style.css"/>

 		<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
 		<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
 		<!--[if lt IE 9]>
 		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
 		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
 		<![endif]-->
       <style>
        .container{
    margin-top: 30px;
    
}

.tab-pane, hr{
    margin-top: 100px;
    text-align: center;
    
}
.hr {
    margin-top: 100px;
    border: 0.3px solid black;
}
.mile {
    text-align: right;
    margin-top: 15px;
}
           
.nav-pills>li.active>a, .nav-pills>li.active>a:focus, .nav-pills>li.active>a:hover{
    background-color: #444;
}
    
</style>
    </head>
	<body>
		<div class="container"><h3>리뷰</h3></div>
<div id="exTab1" class="container">	
<ul  class="nav nav-pills dd">
			<li class="active dd">
        <a href="#1a" class="btn1" data-toggle="tab">작성가능한리뷰(0)</a>
			</li>
			<li><a href="#2a" data-toggle="tab">내리뷰(0)</a>
			</li>
			<div class="mile">
			    50자 이상 포토리뷰 작성 시 최대1,500 마일리지 적립
			</div>
		</ul>

			<div class="tab-content clearfix">
			  <div class="tab-pane active" id="1a">
          <h3>아직 리뷰를 작성할 수 있는 주문내역이 없습니다.</h3>
				</div>
				<div class="tab-pane" id="2a">
          <h3>작성한 리뷰가 없습니다.</h3>
				</div>
           <hr class="hr">
			</div>
  </div>
	</body>
</html>
