<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
	<head>
	<jsp:include page="header.jsp"/>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

    <title>Electro - HTML Ecommerce Template</title>
    <link rel="stylesheet" type="text/css" href="./slick/slick.css">
    <link rel="stylesheet" type="text/css" href="./slick/slick-theme.css">
    <!-- Google font -->
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <link type="text/css" rel="stylesheet" href="css/gmain.css" />
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />

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
    <script>
        function slide() {
            $("#today_slide_ul").animate({
                left: "-=187px"
            }, 1000, function() {
                $(this).css({
                    "left": 0
                });
                $("#today_slide_ul").append($("#today_slide_ul").children("li").eq(0));
            });
            current++;
            if (current == 5) current = 0;
        }
    </script>
    <script src="https://code.jquery.com/jquery-2.2.0.min.js" type="text/javascript"></script>
    <script src="./slick/slick.js" type="text/javascript" charset="utf-8"></script>
    <script type="text/javascript">
        $(document).on('ready', function() {

            $(".regular").slick({
                // dots: true,
                infinite: false,
                slidesToShow: 5,
                slidesToScroll: 1
            });

            $(".btn_fund").click(function(){
            	location.href="FundDetailpage.jsp";

            });
        });
    </script>

    <style type="text/css">
        body
        {
            padding: 0;
        }
        .slider {
            width: 77%;
            margin-left: 175px;
            margin-right: 100px;
            
        }
        

        .slick-slide {
            margin: 0px 15px;
        }

       

        .slick-prev:before,
        .slick-next:before {
            color: black;
        }
       
        .recomend_title
        {
            margin-left:190px;
            margin-bottom:40px;
            font-size: 25px;
            font-weight: 700;
        }
        .line 
        {
            width:80%;
            margin: 0 auto;
            clear: both;
        padding: 0px 0px 0px 0px;
        margin-bottom: 0px;
        border-bottom: 1px solid #3989c6;
        }
        
       .recomanditem_content_per
        {
            margin: 0px;
        }
        .slider p
        {
            margin: 0px;
            margin-top: 5px;
            font-size: 13px;
        }
        .g_main_top
        {
            border: 1px solid black;
            margin-left: 10px;
            margin-top: 10px;
            
        }
        .state-content
        {
            margin: 10px;
            margin-top: 15px;
            margin-left: 15px;
        }
        
    </style>
</head>

<body>
    <!-- FUND SECTION -->
    <div>
        <div class="section" id="g_section">
            <!-- container -->
            <div class="container">
                <!-- row -->
                <div class="row">
                    <div class="g_main_top">

                        <div class="state-content">
                            <div class="state-video">
                                <div class="state-video-img"></div>
                                <div class="state-video-title">백팩의 새로운 역사! 2만원대 백팩[유닛백2]</div>
                            </div>

                            <div class="state-info">
                                <div class="state-box">
                                    <p class="remain-day">12일 남음</p>
                                    <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
                                    <p class="percent-rate"><strong>1248%</strong>달성</p>
                                    <p class="total-amount"><strong>6,212,100</strong>원 펀딩</p>
                                    <p class="total-suppoter"><strong>253</strong>명의 서포터</p>
                                </div>
                                <div class="btn-funding"><button class="btn_fund">펀딩하기</button></div>
                                <div class="btn-wrap">
                                    <div class="btn-wrap-flex">
                                        <button id="btn-like" class="btn_info_like"><i class="icon-like"></i><em id="cntlike">34</em></button>
                                        <button id="btn-share" class="btn_info_share">공유하기</button>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>




                    <div class="g_lank_total">
                        <div class="g_lank_title">
                            <h1>실시간 랭킹</h1>
                        </div>
                        <div class="g_lank_list">
                            <div class="g_lank_listitem1">
                                <a class="listitem_box">
                                    <article>
                                        <div class="listitem_content">
                                            <div class="listitem_content_num">1</div>
                                            <h1 class="listitem_content_title">마진 0%! 백팩의 새로운 역사를 쓸 2만원대 백팩[유닛백]</h1>
                                            <p class="listitem_content_subtag">
                                                <span class="listitem_content_per">2851%</span>
                                                패션/잡화
                                            </p>
                                        </div>
                                    </article>
                                </a>
                            </div>
                            <div class="g_lank_listitem1">
                                <a class="listitem_box">
                                    <article>
                                        <div class="listitem_content">
                                            <div class="listitem_content_num">2</div>
                                            <h1 class="listitem_content_title">마진 0%! 백팩의 새로운 역사를 쓸 2만원대 백팩[유닛백]</h1>
                                            <p class="listitem_content_subtag">
                                                <span class="listitem_content_per">2851%</span>
                                                <span class="listitem_category"> 패션/잡화</span>
                                            </p>
                                        </div>
                                    </article>
                                </a>
                            </div>
                            <div class="g_lank_listitem1">
                                <a class="listitem_box">
                                    <article>
                                        <div class="listitem_content">
                                            <div class="listitem_content_num">3</div>
                                            <h1 class="listitem_content_title">마진 0%! 백팩의 새로운 역사를 쓸 2만원대 백팩[유닛백]</h1>
                                            <p class="listitem_content_subtag">
                                                <span class="listitem_content_per">2851%</span>
                                                <span class="listitem_category"> 패션/잡화</span>
                                            </p>
                                        </div>
                                    </article>
                                </a>
                            </div>
                            <div class="g_lank_listitem1">
                                <a class="listitem_box">
                                    <article>
                                        <div class="listitem_content">
                                            <div class="listitem_content_num">4</div>
                                            <h1 class="listitem_content_title">마진 0%! 백팩의 새로운 역사를 쓸 2만원대 백팩[유닛백]</h1>
                                            <p class="listitem_content_subtag">
                                                <span class="listitem_content_per">2851%</span>
                                                <span class="listitem_category"> 패션/잡화</span>
                                            </p>
                                        </div>
                                    </article>
                                </a>
                            </div>
                            <div class="g_lank_listitem1">
                                <a class="listitem_box">
                                    <article>
                                        <div class="listitem_content">
                                            <div class="listitem_content_num">5</div>
                                            <h1 class="listitem_content_title">마진 0%! 백팩의 새로운 역사를 쓸 2만원대 백팩[유닛백]</h1>
                                            <p class="listitem_content_subtag">
                                                <span class="listitem_content_per">2851%</span>
                                                <span class="listitem_category"> 패션/잡화</span>
                                            </p>
                                        </div>
                                    </article>
                                </a>
                            </div>

                        </div>
                    </div>


                </div>
            </div>
            <!--/row-->
        </div>
        <!-- /container -->
    </div>
    <!-- /FUND SECTION -->
    <div class="line" style="margin-bottom: 20px;"></div>    

    <div class="recomend_title">
        <div ><strong> 이런 공동구매 어떤가요?</strong></div>
    </div>
    <section class="regular slider">
        
           <div>
            <div >
                <img src="http://placehold.it/200x110?text=1">
            </div>
            <div>
                <p>
                    와우스틱 미니 초소형 전동 드라이버
                </p>
                <span class="recomanditem_content_per">
                    1.650%
                </span>
            </div>
        </div>
        <div>
            <img src="http://placehold.it/200x110?text=2">
            <div>
                <p>
                    와우스틱 미니 초소형 전동 드라이버
                </p>
                <span class="recomanditem_content_per">
                    1.650%
                </span>
            </div>
        </div>
        <div>
            <div>
                <img src="http://placehold.it/200x110?text=3">
            </div>
            <div>
                <p>
                    와우스틱 미니 초소형 전동 드라이버
                </p>
                <span class="recomanditem_content_per">
                    1.650%
                </span>
            </div>
        </div>
        <div>
            <div>
                <img src="http://placehold.it/200x110?text=4">
            </div>
            <div>
                <p>
                    와우스틱 미니 초소형 전동 드라이버
                </p>
                <span class="recomanditem_content_per">
                    1.650%
                </span>
            </div>
        </div>
        <div>
            <div >
                <img src="http://placehold.it/200x110?text=5" >
            </div>
            <div>
                <p>
                    와우스틱 미니 초소형 전동 드라이버
                </p>
                <span class="recomanditem_content_per">
                    1.650%
                </span>
            </div>
        </div>
        <div>
            <div>
                <img src="http://placehold.it/200x110?text=6">
            </div>
            <div>
                <p>
                    와우스틱 미니 초소형 전동 드라이버
                </p>
                <span class="recomanditem_content_per">
                    1.650%
                </span>
            </div>
        </div>
    </section>



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
                            Copyright &copy;<script>
                                document.write(new Date().getFullYear());
                            </script> All rights reserved | This template is made with <i class="fa fa-heart-o" aria-hidden="true"></i> by <a href="https://colorlib.com" target="_blank">Colorlib</a>
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

</body></html>
