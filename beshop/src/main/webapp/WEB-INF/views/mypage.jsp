<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <title>마이페이지</title>
      <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href=".css/bootstrap.css" />
    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">

      <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->
  <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
$(function () {
	$("#order").click(function(){
		$(".includepage").load("orderlist.jsp")
	})
	$("#auction").click(function(){
		$(".includepage").load("auctionlist")
	})
	$("#qna").click(function(){
		$(".includepage").load("qna.jsp")
	})
	$("#review").click(function(){
		$(".includepage").load("review.jsp")
	})
	$("#user_update").click(function(){
		$(".includepage").load("user_update?beuid=goflrhdwn1")
	})
	$("#user_del").click(function(){
		$(".includepage").load("user_del")
	})
	$("#inquiry").click(function(){
		$(".includepage").load("inquiry.jsp")
	})
	$("#channel_update").click(function(){
		$(".includepage").load("channel_update")
	})
});
</script>
    <style>
        .title{
            font-weight: bold;
            font-size: 14px; 
            margin-top: 40px;
            text-align: center;
        }
        .title:first-child{
            margin-top: 0px;
        }
        .info{
            margin-bottom: 50px;
        }
        .name{
            font-size: 35px;
            font-weight: 600;
        }
        .email{
            font-size:15px;
            
        }
        .myContent{
            width: 82%;
            min-height: 600px;
            margin-left: 34px;
            float:left;
        }
        .userinfo{
            width: 100%;            
            height: 110px;
            background-color:#444;
            
        }
        .my_grade{width:45%; padding: 0 15px; height: 100%;float: left;}
        .my_grade p{color: white;}
        .my_grade h2{color: white; text-align: right}
        .my_channel{margin-left: 10px; width:50%; padding: 0 15px; height: 100%; float: left; border-left: 1px solid #999;}
        .my_channel p{color: white;}
        .my_channel h3{color: white; text-align: right; padding-top:8px;}		
		#sidenav a:hover { color: #93ddd3; }
	    #login_form {cursor: pointer;}
		

		.container .sidenav{
		    position: relative;
		    min-height: 200px;
		    text-align: center;
		    float: left;
		    width:15%;
		}
		.container .sidenav_wrap a{
		    display: block;
		    margin: 10px;
		    font-size: 13px;
		}

    </style>
</head>

<body>
   <jsp:include page="header.jsp"></jsp:include>
    <!-- SECTION -->
    <div class="section" style="padding-top: 50px;">
        
        <!-- container -->
        <div class="container" style="width:1400px;">
            <!-- Side navigation -->
            <div class="sidenav">
              <div class="info">
               <p class="name">${sessionScope.uname }님</p>
               <p class="email">${sessionScope.email }</p>
                </div>
                  <div class="sidenav_wrap">
                   <p class="title">나의 쇼핑정보</p>
                    <a href="#" id="order">주문배송조회</a>
                    <a href="#" id="auction">경매 입찰 내역</a>
                    <a href="#" id="sell">판매중인 상품</a>
                    <p class="title">나의 정보</p>
                    <a href="#" id="channel_update">MY채널 수정</a>
                    <a href="#" id="user_update">회원정보 수정</a>
                    <a href="#" id="user_del">회원탈퇴</a>
                    <p class="title">고객센터</p>
                    <a href="#" id="inquiry">1:1문의</a>
                    <a href="#" id="review">Review</a>
                </div>
            </div>
            <div class="myContent">
                <div class="userinfo">
                    <div class="my_grade">
                        <br>
                        <p>나의 등급 ></p>
                        <h2>GOLD BEE</h2>
                    </div>
                    <div class="my_channel">
                        <br>
                        <p>나의 채널 ></p>
                        <h4></h4>
                        <a href="mychannel"><h3>${sessionScope.ch_name }</h3></a>
                    </div>
                </div>
                <div class="includepage">
           	 	<jsp:include page="orderlist.jsp"></jsp:include>
            	</div>    
            </div>
                       <div class="scoll">
                       	<jsp:include page="TopandDown.jsp"></jsp:include>
                       </div> 
            </div>
            <!-- /container -->
        
        </div>
        
    
</body>
</html>