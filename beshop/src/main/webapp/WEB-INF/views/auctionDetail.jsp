<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
	<jsp:include page="header.jsp" flush="true"/>
	  
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		 <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

		<title>경매 상품 상세정보</title>

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
 		<link rel="stylesheet" href="css/jquery-ui.min.css">

 		<!-- Custom stlylesheet -->
 		<link type="text/css" rel="stylesheet" href="css/style.css"/>
 		<link type="text/css" rel="stylesheet" href="css/popup.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="js/popup.js"></script>
	<script type="text/javascript" src="js/jquery-ui.js"></script>
	<script type="text/javascript">
var SetTime = 1800;			//최초 설정 시간(기본 : 초)
function msg_time() {	// 1초씩 카운트
		
		m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
		
		var msg = "현재 남은 시간은 " + m + "</font> 입니다.";
		
		document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
				
		SetTime--;					// 1초씩 감소
		
	if (SetTime < 60) {			// 시간이 종료 되었으면..
			
			clearInterval(msg_time());		// 타이머 해제
			alert("경매가 종료되기 1분 전 입니다");
		}
		if (SetTime <= 0) {			// 시간이 종료 되었으면..
			
			clearInterval(msg_time());		// 타이머 해제
			alert("경매가 종료되었습니다");
			
		}
		
	}
	setInterval(function(){
		msg_time();
	},1000);
$(function(){
	
	
	$("#btn1").click(function(){
		var priceval1 = $(this).attr('value');
		$('.price').val(priceval1);
		alert(priceval1);
		
	});
	$("#btn2").click(function(){
		var priceval2 = $(this).attr('value');
		$('.price').val(priceval2);
		alert(priceval2);
	});
	$("#btn3").click(function(){
		var priceval3 = $(this).attr('value');
		$(".price").val(priceval3);
		alert(priceval3);
	});

	function now(){
		$.ajax({url:"nowAuction",success:function(data){
			//alert(data.cnt); 
			$("#startprice").html(data.price);
			$(".btn_1").val(data.price+10000);
			$(".btn_2").val(data.price+20000);
			$(".btn_3").val(data.price+30000);
			$("#cnt").html(data.cnt);
		}});
	}
	now();
	setInterval(function(){
		now();
		
	},5000);
	$(".modalWin").hide();
	$(".beuid").hide();
	$(".btn_b").click(function(){
		var data = $(".f").serialize();
		alert(data);
		$.ajax({
			url:"insertAuction",
			type:"post",
			data:data,
			success:function(r){
				alert("입찰되었습니다."+r)
			}
		}); 
	});
     
});
</script>
 		
<style type="text/css">
	.use-play-1 {
		position:absolute;
		width: 600px;
		height: 400px;
		left: -150px;
	}		
		
 .poster-item {
   width: 600px;
   height: 500px;
   text-decoration: none;
   list-style: none;   
         }
  .flowplayer {
  	max-width: 1000px;
}

#qual {
  position: absolute; left: 1000px; top: 10px;
  font-family: courier, monospace;
  /* background-color: #262626; */
  transition: all .3s;
  border-radius: 3px;
  font-size: 90%;
  padding: 2em; 
  z-index: 1;  
}

#qual h3 {
  margin: 0 0 10px;
  color: #eee;
}

#qual label {
  display: inline-block;
  color: lime;
  width: 100px;
}

#qual strong {
  font-weight: 500;
  color: #fff;
}

#qual.switching {
  background-color: #ff0083;
  transform: scale(1.05);
}
</style>
</head>
<body>
		<!-- BREADCRUMB -->
		<div id="breadcrumb" class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<div class="col-md-12">
						<ul class="breadcrumb-tree">
							<li><a href="#">Home</a></li>
							<li><a href="#">All Categories</a></li>
							<li><a href="#">Accessories</a></li>
							<li><a href="#">Headphones</a></li>
							<li class="active">Product name goes here</li>
						</ul>
					</div>
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /BREADCRUMB -->

		<!-- SECTION -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">
					<!-- Product main img -->
					<div class="col-md-5 col-md-push-2">
						<div class="use-play-1 flowplayer" data-player-id="56058953-2cbd-4858-a915-1253bf7ef7b2">
						  <script src="//cdn.flowplayer.com/players/8dfd6c14-ba3a-445e-8ef5-191d9358ed0a/native/flowplayer.async.js">
						    { "src": "video/woo.mp4", "plugins": ["qsel"] }
						  </script>
						  <div id="qual" class="">
						    <jsp:include page="home.jsp"/>
						  </div>
						</div>
					</div>
					<!-- Product thumb imgs -->
					<div class="col-md-2  col-md-pull-5">
						<!-- <div id="product-imgs"></div> -->
						
					</div>
					<!-- /Product thumb imgs -->
					<!-- <br /><br /><br /> -->
						
					<!-- Product details -->
					<div class="col-md-5">
						<div class="product-details">
							<h2 class="product-name">Apple 2019년 맥북 프로 터치바 13 8세대 MUHQ2KH/A (i5-1.4GHz quad-core 8GB MAC OS SSD 128GB) </h2>
							<div>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<a class="review-link" href="#">3개 리뷰 | 리뷰 달기</a>
							</div>
							<div>
								<h3 class="product-price">599,000원 <del class="product-old-price">700,000원</del></h3>
								<span class="product-available">재고 5</span>
							</div>
							<p><h5>HD 디스플레이가 제공하는 고화질의 세계</h5> 16:9의 넓은 화면은 동영상이나 영화를 볼때 잘림현상이 없어 더욱 실감나는 영상을 감상하실수
							있습니다. 또한 컨텐츠의 디테일한 재현은 물론 아이콘, 사진및 게임등의 그래픽을 완벽하게 표현해냅니다.</p>

							<div class="product-options"><br>
								<!-- <a href="#layer01" data-popup="#layer01" class="layer-popup">레이어팝업 보기</a>  style="display:none"-->
								<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="ModalLabel" aria-hidden="true">
						       	 <div class="modal-dialog" role="document">
						            
						        	<form class="f">
						                <div class="modal-content" style="width:700px;">
						                	<!-- <h5 class="modal-title" id="exampleModalLabel">경매</h5> -->
						                	<div class="modal-header"><span id="startprice">1,230,000</span> 원ㅣ무료배송 
							                	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
									          	<span aria-hidden="true">&times;</span>
									        	</button>
								        	</div>
						                	
						            		<div class="pop-box">
							                    <div class="pop-msg">
													<input type="text" class="beuid" id="beuid" name="beuid" value="${sessionScope.beuid}">
							                        <p class="start" id="time">경매종료까지 <span id="ViewTimer"></span> 남았습니다ㅣ<span id="cnt" name="cnt">2</span>번의 입찰 진행중</p>
							                        <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
							                        <p class="start" id="notice" style="margin-bottom: 15px;">보유하신 포인트의 금액만큼 입찰가를 제시해주세요</p>
							                        <div class="colorpart">
							                            <p class="start" id="per">입찰가ㅣ만원 단위</p> 
							                            <div class="price_part">
							                                <input type="button" class="btn btn_1" id="btn1" value="1220000">
							                                <input type="button" class="btn btn_2" id="btn2" value="1320000">
							                                <input type="button" class="btn btn_3" id="btn3" value="1420000">
							                            </div>
							                            <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
							                            <p class="start">보유포인트<span class="mypoint">1,220,000</span>원 <a href="#">충전하기</a></p>
							                            <div class="box">
							                                <input type="number" class="price btn_a" name="price" id="price" value=" " placeholder="입찰하고 싶은 금액을 입력해주세요.">
							                                <input type="button" class="btn_b" value="입찰하기">
							                            </div>
							
							                            <p class="start">경매가 끝나거나 판매자가 입찰종료시 가장 높은 금액을 제시한 입찰자가 입찰됩니다</p>
							
							                            <div class="pop-noti">
							                                <div><input type="checkbox" name="" id="daychk01" /> <label for="daychk01">1주일간 보지 않기</label></div>
							                            </div>
							                        </div>
							                    </div>
						                	</div>
						            	</div>
						        	</form>
						         </div>
					    		</div>
							</div> 

							<div class="add-to-cart">
								<div class="qty-label">
									수량
									<div class="input-number" style="width:70px;">
										<input type="number" value="1">
										<span class="qty-up">+</span>
										<span class="qty-down">-</span>
									</div>
								</div>
								
								<button class="add-to-cart-btn auctionModal" data-toggle="modal" data-target="#myModal"><i class="fa fa-krw"></i> 입찰 하기</button>
								<button class="buy-now-btn" ><i class="fa fa-credit-card"></i> 바로 구매하기</button>
							</div>

							<ul class="product-btns">
								<li><a href="#"><i class="fa fa-heart-o"></i> 찜하기</a></li>
								<li>Share:</li>
								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
								<li><a href="#"><i class="fa fa-envelope"></i></a></li>
                        </ul>
							<br><br>
						</div>
					</div>
					<!-- /Product details -->

					<!-- Product tab -->
					<div class="col-md-12">
						<div id="product-tab">
							<!-- product tab nav -->
							<ul class="tab-nav">
								<li class="active"><a data-toggle="tab" href="#tab1">상세정보</a></li>
								<li><a data-toggle="tab" href="#tab2">A/S정보</a></li>
								<li><a data-toggle="tab" href="#tab3">리뷰보기 (3)</a></li>
							</ul>
							<!-- /product tab nav -->

							<!-- product tab content -->
							<div class="tab-content">
								<!-- tab1  -->
								<div id="tab1" class="tab-pane fade in active">
									<div class="row">
										<div class="col-md-12">
											<img src="http://gi.esmplus.com/sycnicom/11st_shokingdill/s550_ati/lg_s550_ati_11st_page.jpg" style="width: 100%">
										</div>
									</div>
								</div>
								<!-- /tab1  -->

								<!-- tab2  -->
								<div id="tab2" class="tab-pane fade in">
									<div class="row">
										<div class="col-md-12">
											<img src="http://gi.esmplus.com/sycnicom/2nd_notebook/2nd-notebook-besong.jpg" style="width: 100%">
										</div>
									</div>
								</div>
								<!-- /tab2  -->

								<!-- tab3  -->
								<div id="tab3" class="tab-pane fade in">
									<div class="row">
										<!-- Rating -->
										<div class="col-md-3">
											<div id="rating">
												<div class="rating-avg">
													<span>4.5</span>
													<div class="rating-stars">
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star"></i>
														<i class="fa fa-star-o"></i>
													</div>
												</div>
												<ul class="rating">
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 80%;"></div>
														</div>
														<span class="sum">3</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div style="width: 60%;"></div>
														</div>
														<span class="sum">2</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
													<li>
														<div class="rating-stars">
															<i class="fa fa-star"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
															<i class="fa fa-star-o"></i>
														</div>
														<div class="rating-progress">
															<div></div>
														</div>
														<span class="sum">0</span>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Rating -->

										<!-- Reviews -->
										<div class="col-md-6">
											<div id="reviews">
												<ul class="reviews">
													<li>
														<div class="review-heading">
															<h5 class="name">로드장인</h5>
															<p class="date">2019-10-17, 12:23 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>오버워치는 로드호그지 로드호그하기에 적당한 노트북인것 같아요.!!</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">자리야</h5>
															<p class="date">2019-10-01, 06:20 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>그자리는 내자리야 저리가</p>
														</div>
													</li>
													<li>
														<div class="review-heading">
															<h5 class="name">라인하르트</h5>
															<p class="date">2019-10-15, 04:56 PM</p>
															<div class="review-rating">
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star"></i>
																<i class="fa fa-star-o empty"></i>
															</div>
														</div>
														<div class="review-body">
															<p>내가 그대들의 방패라네! 망치 나가신다!</p>
														</div>
													</li>
												</ul>
												<ul class="reviews-pagination">
													<li class="active">1</li>
													<li><a href="#">2</a></li>
													<li><a href="#">3</a></li>
													<li><a href="#">4</a></li>
													<li><a href="#"><i class="fa fa-angle-right"></i></a></li>
												</ul>
											</div>
										</div>
										<!-- /Reviews -->

										<!-- Review Form -->
										<div class="col-md-3">
											<div id="review-form">
												<form class="review-form">
													<input class="input" type="text" placeholder="이름">
													<input class="input" type="email" placeholder="이메일 주소">
													<textarea class="input" placeholder="내용"></textarea>
													<div class="input-rating">
														<span>평점 </span>
														<div class="stars">
															<input id="star5" name="rating" value="5" type="radio"><label for="star5"></label>
															<input id="star4" name="rating" value="4" type="radio"><label for="star4"></label>
															<input id="star3" name="rating" value="3" type="radio"><label for="star3"></label>
															<input id="star2" name="rating" value="2" type="radio"><label for="star2"></label>
															<input id="star1" name="rating" value="1" type="radio"><label for="star1"></label>
														</div>
													</div>
													<button class="primary-btn">등록하기</button>
												</form>
											</div>
										</div>
										<!-- /Review Form -->
									</div>
								</div>
								<!-- /tab3  -->
							</div>
							<!-- /product tab content  -->
						</div>
					</div>
					<!-- /product tab -->
				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /SECTION -->

		<!-- Section -->
		<div class="section">
			<!-- container -->
			<div class="container">
				<!-- row -->
				<div class="row">

					<div class="col-md-12">
						<div class="section-title text-center">
							<h3 class="title">관련된 상품들</h3>
						</div>
					</div>

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="http://i.011st.com/ex_t/R/400x400/1/85/0/src/pd/19/1/5/7/6/2/3/IkSSf/1853157623_B.jpg" alt="">
								<div class="product-label">
									<span class="sale">-30%</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">노트북</p>
								<h3 class="product-name"><a href="#">product name goes here</a></h3>
								<h4 class="product-price">519,000원 <del class="product-old-price">566,310원</del></h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="http://image.lotte.com/goods/55/62/15/55/5/555156255_1_1500.jpg" alt="">
								<div class="product-label">
									<span class="new">NEW</span>
								</div>
							</div>
							<div class="product-body">
								<p class="product-category">노트북</p>
								<h3 class="product-name"><a href="#">[LG전자][리퍼]15N540 i5 4G SSD120G+500G GT740M 2G 오버워치노트북</a></h3>
								<h4 class="product-price">499,000원 <del class="product-old-price">542,390원</del></h4>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
                            </div>
						</div>
					</div>
					<!-- /product -->

					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="https://thumbnail13.coupangcdn.com/thumbnails/remote/492x492ex/image/retail/images/2018/09/10/13/3/62bc61c2-4232-4b52-a15d-67fd3c96cd45.jpg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">Category</p>
								<h3 class="product-name"><a href="#">앱코 HACKER 코리아 어디션 게이밍 기계식 키보드 카일 광축 텐키리스 방수 축교환 LED 리니어</a></h3>
								<h4 class="product-price">55,750원 <del class="product-old-price">72,000원</del></h4>
								<div class="product-rating">
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star"></i>
									<i class="fa fa-star-o"></i>
								</div>
								<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
                            </div>
						</div>
					</div>
					<!-- /product -->
    
					<!-- product -->
					<div class="col-md-3 col-xs-6">
						<div class="product">
							<div class="product-img">
								<img src="http://item.ssgcdn.com/95/84/21/item/1000036218495_i1_1200.jpg" alt="">
							</div>
							<div class="product-body">
								<p class="product-category">컴퓨터/보조기기</p>
								<h3 class="product-name"><a href="#">스틸시리즈 Arctis Pro RGB 7.1 헤드셋</a></h3>
								<h4 class="product-price">173,530원 <!--<del class="product-old-price">$990.00</del>--></h4>
								<div class="product-rating">
								</div>
								<div class="product-btns">
									<div class="product-btns">
									<button class="add-to-wishlist"><i class="fa fa-heart-o"></i><span class="tooltipp">찜하기</span></button>
									<button class="quick-view"><i class="fa fa-eye"></i><span class="tooltipp">상품 바로가기</span></button>
								</div>
							</div>
							<div class="add-to-cart">
								<button class="add-to-cart-btn"><i class="fa fa-shopping-cart"></i>장바구니 담기</button>
							</div>
						</div>
					</div>
					<!-- /product -->

				</div>
				<!-- /row -->
			</div>
			<!-- /container -->
		</div>
		<!-- /Section -->



		<!-- jQuery Plugins -->
		<!-- <script src="js/jquery.min.js"></script> -->
		<script src="js/bootstrap.min.js"></script>
		<script src="js/slick.min.js"></script>
		<script src="js/nouislider.min.js"></script>
		<script src="js/jquery.zoom.min.js"></script>
		<script src="js/main.js"></script>

	</body>
</html>
