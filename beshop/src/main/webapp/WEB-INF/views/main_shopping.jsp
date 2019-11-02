<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>Electro - HTML Ecommerce Template</title>
<link rel="stylesheet" href="css/reset.css" /> 
  <style>
 #kakaoBtn:hover {
      cursor: pointer;
    }
 #naverIdLogin:hover {
      cursor: pointer;
    }
 #customBtn:hover{
  	cursor: pointer;
  }
  #kakaoBtn {
 	margin-top: 10px; 
  }
  
  #naverIdLogin {
 	margin-top: 10px; 
  }
  
  #customBtn {
 	margin-top: 10px; 
  }
  
     
  img { border-radius:5px;}
		.poster-main{
			position: relative;
      margin:30px auto;
      
		}
        
      
		.poster-main .poster-list .poster-item{
			position: absolute;
			left: 0;
			top: 0;
		}
		.poster-main .poster-btn{
			position: absolute;
			top: 0;
			cursor: pointer;
		}
		.poster-main .poster-prev-btn{
			left: 0;
			background: url("img/btn_l.png") no-repeat center center;
		}
		.poster-main .poster-next-btn{
			right: 0;
			background: url("img/btn_r.png") no-repeat center center;
		}
       div.flowplayer .fp-color { background-color: #ffbf00 }
  .flowplayer { max-width: 1000px; width: 100%; height: 100%;padding-bottom: 100px;}
  .use-controlbar-background .fp-controls { background-color: rgba(0,0,0,.6) }

  /* Force controls to be visible initially. Do not use in production. */
  .flowplayer .fp-controls { visibility: visible; opacity: 1; }
  .flowplayer .fp-footer { display: none }
  .flowplayer .fp-progress { width: 50% }
		
	</style> 
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
	<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://apis.google.com/js/api:client.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
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
	

	<!-- 카카오로그인 -->
	<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('3fc37ff4b17fd3a8918da187f484255f');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
          //alert(JSON.stringify(authObj));
          Kakao.API.request({

        	  url: '/v2/user/me',
              success: function(res) {
               console.log(res);
               
               var id = res.id;      //유저의 카카오톡 고유 id
               //var userEmail = res.kaccount_email;   //유저의 이메일
               var userNickName = res.properties.nickname; //유저가 등록한 별명
               var profileImg = res.properties.profile_image;
               console.log("ID: "+id);
               //console.log(userEmail);
               console.log("Nickname: "+userNickName);
               console.log("ProfileImg : "+profileImg);
               //console.log("Access Token: "+authObj.access_token);
               location.href = '/joinpage';
               localStorage.setItem('id', id);
               localStorage.setItem('profileImg', profileImg);
               
                  }

                });
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };

  //]]>
</script>
	
 <!-- 구글 -->
<script type="text/javascript">
	var googleUser = {};
	var startApp = function() {
	  gapi.load('auth2', function(){
	    // Retrieve the singleton for the GoogleAuth library and set up the client.
	    auth2 = gapi.auth2.init({
	        
	      // 클라이언트 ID 설정하기
	      client_id: '383971103206-b6p2npdt5smrcrorj1naq8smlos9s3v8.apps.googleusercontent.com',
	      
	      cookiepolicy: 'single_host_origin',
	    });
	    attachSignin(document.getElementById('customBtn'));
	  });
	};
	
	function attachSignin(element) {
	  console.log(element.id);
	  auth2.attachClickHandler(element, {},
	      function(googleUser) {
	            googleUser.getBasicProfile().getName();
	            var profile = googleUser.getBasicProfile();
	            var id = profile.getId()
	            var profileImg = profile.getImageUrl();
	            console.log("ID: " + id); 
	            console.log('Full Name: ' + profile.getName());
	            console.log('Given Name: ' + profile.getGivenName());
	            console.log('Family Name: ' + profile.getFamilyName());
	            console.log("Image URL: " + profile.getImageUrl());
	            console.log("Email: " + profile.getEmail());
				
	            var access_token = googleUser.getAuthResponse().id_token;
	            //console.log("Access Token: "+ access_token)
	            location.href = '/joinpage';
	            localStorage.setItem('id', id);
	            localStorage.setItem('profileImg', profileImg);
	            
	      }, function(error) {
	        alert(JSON.stringify(error, undefined, 2));
	      });
	}	
</script>
<script>startApp();</script>


	 <!--햄버거 로그인 영역 -->
      <nav id="sidenav">
      <span id="close-sidenav">&times;</span>
       <header>로그인</header>
       <ul>
        <li><input type="text" id="login" placeholder="  아이디"></li>
        <li><input type="text" id="pwd" placeholder="  비밀번호"></li>
        <li><input type="button" value="로그인" id="btn_login"></li>
        <li><div id="kakaoBtn"><a id="custom-login-btn" href="javascript:loginWithKakao()"><img src="img/kakaoLogin.png" width="233" height="40"/></a></div></li>
        <li><div id="customBtn" class="customGPlusSignIn"><img src="img/google.png" id="googleLogin" width="233" height="40"></div></li>
        <li><div id="naverIdLogin"><a id="naverIdLogin_loginButton" href="#" role="button"><img src="https://static.nid.naver.com/oauth/big_g.PNG" width="233" height="40"></a></div></li>
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
						<li><a href="#"><i class="fa fa-user-o" style="color: black"></i> My Account</a></li>
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
									<a class="dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
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
            </div>
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
						<li><a href="#">고객센터</a></li>
					</ul>
					<!-- /NAV -->
				</div>
				<!-- /responsive-nav -->
			</div>
			<!-- /container -->
		</nav>
		<!-- /NAVIGATION -->
        <!-- MAIN VIDEO-->
         <!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<h3 class="title">실시간 Live</h3>
				<div class="video">
				    <div id="jquery-script-menu">
<div class="jquery-script-center">

<div class="jquery-script-ads"><script type="text/javascript"><!--
google_ad_client = "ca-pub-2783044520727903";
/* jQuery_demo */
google_ad_slot = "2780937993";
google_ad_width = 728;
google_ad_height = 90;

</script>

<!-- 네이버 -->	

<script type="text/javascript">
   var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "izje4O3kf_B_jykImcq9",
				callbackUrl: "http://localhost:8082/naverlogin", 
				//로그인하면 callback처리 되서 naverlogin으로 이동한 후 로그인 정보가 있으면 가입페이지로
				isPopup: true, //로그인창 팝업
				callbackHandle: true
			}
		);

		//naverlogin페이지로 넘어가서 callback 처리됨 naverlogin페이지 반드시 필요
		naverLogin.init();
</script>

<script type="text/javascript"
src="http://pagead2.googlesyndication.com/pagead/show_ads.js">
</script></div>
<div class="jquery-script-clear"></div>
</div>
</div>
     <div class="poster-main" id="carousel" data-setting='{
							"width":1000,
							"height":500,
							"posterWidth":600,
							"posterHeight":500,
							"scale":0.8,
							"speed":1000,
							"autoPlay":true,
							"delay":3000,
							"verticalAlign":"middle"
							}'> 
   <div class="poster-btn poster-prev-btn"></div> 
   <ul class="poster-list"> 
    <li class="poster-item" ><a href="#"><div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
       <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
    { "src": "video/KakaoTalk_Video_20191006_1500_59_439.mp4",
      "logo": "img/beShop.png" }
  </script>
        </div></a></li> 
    <li class="poster-item"><a href="#"><div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
       <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
    { "src": "video/HaeLee01.mp4",
      "logo": "img/beShop.png" }
  </script>
        </div></a></li> 
    <li class="poster-item"><a href="#"><div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
       <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
    { "src": "video/HaeLee02.mp4",
      "logo": "img/beShop.png" }
  </script>
        </div></a></li> 
    <li class="poster-item"><a href="#"><div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
       <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
    { "src": "video/KakaoTalk_Video_20191006_1500_59_439.mp4",
      "logo": "img/beShop.png" }
  </script>
        </div></a></li> 
    <li class="poster-item"><a href="#"><div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
       <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
    { "src": "video/KakaoTalk_Video_20191006_1500_59_439.mp4",
      "logo": "img/beShop.png" }
  </script>
        </div></a></li> 
   </ul> 
   <div class="poster-btn poster-next-btn"></div> 
  </div> 
  <script src="http://code.jquery.com/jquery-1.12.4.min.js"></script>
 <script src="js/Carousel.js"></script> 
  <script>
		$(function(){
			Carousel.init($("#carousel"));
			$("#carousel").init();
		});
	</script> <script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script> 
					
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /MAINVIDEO -->
		
		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop01.png" alt="">
							</div>
							<div class="shop-body">
								<h3>노트북<br>Collection</h3>
								<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop03.png" alt="">
							</div>
							<div class="shop-body">
								<h3>악세사리<br>Collection</h3>
								<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->

					<!-- shop -->
					<div class="col-md-4 col-xs-6">
						<div class="shop">
							<div class="shop-img">
								<img src="./img/shop02.png" alt="">
							</div>
							<div class="shop-body">
								<h3>카메라<br>Collection</h3>
								<a href="#" class="cta-btn">Shop now <i class="fa fa-arrow-circle-right"></i></a>
							</div>
						</div>
					</div>
					<!-- /shop -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">BESHOP 오늘의 상품</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab1">노트북</a></li>
									<li><a data-toggle="tab" href="#tab1">스마트폰</a></li>
									<li><a data-toggle="tab" href="#tab1">카메라</a></li>
									<li><a data-toggle="tab" href="#tab1">악세사리</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab1" class="tab-pane active">
									<div class="products-slick" data-nav="#slick-nav-1">
										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product01.png" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">노트북/테블릿PC</p>
												<h3 class="product-name"><a href="#">
상품 색상
상품 색상
한성컴퓨터 올데이롱 TFX255 (SSD 500GB) </a></h3>
												<h4 class="product-price">610,000원 <del class="product-old-price">$990.00</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart" style="color:black"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product02.png" alt="">
												<div class="product-label">
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">이어폰/헤드폰</p>
												<h3 class="product-name"><a href="#">
상품 색상 상품 색상 상품 색상
Britz 브리츠인터내셔널 W800BT</a></h3>
												<h4 class="product-price">300,000원 <del class="product-old-price">$990.00</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product03.png" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">노트북/테블릿PC</p>
												<h3 class="product-name"><a href="#">삼성전자 2019 노트북9 Always NT950XBV-A58A WIN10 </a></h3>
												<h4 class="product-price">1,300,000원 <del class="product-old-price">$990.00</del></h4>
												<div class="product-rating">
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product04.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">노트북/테블릿PC</p>
												<h3 class="product-name"><a href="#"></a>삼성전자 갤럭시탭A 8.0 2019 with S펜 WiFi 32GB</h3>
												<h4 class="product-price">$980.00 <del class="product-old-price">$990.00</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i> CART추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product05.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">이어폰/해드폰</p>
												<h3 class="product-name"><a href="#">브랜드명소니 상품명소니 WH-1000XM3 블루투스 헤드폰 골드 노이즈캔슬링</a></h3>
												<h4 class="product-price">300,000원 <del class="product-old-price">$990.00</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->
									</div>
									<div id="slick-nav-1" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- HOT DEAL SECTION -->
		<div id="hot-deal" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="hot-deal">
							<ul class="hot-deal-countdown">
								<li>
									<div>
										<h3>02</h3>
										<span>Days</span>
									</div>
								</li>
								<li>
									<div>
										<h3>10</h3>
										<span>Hours</span>
									</div>
								</li>
								<li>
									<div>
										<h3>34</h3>
										<span>Mins</span>
									</div>
								</li>
								<li>
									<div>
										<h3>60</h3>
										<span>Secs</span>
									</div>
								</li>
							</ul>
							<h2 class="text-uppercase">이번주 hot deal</h2>
							<p>새로운 신상품 50% OFF</p>
							<a class="primary-btn cta-btn" href="#">지금보기</a>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /HOT DEAL SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<!-- section title -->
					<div class="col-md-12">
						<div class="section-title">
							<h3 class="title">BESHOP 핫딜</h3>
							<div class="section-nav">
								<ul class="section-tab-nav tab-nav">
									<li class="active"><a data-toggle="tab" href="#tab2">노트북</a></li>
									<li><a data-toggle="tab" href="#tab2">스마트폰</a></li>
									<li><a data-toggle="tab" href="#tab2">카메라</a></li>
									<li><a data-toggle="tab" href="#tab2">악세사리</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /section title -->

					<!-- Products tab & slick -->
					<div class="col-md-12">
						<div class="row">
							<div class="products-tabs">
								<!-- tab -->
								<div id="tab2" class="tab-pane fade in active">
									<div class="products-slick" data-nav="#slick-nav-2">
										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product06.png" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">노트북/테블릿PC</p>
												<h3 class="product-name"><a href="#">레노버 LEGION Y540-15IRH i7 Blade Edition </a></h3>
												<h4 class="product-price">1,000,000원 <del class="product-old-price">1,110,300원</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Cart추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product07.png" alt="">
												<div class="product-label">
													<span class="new">NEW</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">휴대폰/스마트폰</p>
												<h3 class="product-name"><a href="#">삼성전자 갤럭시노트10 플러스 5G 256GB, SKT</a></h3>
												<h4 class="product-price">800,000원 <del class="product-old-price">900,000원</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star-o"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>Cart추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product08.png" alt="">
												<div class="product-label">
													<span class="sale">-30%</span>
												</div>
											</div>
											<div class="product-body">
												<p class="product-category">노트북/테블릿PC</p>
												<h3 class="product-name"><a href="#">LG전자 2019 울트라PC 15UD590-GX50K </a></h3>
												<h4 class="product-price">1,400,200원 <del class="product-old-price">1,500,000원</del></h4>
												<div class="product-rating">
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product09.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">카메라/디카</p>
												<h3 class="product-name"><a href="#">캐논 EOS RP (렌즈미포함) </a></h3>
												<h4 class="product-price">630,000원<del class="product-old-price">700,000원</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->

										<!-- product -->
										<div class="product">
											<div class="product-img">
												<img src="./img/product01.png" alt="">
											</div>
											<div class="product-body">
												<p class="product-category">노트북/테블릿PC</p>
												<h3 class="product-name"><a href="#">레노버 LEGION Y540-15IRH i7 Blade Edition </a></h3>
												<h4 class="product-price">800,000원 <del class="product-old-price">990.000원</del></h4>
												<div class="product-rating">
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
													<i class="fa fa-star"></i>
												</div>
												<div class="product-btns">
													<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">add to wishlist</span></button>
													<button class="add-to-compare"><i class="fa fa-exchange"></i><span class="tooltipp">add to compare</span></button>
													<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">quick view</span></button>
												</div>
											</div>
											<div class="add-to-cart">
												<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>CART추가</button>
											</div>
										</div>
										<!-- /product -->
									</div>
									<div id="slick-nav-2" class="products-slick-nav"></div>
								</div>
								<!-- /tab -->
							</div>
						</div>
					</div>
					<!-- /Products tab & slick -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">Best 조회수</h4>
							<div class="section-nav">
								<div id="slick-nav-3" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-3">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product07.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">휴대폰/스마트폰</p>
										<h3 class="product-name"><a href="#">삼성전자 갤럭시A40S 2019 64GB</a></h3>
										<h4 class="product-price">980.000원 <del class="product-old-price">1,090.000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product08.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">레노버 LEGION Y540-15IRH i7 Prime (SSD 256GB)</a></h3>
										<h4 class="product-price">1,300,000원 <del class="product-old-price">1,400,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product09.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">카메라/디카</p>
										<h3 class="product-name"><a href="#">파인디지털 파인드라이브 Q300</a></h3>
										<h4 class="product-price">700,000원 <del class="product-old-price">800,000원</del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product01.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">LG전자 2019 그램 17ZD990-VX50K</a></h3>
										<h4 class="product-price">1,300,000원 <del class="product-old-price">1,400,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">이어폰/헤드폰</p>
										<h3 class="product-name"><a href="#">

Britz 브리츠인터내셔널 W800BT</a></h3>
										<h4 class="product-price">400.000원 <del class="product-old-price">500.000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">삼성전자 2019 노트북9 Always NT950XBV-A58A WIN10</a></h3>
										<h4 class="product-price">1,200,000원 <del class="product-old-price">1,300,000원</del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">BEST 구독</h4>
							<div class="section-nav">
								<div id="slick-nav-4" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-4">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">LG전자 2019 그램 17ZD990-VX50K</a></h3>
										<h4 class="product-price">1,200,000원 <del class="product-old-price">1,300,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product05.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">이어폰/헤드폰</p>
										<h3 class="product-name"><a href="#">

Britz 브리츠인터내셔널 W800BT</a></h3>
										<h4 class="product-price">400,000원 <del class="product-old-price">490.000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product06.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">삼성전자 2019 노트북9 Always NT950XBV-A58A WIN10</a></h3>
										<h4 class="product-price">1,200,000원 <del class="product-old-price">1,400,000원</del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product07.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">핸드폰/스마트폰</p>
										<h3 class="product-name"><a href="#">삼성전자 갤럭시A40S 2019 64GB, 공기계</a></h3>
										<h4 class="product-price">$980.000원 <del class="product-old-price">1,000,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product08.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">레노버 LEGION Y540-15IRH i7 Prime (SSD 256GB)</a></h3>
										<h4 class="product-price">800,000원 <del class="product-old-price">900,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product09.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">카메라/디카</p>
										<h3 class="product-name"><a href="#">파인디지털 파인드라이브 Q300</a></h3>
										<h4 class="product-price">1,200,000원 <del class="product-old-price">1,300,000원</del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

					<div class="clearfix visible-sm visible-xs"></div>

					<div class="col-md-4 col-xs-6">
						<div class="section-title">
							<h4 class="title">BEST 판매자</h4>
							<div class="section-nav">
								<div id="slick-nav-5" class="products-slick-nav"></div>
							</div>
						</div>

						<div class="products-widget-slick" data-nav="#slick-nav-5">
							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product01.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">삼성전자 2019 노트북9 Always NT950XBV-A58A WIN10</a></h3>
										<h4 class="product-price">1,380.000원 <del class="product-old-price">$1,490.000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product02.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">이어폰/헤드폰</p>
										<h3 class="product-name"><a href="#">엠지텍 MB-1100X</a></h3>
										<h4 class="product-price">500,000원 <del class="product-old-price">600,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product03.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">한성컴퓨터 올데이롱 TFX255</a></h3>
										<h4 class="product-price">1,200,000원 <del class="product-old-price">1,300,000원</del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>

							<div>
								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product04.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">LG전자 2019 그램 17ZD990-VX50K</a></h3>
										<h4 class="product-price">1,800,000원 <del class="product-old-price">1,950,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product05.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">이어폰/헤드폰</p>
										<h3 class="product-name"><a href="#">

Britz 브리츠인터내셔널 W800BT</a></h3>
										<h4 class="product-price">300,000원 <del class="product-old-price">400,000원</del></h4>
									</div>
								</div>
								<!-- /product widget -->

								<!-- product widget -->
								<div class="product-widget">
									<div class="product-img">
										<img src="./img/product06.png" alt="">
									</div>
									<div class="product-body">
										<p class="product-category">노트북/테블릿PC</p>
										<h3 class="product-name"><a href="#">레노버 LEGION Y540-15IRH i7 Prime (SSD 256GB)</a></h3>
										<h4 class="product-price">1,500,000원 <del class="product-old-price">1,600,000원</del></h4>
									</div>
								</div>
								<!-- product widget -->
							</div>
						</div>
					</div>

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- NEWSLETTER -->
		<div id="newsletter" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<div class="newsletter">
							<p>Sign Up for the <strong>NEWSLETTER</strong></p>
							<form>
								<input class="input" type="email" placeholder="Enter Your Email">
								<button class="newsletter-btn"><i class="fa fa-envelope"></i> Subscribe</button>
							</form>
							<ul class="newsletter-follow">
								<li>
									<a href="#"><i class="fa fa-facebook"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-twitter"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-instagram"></i></a>
								</li>
								<li>
									<a href="#"><i class="fa fa-pinterest"></i></a>
								</li>
							</ul>
						</div>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /NEWSLETTER -->

		<!-- FOOTER -->
		<footer id="footer">
			<!-- top footer -->
			<div class="section">
				<!-- container -->
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">About Us</h3>
								<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut.</p>
								<ul class="footer-links">
									<li><a href="#"><i class="fa fa-map-marker"></i>1734 Stonecoal Road</a></li>
									<li><a href="#"><i class="fa fa-phone"></i>+021-95-51-84</a></li>
									<li><a href="#"><i class="fa fa-envelope-o"></i>email@email.com</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Categories</h3>
								<ul class="footer-links">
									<li><a href="#">Hot deals</a></li>
									<li><a href="#">Laptops</a></li>
									<li><a href="#">Smartphones</a></li>
									<li><a href="#">Cameras</a></li>
									<li><a href="#">Accessories</a></li>
								</ul>
							</div>
						</div>

						<div class="clearfix visible-xs"></div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Information</h3>
								<ul class="footer-links">
									<li><a href="#">About Us</a></li>
									<li><a href="#">Contact Us</a></li>
									<li><a href="#">Privacy Policy</a></li>
									<li><a href="#">Orders and Returns</a></li>
									<li><a href="#">Terms & Conditions</a></li>
								</ul>
							</div>
						</div>

						<div class="col-md-3 col-xs-6">
							<div class="footer">
								<h3 class="footer-title">Service</h3>
								<ul class="footer-links">
									<li><a href="#">My Account</a></li>
									<li><a href="#">View Cart</a></li>
									<li><a href="#">Wishlist</a></li>
									<li><a href="#">Track My Order</a></li>
									<li><a href="#">Help</a></li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /top footer -->

			<!-- bottom footer -->
			<div id="bottom-footer" class="section">
				<div class="container">
					<!-- row -->
					<div class="row">
						<div class="col-md-12 text-center">
							<ul class="footer-payments">
								<li><a href="#"><i class="fa fa-cc-visa"></i></a></li>
								<li><a href="#"><i class="fa fa-credit-card"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-paypal"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-mastercard"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-discover"></i></a></li>
								<li><a href="#"><i class="fa fa-cc-amex"></i></a></li>
							</ul>
							<span class="copyright">
								<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
								Copyright &copy;<script>document.write(new Date().getFullYear());</script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							</span>
						</div>
					</div>
						<!-- /row -->
				</div>
				<!-- /container -->
			</div>
			<!-- /bottom footer -->
		</footer>
		<!-- /FOOTER -->

		<!-- jQuery Plugins -->
		<script src="js/jquery.min.js"></script>
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
