<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

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
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
        <style>
            .custom-control, custom-radio {
                text-align: left;
                margin: auto;
                margin-left: 30px;
                margin-top: 10px;
                word-spacing: 10px;
            }
            .form-horizontal {
                margin-top: 30px;
                
            }
            .inquiry_Write_name{
                margin-left: 80px;
                border-bottom: 2px solid black;
            }
            .hr_tag {
                margin-top: 15px;
            }
        
        </style>
    </head>
	<body>
   <div class="container">
      
    <form class="form-horizontal" role="form" method="post" action="index.php">
     <div class="inquiry_Write_name">
       <h3>1:1문의 쓰기</h3>
   </div>
	<div class="form-group hr_tag">
		<label for="name" class="col-sm-2 control-label">구매관련문의</label>
		<div class="row">
				    
					<div class="row">
				    
					<div class="custom-control custom-radio">
						<input type="radio" name="jb-radio" id="jb-radio-1" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-1">배송문의</label>
					
						<input type="radio" name="jb-radio" id="jb-radio-2" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-2">주문문의</label>										
						<input type="radio" name="jb-radio" id="jb-radio-3" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-3">취소문의</label>
						
						<input type="radio" name="jb-radio" id="jb-radio-4" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-4">반품문의</label>
						
						<input type="radio" name="jb-radio" id="jb-radio-5" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-5">교환문의</label>
						
						<input type="radio" name="jb-radio" id="jb-radio-6" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-6">환불문의</label>
						
						<input type="radio" name="jb-radio" id="jb-radio-7" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-7">사운품문의</label>
						
						<input type="radio" name="jb-radio" id="jb-radio-8" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-8">입금문의</label>
					</div>
					
				</div>
					
				</div>
				
	</div>
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">일반상담문의</label>
		<div class="row">
				    
					<div class="custom-control custom-radio">
						<input type="radio" name="jb-radio" id="jb-radio-9" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-9">회원정보문의</label>
					
						<input type="radio" name="jb-radio" id="jb-radio-10" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-10">회원제도문의</label>										
						<input type="radio" name="jb-radio" id="jb-radio-11" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-11">결제방법문의</label>
						
						<input type="radio" name="jb-radio" id="jb-radio-12" class="custom-control-input">
						<label class="custom-control-label" for="jb-radio-12">상품문의</label>
				
					</div>
					
				</div>
	</div>
	
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">성명</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id="name" name="name" placeholder="First & Last Name" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">아이디</label>
		<div class="col-sm-10">
			<input type="email" class="form-control" id="email" name="email" placeholder="godkkoo" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">이메일</label>
		<div class="col-sm-10">
			<input type="email" class="form-control" id="email" name="email" placeholder="example@domain.com" value="">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">제목</label>
		<div class="col-sm-10">
			<input type="email" class="form-control" id="email" name="email" placeholder="제목을 입력하세요." value="">
		</div>
	</div>
	<div class="form-group">
		<label for="message" class="col-sm-2 control-label">내용</label>
		<div class="col-sm-10">
			<textarea class="form-control" rows="4" name="message"  placeholder="내용을 입력하세요" ></textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<! Will be used to display an alert to the user>
		</div>
	</div>
</form>
        </div>
    </body>
</html>