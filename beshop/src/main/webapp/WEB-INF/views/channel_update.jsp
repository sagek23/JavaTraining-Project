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
      
		<script type="text/javascript">

		
		</script>
        	
        
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
               
                border-bottom: 2px solid black;
            }
            .hr_tag {
                margin-top: 15px;
            }
        
        </style>
    </head>
	<body>
     <div class="inquiry_Write_name">
       <h3>채널 정보 수정</h3>
   </div>
	<form class="inquiry_write" action="channel_update" method="post" enctype="multipart/form-data">
	<label for="ch_img" class="col-sm-2 control-label">현재 채널 이미지</label>
		<img src="img/${ch.ch_img }" style="width:200px; heigth:200px">
		<input type="file" name="image">
	<div class="form-group">
	</div>
	<div class="form-group">
		<label for="ch_name" class="col-sm-2 control-label">채널이름</label>
		<div class="col-sm-10">
			<input type="text" class="form-control" id = "ch_name"  name="ch_name"  value="${ch.ch_name }">
		</div>
	</div>
	
	
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="Send" class="btn btn-primary">
		</div>
	</div>
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			
		</div>
	</div>
</form>
    </body>
</html>