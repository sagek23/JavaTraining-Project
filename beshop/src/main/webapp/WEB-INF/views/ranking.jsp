<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp" flush="true"/>
 

<link href="css/rank.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.MultiCarousel { float: left; overflow: hidden; padding: 10px; width: 100%; position:relative; }
.MultiCarousel .MultiCarousel-inner { transition: 1s ease all; float: left; }
.MultiCarousel .MultiCarousel-inner .item { float: left; }
.MultiCarousel .MultiCarousel-inner .item > div { float:left padding:10px; margin:10px; background:white; color:#666;  width: 214px; height: 205px;}
.MultiCarousel .leftLst, .MultiCarousel .rightLst { position:absolute; border-radius:50%;top:calc(50% - 20px); }
.MultiCarousel .leftLst { left:0; }
.MultiCarousel .rightLst { right:0; }
.con{float: left;}    
.MultiCarousel .leftLst.over, .MultiCarousel .rightLst.over { pointer-events: none; background:#ccc; }
</style>
<script type="text/javascript">
$(document).ready(function () {
    var itemsMainDiv = ('.MultiCarousel');
    var itemsDiv = ('.MultiCarousel-inner');
    var itemWidth = "";

    $('.leftLst, .rightLst').click(function () {
        var condition = $(this).hasClass("leftLst");
        if (condition)
            click(0, this);
        else
            click(1, this)
    });

    ResCarouselSize();


    $(window).resize(function () {
        ResCarouselSize();
    });

    //this function define the size of the items
    function ResCarouselSize() {
        var incno = 0;
        var dataItems = ("data-items");
        var itemClass = ('.item');
        var id = 0;
        var btnParentSb = '';
        var itemsSplit = '';
        var sampwidth = $(itemsMainDiv).width();
        var bodyWidth = $('body').width();
        $(itemsDiv).each(function () {
            id = id + 1;
            var itemNumbers = $(this).find(itemClass).length;
            btnParentSb = $(this).parent().attr(dataItems);
            itemsSplit = btnParentSb.split(',');
            $(this).parent().attr("id", "MultiCarousel" + id);


            if (bodyWidth >= 1200) {
                incno = itemsSplit[3];
                itemWidth = sampwidth / incno;
            }
            else if (bodyWidth >= 992) {
                incno = itemsSplit[2];
                itemWidth = sampwidth / incno;
            }
            else if (bodyWidth >= 768) {
                incno = itemsSplit[1];
                itemWidth = sampwidth / incno;
            }
            else {
                incno = itemsSplit[0];
                itemWidth = sampwidth / incno;
            }
            $(this).css({ 'transform': 'translateX(0px)', 'width': itemWidth * itemNumbers });
            $(this).find(itemClass).each(function () {
                $(this).outerWidth(itemWidth);
            });

            $(".leftLst").addClass("over");
            $(".rightLst").removeClass("over");

        });
    }


    //this function used to move the items
    function ResCarousel(e, el, s) {
        var leftBtn = ('.leftLst');
        var rightBtn = ('.rightLst');
        var translateXval = '';
        var divStyle = $(el + ' ' + itemsDiv).css('transform');
        var values = divStyle.match(/-?[\d\.]+/g);
        var xds = Math.abs(values[4]);
        if (e == 0) {
            translateXval = parseInt(xds) - parseInt(itemWidth * s);
            $(el + ' ' + rightBtn).removeClass("over");

            if (translateXval <= itemWidth / 2) {
                translateXval = 0;
                $(el + ' ' + leftBtn).addClass("over");
            }
        }
        else if (e == 1) {
            var itemsCondition = $(el).find(itemsDiv).width() - $(el).width();
            translateXval = parseInt(xds) + parseInt(itemWidth * s);
            $(el + ' ' + leftBtn).removeClass("over");

            if (translateXval >= itemsCondition - itemWidth / 2) {
                translateXval = itemsCondition;
                $(el + ' ' + rightBtn).addClass("over");
            }
        }
        $(el + ' ' + itemsDiv).css('transform', 'translateX(' + -translateXval + 'px)');
    }

    //It is used to get some elements from btn
    function click(ell, ee) {
        var Parent = "#" + $(ee).parent().attr("id");
        var slide = $(Parent).attr("data-slide");
        ResCarousel(ell, Parent, slide);
    }
	$("#storeName").change(function() {
		alert("#storeName").val();
	});    
    
});
</script>
</head>

<body>
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

    
   <!--메인 영역 넓이 1100px, 높이 570d으로 맞추기 -->
    <!--홈페이지 상단 메뉴, 로고 영역-->
    
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

  <div class="navbar">
  
</div>

 <div class="main">
      <div class="shop_top">
		<div class="container">
		
			<div class="row shop_top">
			<div id="top3" class="top3">
			
			<c:forEach var="p" begin="0" end="2" items="${listranking}" varStatus="status">
			 
			   
				<div class="shop_box" id="first">
                    <div class="proimg"><img src="img/${p.ch_img}" width="50" height="50" class="proicon"/></div>
                    
					<div class="shop_rank">
                        <div class="rank"><div class="ranking"><strong class="ranknum">${status.count }</strong>
                        <a href="#" class="storeName">${p.ch_name }</a></div>
						
                        <p class="storeIdTop">${p.beuid}</p>
                        <div class="rate">
                        <img src="img/heart.png" class="icon2">&nbsp;${p.likes }&nbsp;&nbsp;&nbsp;
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				
				</c:forEach>
				<%-- </c:if> --%>
		<!-- 		<div class="shop_box" id="second">
                    <div class="proimg"><img src="img/dpro.png" class="proicon"/></div>
					<div class="shop_rank">
                        <div class="rank"><div class="ranking"><strong class="ranknum">2</strong>
                        <a href="#" class="storeName">abcde스토어</a></div>
						 <p class="storeIdTop">abcde</p>
                        <div class="rate">
                        <img src="img/heart.png" class="icon2">&nbsp;999&nbsp;&nbsp;&nbsp;
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                        </div>
                    </div>
				
				<div class="shop_box" id="third">
                    <div class="proimg"><img src="img/dpro.png" class="proicon"/></div>
					<div class="shop_rank">
                        <div class="rank"><div class="ranking"><strong class="ranknum">3</strong>
                        <a href="#" class="storeName">fghijk스토어</a></div>
						 <p class="storeIdTop">fghijk</p>
                        <div class="rate">
                        <img src="img/heart.png" class="icon2">&nbsp;944&nbsp;&nbsp;&nbsp;
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div> -->
                </div>
				</div>
				
				<%-- <c:otherwise> --%>
				<c:forEach var="p" begin="3" end="10" items="${listranking }" varStatus="status">
				
				<%-- <c:if test="${p.r <= 10}"> --%>
				<div class="shop_box_small" id="fourth">
                    <div class="rankingSmall"><strong class="ranknumSmall">${status.count + 3}</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/${p.ch_img}" width="50" height="50" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">${p.ch_name }</a></div>
                        <div class="storeId">${p.beuid }</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>${p.likes }&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				<%-- </c:if> --%>
				</c:forEach>
				<%-- </c:otherwise> --%>
				
				
		<!-- 		<div class="shop_box_small" id="fifth">
                    <div class="rankingSmall"><strong class="ranknumSmall">5</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/dpro.png" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">pqr스토어</a></div>
                        <div class="storeId">pqr</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>888&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				
				<div class="shop_box_small" id="sixth">
                    <div class="rankingSmall"><strong class="ranknumSmall">6</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/dpro.png" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">stuv스토어</a></div>
                        <div class="storeId">stuv</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>876&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				
				<div class="shop_box_small" id="seventh">
                    <div class="rankingSmall"><strong class="ranknumSmall">7</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/dpro.png" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">w스토어</a></div>
                        <div class="storeId">w</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>866&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				
				<div class="shop_box_small" id="eighth">
                    <div class="rankingSmall"><strong class="ranknumSmall">8</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/dpro.png" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">xyz스토어</a></div>
                        <div class="storeId">xyz</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>855&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				
				<div class="shop_box_small" id="nineth">
                    <div class="rankingSmall"><strong class="ranknumSmall">9</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/dpro.png" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">짱구스토어</a></div>
                        <div class="storeId">짱구</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>844&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div>
				
				<div class="shop_box_small" id="tenth">
                    <div class="rankingSmall"><strong class="ranknumSmallt">10</strong></div>
					<div class="shop_rankSmall">
                        <div class="rankSmall"><div class="proimgSmall"><img src="img/dpro.png" class="proiconSmall"/></div>
                        <div class="storeNameSmall">
                        <a href="#">티라노스토어</a></div>
                        <div class="storeId">티라노</div>
						<div class="rateSmall">
                        <img src="img/heart.png" class="icon2">&nbsp;<span>833&nbsp;&nbsp;&nbsp;</span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span>
                        <span class="fa fa-star checked"></span><br>
                         </div>
                        </div>
                    </div>
				</div> -->
			</div>
		 </div>
		 </div>
</body>
</html>