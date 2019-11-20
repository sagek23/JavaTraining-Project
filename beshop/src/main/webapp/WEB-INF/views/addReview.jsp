<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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
<title>Insert title here</title>
 <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
		<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
		<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
var id = "<%=session.getAttribute("beuid") %>" 
$("#beuidRev").append(id);
$(function(){
	//alert("ok");
	$.getJSON("orderedList", function(data){
		//console.log(data);
		$.each(data, function(idx, item){
			var pnum = item.pnum;
			var beuid = item.beuid;
			var product = item.oname;
			//alert(pnum);
			//alert(beuid);
			$("#oname").append(product);
			$("#pnum").val(item.pnum);
			$("#beuidRev").val(item.beuid);
		});
		
	});
	
});
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
                margin-left: 80px;
                border-bottom: 2px solid black;
            }
            .hr_tag {
                margin-top: 15px;
            }
        	.review{
        		margin: 0 auto;
        		margin-top: 50px;
        		width: 1000px;
        	}
        	.container{
        		margin: 0 auto;
        	}
        	
        </style>

</head>
<body>
<!--  
<form action="/addReview" method="POST">
	<input class="input" type="text" id="beuidRev" name="beuid" readonly="readonly">
	<input type="hidden" name="pnum" id="pnum">
	<input type="text" name="retitle" id="retitle">
	<textarea class="input" placeholder="내용" name="re_con"></textarea>
	<input type="submit" class="primary-btn" value="등록">
</form>
-->

<div class="container">
      
    <form class="form-horizontal" role="form" method="post" action="/addReview">
     <div class="inquiry_Write_name">
       <h3>리뷰작성</h3>
   </div>
	<div class="review">
	<div class="form-group">
		<label for="name" class="col-sm-2 control-label">상품명</label>
		<div class="col-sm-10">
			<span id="oname"></span><br>
		</div>
	</div>
	<div class="form-group">
		<label for="id" class="col-sm-2 control-label">아이디</label>
		<div class="col-sm-10">
			<input class="input" class="form-control" type="text" id="beuidRev" name="beuid" readonly="readonly">
			<input type="hidden" name="pnum" id="pnum">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">제목</label>
		<div class="col-sm-10">
			<input type="text"  class="form-control" name="retitle" id="retitle">
		</div>
	</div>
	<div class="form-group">
		<label for="email" class="col-sm-2 control-label">내용</label>
		<div class="col-sm-10">
		<textarea class="input" class="form-control" placeholder="내용" name="re_con"></textarea>
		</div>
	</div>
	
	<div class="form-group">
		<div class="col-sm-10 col-sm-offset-2">
			<input id="submit" name="submit" type="submit" value="등록" class="btn btn-primary">
		</div>
	</div>
	</div>
	</form>
   </div>
</body>
</html>