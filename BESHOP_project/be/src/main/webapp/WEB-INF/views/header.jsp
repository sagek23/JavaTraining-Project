<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
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
		<link type="text/css" rel="stylesheet" href="css/bootstrap2.min.css"/>

		<!-- Slick -->
		<link type="text/css" rel="stylesheet" href="css/slick.css"/>
		<link type="text/css" rel="stylesheet" href="css/slick-theme.css"/>

		<!-- nouislider -->
		<link type="text/css" rel="stylesheet" href="css/nouislider.min.css"/>

		<!-- Font Awesome Icon -->
		<link rel="stylesheet" href="css/font-awesome.min.css">

		<!-- Custom stlylesheet -->
		<link type="text/css" rel="stylesheet" href="css/style.css"/>

    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
     <script>
    function slide(){
      $("#today_slide_ul").animate({left:"-=187px"},1000,function(){
        $(this).css({"left":0});
        $("#today_slide_ul").append( $("#today_slide_ul").children("li").eq(0) );
      });    
      current++;
      if(current==5)current=0;
    }    
    </script>
    </head>
	<body>
	 <!--햄버거 로그인 영역 -->
      <nav id="sidenav">
      <span id="close-sidenav">&times;</span>
       <header>로그인</header>
       <ul>
        <li><input type="text" id="login" placeholder="  아이디"></li>
        <li><input type="text" id="pwd" placeholder="  비밀번호"></li>
        <li><input type="button" value="로그인" id="btn_login"></li>
      </ul>
       <ul class="second">
          <li><a href="#">아이디/비밀번호 찾기</a></li> 
           <li><a href="insert.html">회원가입</a></li>
       </ul>
        </nav>    
		<!-- HEADER -->
		<header>
			<!-- TOP HEADER -->
			<div id="top-header">
				<div class="container">
					<ul class="header-links pull-left">
						<li><a href="#"><i class="fa fa-phone" style="color: black">
						</i> 032-555-1234</a></li>
						<li><a href="#"><i class="fa fa-envelope-o" style="color: black"></i> email@email.com</a></li>
						<li><a href="#"><i class="fa fa-map-marker" style="color: black"></i> BESHOP</a></li>
					</ul>
					<ul class="header-links pull-right">
						<li><a href="#"><i class="fa fa-dollar" style="color: black"></i> Point</a></li>
						<li><a href="#" id="log"><i class="fa fa-user-o" style="color: black"></i> Login</a></li>
						<li><a href="mypage"><i class="fa fa-user-o" style="color: black"></i> My Account</a></li>
					</ul>
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
									<a href="#">
										<i class="fa fa-heart-o" style="color:black"></i>
										<span style="color: black">위시리스트</span>
										<div class="qty">2</div>
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
		<nav id="navigation" >
			<!-- container -->
			<div class="container">
				<!-- responsive-nav -->
				<div id="responsive-nav" >
					<!-- NAV -->
					<ul class="main-nav nav navbar-nav">
						<li class="active"><a href="#">Home</a></li>
						<li><a href="shopping.jsp">쇼핑</a></li>
						<li><a href="FundMain.jsp">공동구매</a></li>
						<li><a href="subscription.jsp">구독</a></li>
						<li><a href="ranking.jsp">랭킹</a></li>
						<li><a href="event.jsp">이벤트</a></li>
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