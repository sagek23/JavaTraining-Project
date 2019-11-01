<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
	<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title></title>

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
   <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script>
$(function(){
 	function check(){
		if($("#beuid").val().length <1){
			alert("아이디를 입력해주세요");
			$("#beuid").focus();
			return false;
		}
		else if($("#upw").val().length<1){
			alert("비밀번호를 입력해주세요.");
			$("#upw").focus();
			return false;
		}
		else{
			return true;
		}
		}
 	var msg = $("#msg").val();
	 if(msg == "실패"){
		alert("로그인 정보를 확인해주세요!");
	}
});
</script>
<style>
#hamburger-wrapper {
  float: right;
  margin-top: -20px;
 
}
#hamburger {
  cursor: pointer;
  font-size: 3em;
}
#close-sidenav {
  cursor: pointer;
  font-size: 3em;
  margin-top: -10px;
  float: right;
}
#sidenav {
  height: 100%; width: 300px;
  top: 0px; right: -350px;
  background: white;
  position: fixed;
  transition: 0.4s;
    border: 2px solid #00a8b3;
    box-sizing: border-box;
    padding-left: 30px;
    z-index: 10000;
}
#sidenav ul { margin-top: 10px; padding: 0; list-style-type: none; }
.second li{display: inline; float: left; }
.second li a {text-decoration: none; font-size: 12px; margin-right: 15px; color: black; transition: all 0.4s}
#beuid, #upw {margin: 10px auto; width: 230px; height: 35px;}
#btn_login{ 
    margin-top: 20px;
    width: 230px;
    background-color: #00a8b3;
    height: 40px;
    border: 0px;
    font-size: 15px;
    color: white;
    transition: all 0.4s;
}

#btn_login:hover{
    color: #555;
    font-weight: bold;
    cursor: pointer;
}
    
#sidenav header{
  color: #555;
  display: block;
  text-decoration: none;
    margin-top: 120px;
    font-weight: bold;
}
/*#sidenav header { background: #93ddd3; }*/
#sidenav a:hover { color: #93ddd3; }
    #login_form {cursor: pointer;}
     .userImg {width: 150px; height: 150px; margin: 30px auto;}
.userImg img{width: 150px; height: 150px; border-radius: 100px;}  
    .userMenu {text-align: center; width: 100%; margin-top: 0px;}
    .userMenu a {width: 100%; display: block; margin: 30px 0;}
    .myheader{width:100%; text-align: center; margin-top: 50px;}
</style>
    </head>
	<body>
	 <!--햄버거 로그인 영역 -->
      
      <c:choose>
			<c:when test="${empty sessionScope.beuid}">
			<!-- 로그인이 안되어 있으면 -->
			<nav id="sidenav">
      <span id="close-sidenav">&times;</span>
      <input type="hidden" id="msg" value="${msg }">
       <header>로그인</header>
       <form id="fs" action="login.do" method="post" onsubmit="return check()">
       <ul>
        <li><input type="text" name="beuid" id="beuid" placeholder="  아이디"></li>
        <li><input type="text" name ="upw" id="upw" placeholder="  비밀번호"></li>
        <li><input type="submit" value="로그인" id="btn_login"></li>
      </ul>
      </form>
       <ul class="second">
          <li><a href="search_user">아이디/비밀번호 찾기</a></li> 
           <li><a href="joinpage">회원가입</a></li>
       </ul>
       </nav>
       </c:when>
      
       <c:otherwise>
       <nav id="sidenav" style="padding-left:0px">
      <span id="close-sidenav">&times;</span>
       	 <header class="myheader" style="font-size: 20px;">${sessionScope.uname }님 환영합니다</header>
       	 <a href="logout.do" style="text-align: center; font-size:13px; margin:10px 0;" >로그아웃</a>
        <div class="userImg">
            <img src="img/haeree.jpg">
        </div>
        <div class="userMenu">
            <header class="myheader" style="margin-top:50px; font-size:17px;">My 메뉴</header>
            <a>My page</a>
            <a>나의 주문내역</a>
            <a>고객센터</a>
            <header class="myheader"  style="margin-top:50px; font-size:17px;]">최근 시청한 방송</header>
        </div>
       	</nav>
       	</c:otherwise>
       </c:choose> 	    
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone" style="color: black">
						</i> 032-555-1234</a></li>
						<li><a href="#"><i class="fa fa-envelope-o" style="color: black"></i> beshop@google.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker" style="color: black"></i> BESHOP</a></li>
					</ul>
					<c:choose>
						<c:when test="${empty sessionScope.beuid}">			
					<ul class="header-links pull-right">
						<li><a href="#"> <i class="fa fa-dollar" style="color: black"></i>Point</a></li>
						<li><a id="log"><i class="fa fa-user-o" style="color: black"></i> Login</a></li>
						<!-- <li><a href="#"><i class="fa fa-user-o" style="color:
						 black"></i> My Account</a></li> -->
					</ul>
					</c:when>
					 <c:otherwise>
					 <ul class="header-links pull-right">
						<li><a href="#"> <i class="fa fa-dollar" style="color: black"></i>point</a></li>
						<li><a id="log"><i class="fa fa-user-o" style="color: black"></i> Logout</a></li>
						<li><a href="mypage"><i class="fa fa-user-o" style="color: black"></i> My Page</a></li>
					</ul>
					</c:otherwise>
					</c:choose>
				</div>
			</div>
			  <script>
                $("#log").click(function() {
                $("#sidenav").css("right", "0");  
                $("body").addClass("dark")
                });
                $("#close-sidenav").click(function() {
                    $("#sidenav").css("right", "-350px");
                $("body").removeClass("dark");
                });
            </script>
			<!-- /TOP HEADER -->

			<!-- MAIN HEADER -->
			<div id="header">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<!-- LOGO -->
						<div class="col-md-3">
							<div class="header-logo">
								<a href="#" class="logo">
									<img src="./img/logo.png" alt="" width="180px" height="70px">
								</a>
								</a>
							</div>
						</div>
						<!-- /LOGO -->

						<!-- SEARCH BAR -->
						<div class="col-md-6">
							<div class="header-search">
								<form>
									<select class="input-select">
										<option value="0">All Categories</option>
										<option value="1">상품명</option>
										<option value="1">판매자명</option>
									</select>
									<input class="input" placeholder="Search here">
									<button class="search-btn">Search</button>
								</form>
							</div>
						</div>
						<!-- /SEARCH BAR -->

						<!-- ACCOUNT -->
						<div class="col-md-3 clearfix">
							<div class="header-ctn">
								<!-- Wishlist -->
								<div>
									<a href="addProduct">
										<i class="fa fa-video-camera" style="color:black"></i>
										<span style="color: black">상품등록</span>
									</a>
								</div>
								<!-- /Wishlist -->

								<!-- Cart -->
								<div class="dropdown">
									<a class="dropdown-toggle"  href="cart.jsp">
										<i class="fa fa-shopping-cart" style="color: black"></i>
										<span style="color: black">장바구니</span>
										<div class="qty">3</div>
									</a>
									<div class="cart-dropdown">
										<div class="cart-list">
											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product01.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">1x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>

											<div class="product-widget">
												<div class="product-img">
													<img src="./img/product02.png" alt="">
												</div>
												<div class="product-body">
													<h3 class="product-name"><a href="#">product name goes here</a></h3>
													<h4 class="product-price"><span class="qty">3x</span>$980.00</h4>
												</div>
												<button class="delete"><i class="fa fa-close"></i></button>
											</div>
										</div>
										<div class="cart-summary">
											<small>3 Item(s) selected</small>
											<h5>SUBTOTAL: $2940.00</h5>
										</div>
										<div class="cart-btns">
											<a href="#">View Cart</a>
											<a href="#">Checkout  <i class="fa fa-arrow-circle-right"></i></a>
										</div>
									</div>
								</div>
								<!-- /Cart -->

								<!-- Menu Toogle -->
								<div class="menu-toggle">
									<a href="#">
										<i class="fa fa-bars"></i>
										<span>Menu</span>
									</a>
								</div>
								<!-- /Menu Toogle -->
							</div>
						</div>
						<!-- /ACCOUNT -->
					</div>
					<!-- row -->
				</div>
				<!-- container -->
			<!-- /MAIN HEADER -->
		</header>
		<!-- /HEADER -->

		<!-- NAVIGATION -->
		<nav id="navigation">
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav">
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="#">쇼핑</a></li>
						<li><a href="#">공동구매</a></li>
						<li><a href="#">구독</a></li>
						<li><a href="#">랭킹</a></li>
						<li><a href="#">이벤트</a></li>
						<li><a href="customer_center.jsp">고객센터</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
	<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>
</body>
</html>