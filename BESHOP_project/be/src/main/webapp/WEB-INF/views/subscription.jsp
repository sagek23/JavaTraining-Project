<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<jsp:include page="header.jsp"/>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<!-- <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css"/>  -->
<link rel="stylesheet" href="css/main.css">
<link href="css/subsc.css" rel='stylesheet' type='text/css' />
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<link rel="stylesheet" type="text/css" href="css/slick_sub.css">
 <link rel="stylesheet" type="text/css" href="slick/slick-theme_sub.css">
 <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
 <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 <script type="text/javascript" src="slick/slick.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- <style type="text/css">
.MultiCarousel { float: left; overflow: hidden; padding: 10px; width: 100%; position:relative; }
.MultiCarousel .MultiCarousel-inner { transition: 1s ease all; float: left; }
.MultiCarousel .MultiCarousel-inner .item { float: left; }
.MultiCarousel .MultiCarousel-inner .item > div { float:left padding:10px; margin:10px; background:white; color:#666;  width: 214px; height: 205px;}
.MultiCarousel .leftLst, .MultiCarousel .rightLst { position:absolute; border-radius:50%;top:calc(50% - 20px); }
.MultiCarousel .leftLst { left:0; }
.MultiCarousel .rightLst { right:0; }
.con{float: left;}    
.MultiCarousel .leftLst.over, .MultiCarousel .rightLst.over { pointer-events: none; background:#ccc; }
</style> -->
<script src="js/jquery.min.js"></script>
<script src="js/img-scroll.js"></script>
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

});
</script>
</head>

<body>
 
 <div class="main">
      <div class="shop_top">
		<div class="container">
		<div align="left" class="sub">
        	구독 스토어
        <hr>
        </div>
            <div class="store" align="left"><a href=#>djiee의 스토어></a></div>
			<div class="row shop_top">
				<div class="multiple-items" style="width: 1200px; height: 180px; left: 10px; margin: 10px;">
    			<div class="slick-list"><a href="#"><img src="img/uptempo.png" width="200" height="150"/><h5><a href="#">나이키 업템포 블랙</a></h5></div>
    			<div class="slick-list"><a href="#"><img src="img/bag.png" width="200" height="150"/></a><h5><a href="#">캉골미니토트백</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/xsmax.png" width="200" height="150"/></a><h5><a href="#">아이폰xs맥스 256G</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/gnote.png" width="200" height="150"/></a><h5><a href="#">갤럭시노트 10+</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/ipad.png" width="200" height="150"/></a><h5><a href="#">뉴아이패드</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
			    <div class="slick-list"><a href="#"><img src="img/watch.png" width="200" height="150"/></a><h5><a href="#">애플와치4</a></h5></div>
  				</div>	
			</div>
			<br>
			<br>

		 </div>
	   </div>
	  </div>
	  
 <script type="text/javascript" src="//code.jquery.com/jquery-1.11.0.min.js"></script>
 <script type="text/javascript" src="//code.jquery.com/jquery-migrate-1.2.1.min.js"></script>
 <script type="text/javascript" src="slick/slick.min.js"></script>
 <script type="text/javascript">
 $('.multiple-items').slick({
	  infinite: true,
	  arrows: true,
	  slidesToShow: 5,
	  slidesToScroll: 1
	});
 
</script>
</body>
</html>