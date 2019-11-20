<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%-- <%@include file="/WEB-INF/include/header.jsp"%>--%>
<jsp:include page="header.jsp" flush="true"/> 
	<!-- Bootstrap -->
  	
    <link rel="stylesheet"  href="https://han3283.cafe24.com/js/lightslider/css/lightslider.css"/>
    <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.3/css/font-awesome.min.css" rel="stylesheet" integrity="#" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="css/slick.css" />
    <link rel="stylesheet" type="text/css" href="css/slick-theme.css" />
   
    <!-- <script type="text/javascript" type="text/javascript" src="js/bootstrap.min.js"></script> -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script src="https://han3283.cafe24.com/js/lightslider/js/lightslider.js"></script> 
    <script type="text/javascript" src="js/slick.min.js"></script>
    
<title>Insert title here</title>
<style>
    a:hover{
        text-decoration: none;
    }    
    h3{
        color: black;
    }
    h5{
        color: black
    }
    img{
        border-radius: 30px;
    }
    .item {
    list-style:none;
    list-style-type:disc;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 40px;
        
    }
   .nav_category_menu {
    list-style:none;
    padding-right: 12px;
    padding-bottom: 4px;
    margin-block-start: 1em;
    margin-block-end: 1em;
    margin-inline-start: 0px;
    margin-inline-end: 0px;
    padding-inline-start: 20px;
    }
    
    .category{
       display: flex;
    }
    #slider{
      list-style: none outside none;
      padding-left: 0;
      margin: 0;
    }
    .slide-content .slide-content{
      margin-bottom: 60px;
         
    }
    .slider li{
      text-align: center;
      color: #FFF;
      background-size:cover;
      background-position: center;
        float: left;
    }
    .slider h3 {
      margin: 0;
      padding: 100px 0;
      height:250px;
    }
    .slide-content{
      width: 100%;
      height:180px;
        
    }
    .nav_category.active .nav_menu_title a {
        display: block;
        line-height: 20px;
        padding: 10px 0 8px;
        background: url(/skin/musinsa/images/sbb.png) no-repeat;
        background-position: top 15px right 0;
    }
     .btnL{
        position:absolute;
       float:left;
       line-height:250px;
       vertical-align: middle;
    }
    
    .btnR1{
        position:absolute;
        top:104px;
       right:0px;

    }
     .btnR2{
        position:absolute;
           top:104px;
       right:0px;

    }
    .sliderSlick{
    	width:100%;
		margin-right: 70px; 
    }
    .row1{padding:30px;}
    .list1{position: relative;}
    .list2{position: relative;}
    /* 편성표 이미지 넣기 */
    .item1{background-image:url('http://han3283.cafe24.com/images/apple.jpg'); }
    .item2{background-image:url('http://han3283.cafe24.com/images/cherry.jpg');}
    .item3{background-image:url('http://han3283.cafe24.com/images/strawberry.jpg');}
    .item4{background-image:url('http://han3283.cafe24.com/images/grape.jpg');}
    .item5{background-image:url('http://han3283.cafe24.com/images/lemon.jpg');}
    .item6{background-image:url('http://han3283.cafe24.com/images/grapefruit.jpg');}
    .item{ width:150px; height: 150px}
</style>
<script>
    $(function(){
        var cnt1=0,cnt2=0;
        $(".category").hide();
        
        
        $("#100").click(function(){
            if(cnt1==0){
                $("#101").show();    
                cnt1=1;
            }else{
                $(".category").hide();
                cnt1=0;
            }
        });
        $("#200").click(function(){
            if(cnt2==0){
                $("#201").show();    
                cnt2=1;
            }else{
                $(".category").hide();
                cnt2=0;
            }
        });
        
        $(".slider").lightSlider({
            mode:'slide',
            loop:true,      
            auto:true,      
            keyPress:true,  
            pager:false,    
            speed:1500,     
            pause:3000
        });

        /* $('.list1').click({
        	nextArrow:$('.next1'),
            prevArrow:$('.prev1')
            });
        $('.list2').click({
        	nextArrow:$('.next'),
            prevArrow:$('.prev')
            }); */
            $('.sliderS1').slick({
                infinite: true,
                slidesToShow: 4,
                slidesToScroll: 4,
                arrows:true,
                nextArrow:$('.next1'),
                prevArrow:$('.prev1'),
                responsive: [
                  {
                    breakpoint: 1024,
                    settings: {
                      slidesToShow: 3,
                      slidesToScroll: 3,
                      infinite: true,
                      /* dots: true */
                    }
                  },
                  {
                    breakpoint: 600,
                    settings: {
                      slidesToShow: 2,
                      slidesToScroll: 2
                     
                    }
                  },
                  {
                    breakpoint: 480,
                    settings: {
                      slidesToShow: 1,
                      slidesToScroll: 1
                      
                    }
                  }
                ]
              });
            $('.sliderS2').slick({
                infinite: true,
                slidesToShow: 4,
                slidesToScroll: 4,
                arrows:true,
                nextArrow:$('.next2'),
                prevArrow:$('.prev2'),
                responsive: [
                  {
                    breakpoint: 1024,
                    settings: {
                      slidesToShow: 3,
                      slidesToScroll: 3,
                      infinite: true,
                      /* dots: true */
                    }
                  },
                  {
                    breakpoint: 600,
                    settings: {
                      slidesToShow: 2,
                      slidesToScroll: 2
                     
                    }
                  },
                  {
                    breakpoint: 480,
                    settings: {
                      slidesToShow: 1,
                      slidesToScroll: 1
                      
                    }
                  }
                ]
              });
      
        $('.multiple-items').slick({
        	  infinite: true,
        	  slidesToShow: 3,
        	  slidesToScroll: 3
        	});
        		
        
    });
</script>

</head>
<body>

<div class="container-fluid">
	<div class="container">
		<div class="col-md-3 ">
		     <div class="list-group ">
             <div>
              <a href="#" class="list-group-item list-group-item-action active" style="background-color: #555; font-size:20px; margin:14px 0 5px 0; text-align:center; border-radius:0px;">쇼핑</a>   
             </div>
             <div >
              <a href="#" class="list-group-item list-group-item-action" id="100">브랜드패션</a>
                  <div id="101" class="category" style="display:flex; ">
                      <ul class="nav_category_menu" style="width:150px;">
                          <li><a href="#">adidas</a></li>
                          <li><a href="#">NIKE</a></li>
                          <li><a href="#">puma</a></li>
                          <li><a href="#">new balance</a></li>
                          <li><a href="#">TOP10</a></li>
                          <li><a href="#">GAP</a></li>
                          <li><a href="#">UNICLO</a></li>
                          <li><a href="#">GIODANO</a></li>
                      </ul>
                  </div>   
              </div>
              <div>
                  <a href="#" class="list-group-item list-group-item-action" id="200">패션의류</a>    
                  <div id="201" class="category" style="display:flex; ">  
                      <ul class="nav_category_menu" style="width:150px">
                          <li><a href="#">adidas</a></li>
                          <li><a href="#">NIKE</a></li>
                          <li><a href="#">puma</a></li>
                          <li><a href="#">new balance</a></li>
                      </ul>
                      <ul class="nav_category_menu" style="width:150px">
                          <li><a href="#">TOP10</a></li>
                          <li><a href="#">GAP</a></li>
                          <li><a href="#">UNICLO</a></li>
                          <li><a href="#">GIODANO</a></li>
                      </ul>
                  </div>
              </div>
              
              <a href="#" class="list-group-item list-group-item-action">잡화/뷰티</a>
              <a href="#" class="list-group-item list-group-item-action">유아동</a>
              <a href="#" class="list-group-item list-group-item-action">식품</a>
              <a href="#" class="list-group-item list-group-item-action">생필품</a>
              <a href="#" class="list-group-item list-group-item-action">홈데코</a>
              <a href="#" class="list-group-item list-group-item-action">건강/렌탈</a>
              <a href="#" class="list-group-item list-group-item-action">문구/취미/반려</a>
              <a href="#" class="list-group-item list-group-item-action">스포츠</a>
              <a href="#" class="list-group-item list-group-item-action">디지털/가전</a>
              <a href="#" class="list-group-item list-group-item-action">영상기기/카메라</a>
              <a href="#" class="list-group-item list-group-item-action">컴퓨터</a>
              <a href="#" class="list-group-item list-group-item-action">여행/도서</a>
              
            </div> 
		</div>
		<div class="col-md-9">
                <div class="card">
                    <div class="card-body">
                        <!--이미지 슬라이드 편성표-->
                        <div class="slide-wrap">
                            <div class="slide-content">
                                <ul id="slider" class="slider">
                                    <li class="item1 item">
                                        <h3>사과</h3>
                                    </li>
                                    <li class="item2 item">
                                        <h3>체리</h3>
                                    </li>
                                    <li class="item3 item">
                                        <h3>딸기</h3>
                                    </li>
                                    <li class="item4 item">
                                        <h3>포도</h3>
                                    </li>
                                    <li class="item5 item">
                                        <h3>레몬</h3>
                                    </li>
                                    <li class="item6 item">
                                        <h3>자몽</h3>
                                    </li>
                                </ul>
                            </div>
                        </div>
						<div>
	                        <div class="col-md-0">
	                            <h4><a href="#">새로운 상품</a></h4>
	                            <hr>
	                        </div>
	                        <div class="list1">
								<div>                   
	                            <i class="prev1 fa fa-angle-left fa-3x btnL"></i>
		                        <div class="list-unstyled video-list-thumbs row1 sliderSlick sliderS1" style="width:300; height: 300px; padding:30;">
		                         <c:forEach items="${list}" var="r">
		                            
		                           <div class="col-lg-3 col-sm-4 col-xs-6">
		                            <c:if test="${r.auction == 0}">
	
		                             <a href="shoppingDetail?pnum=${r.pnum }">
		                             <input type="hidden" value="${r.pnum }">
		                                    <img src="img/${r.p_sangse }" alt="Barca" class="img-responsive" style="width:160px; height:140px;" />
		                                    <h3 style="margin: 15px 0px;">${r.pname }</h3>
		                                    <h5>${r.beuid}</h5>
		                                    <span class="glyphicon glyphicon-play-circle"></span>
		                                    <span class="duration">${r.p_cdate }</span>
		                                </a>
		                            </c:if>

		                            </div>
		                            </c:forEach>
		               
                     	</div>
								<i class="next1 fa fa-angle-right fa-3x btnR1"></i>
	                        	</div>
	                        </div>
                        </div>
                        <hr>
                        <div class="col-md-0">
                            <h4><a href='#'>경매 상품</a></h4>
                            <hr>
                        </div>
                        <div class="list2">
                            <i class="prev2 fa fa-angle-left fa-3x btnL"></i>
                            <div>
                            <div class="list-unstyled video-list-thumbs row1 sliderSlick sliderS2" style="width:300; height: 300px; padding:30px">
                                 <c:forEach items="${list}" var="r">
		                           <div class="col-lg-3 col-sm-4 col-xs-6">
		                            <c:if test="${r.auction == 1}">
		                            	<a href="auctionDetail?pnum=${r.pnum }">
		                            	<input type="hidden" value="${r.pnum }">
		                                <img src="img/${r.p_sangse }" alt="Barca" class="img-responsive" style="width:160px; height:140px;" />
		                                <h3 style="margin: 15px 0px;">${r.pname }</h3>
		                                <h5>${r.beuid}</h5>
		                                <span class="glyphicon glyphicon-play-circle"></span>
		                                <span class="duration">${r.p_cdate }</span>
		                                </a>
		                            </c:if>
		                            </div>
		                            </c:forEach>
                                </div>
                                <!--  
                                <div class="col-lg-3 col-sm-4 col-xs-6">
                                    <a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
                                        <img src="http://i.ytimg.com/vi/ZKOtE9DOwGE/mqdefault.jpg" alt="Barca" class="img-responsive" width="200px" />
                                        <h3>린넨에코백 동물의왕국 330*380mm </h3>
                                        <h5>에코지퍼파우치 인도산세트.</h5>
                                        <span class="glyphicon glyphicon-play-circle"></span>
                                        <span class="duration">03:15</span>
                                    </a>
                                </div>
                                <div class="col-lg-3 col-sm-4 col-xs-6">
                                    <a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
                                        <img src="http://i.ytimg.com/vi/ZKOtE9DOwGE/mqdefault.jpg" alt="Barca" class="img-responsive" width="200px" />
                                        <h3>국산 쿠키에코가방 350*355mm</h3>
                                        <h5>오렌지,네이비,연그레이,찐그레이,핑크,퍼플</h5>
                                        <span class="glyphicon glyphicon-play-circle"></span>
                                        <span class="duration">03:15</span>
                                    </a>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
                                    <a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
                                        <img src="http://i.ytimg.com/vi/ZKOtE9DOwGE/mqdefault.jpg" alt="Barca" class="img-responsive" width="200px"/>
                                        <h3>린넨 스트라이프 에코백 330cm x 380mm</h3>
                                        <h5>레드,블랙</h5>
                                        <span class="glyphicon glyphicon-play-circle"></span>
                                        <span class="duration">03:15</span>
                                    </a>
                                </div>
                                <div class="col-lg-3 col-md-4 col-sm-4 col-xs-6">
                                    <a href="#" title="Claudio Bravo, antes su debut con el Barça en la Liga">
                                        <img src="http://i.ytimg.com/vi/ZKOtE9DOwGE/mqdefault.jpg" alt="Barca" class="img-responsive" width="200px" />
                                        <h3>린넨 스트라이프 에코백 330cm x 380mm</h3>
                                        <h5>레드,블랙</h5>
                                        <span class="glyphicon glyphicon-play-circle"></span>
                                        <span class="duration">03:15</span>
                                    </a>
                                </div>
                                -->
                            </div>
                            <i class="next2 fa fa-angle-right fa-3x btnR2"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
	</div>
</div>
</body>
</html>