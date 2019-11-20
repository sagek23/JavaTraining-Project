<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <title> Title </title>
    <!--<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">-->
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <!------ Include the above in your HEAD tag ---------->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" rel="stylesheet">
    <script type="text/javascript" src="http://www.expertphp.in/js/jquery.form.js"></script>
    <script src="https://code.jquery.com/jquery-1.8.1.min.js"></script>
    <script type="text/javascript" src="js/rolldate.min.js"></script>
    
    <script>
      
        $(function() {
            	var beuid = $("#beuid").val();
			if($("#msg").val() == "실패"){
				alert("상품등록에 실패하였습니다.");
			}
			else if($("#msg").val() == "성공"){
				alert("상품등록에 성공하였습니다.");
			}
				/*  <div class="product">
	                                <img src="">
	                                <p style="margin-top:10px">오버워치 에디션</p>
	                                <p>35,000원</p>
	                                <p>2019-11-03</p>
	                                </div> */
	                                $(".content").empty();
			$.getJSON("plist", {beuid:$("#beuid").val()}, function(r){
					$.each(r, function(idx, item){
							var product = $("<div><div>").attr("class","product");
							var img = $("<img>").attr("src","img/"+item.p_sangse);
							var pname = $("<p></p>").html(item.pname).css("margin-top","10px");
							var p_price = $("<p></p>").html("가격 : "+item.p_price);
							var time = $("<p></p>").html("게시일 : "+item.p_cdate);
							if(item.auction == 1){
								var auction = $("<p></p>").html("!!경매 상품!!");
								product.append(img, pname, p_price, time, auction);
								$(".content").append(product);
							}
							else{
								product.append(img, pname, p_price, time);
								$(".content").append(product);
							}
					});
				});
            
        });

    </script>
    
	<style type="text/css">
        .content2 {min-height: 1200px;}
        h1 {
			font-size: 30px;
		}

		.form-control[readonly] {
			background: none;
		}
        
        body {
            margin-top: 20px;

        }

        input {
            display: inline-block;
        }


        .upload {
            background-position: center;
            
            background-image: url(img/upload-image-icon2.jpg);
            background-repeat: no-repeat;
        }

        .text {
            width: "500px";
        }

        .switch {
            position: relative;
            display: inline-block;
            width: 42px;
            height: 24px;
            top: 10;
        }

        .switch input {
            opacity: 0;
            width: 0;
            height: 0;
        }

        .slider {
            position: absolute;
            cursor: pointer;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            background-color: #ccc;
            -webkit-transition: .4s;
            transition: .4s;
        }

        .slider:before {
            position: absolute;
            content: "";
            height: 16px;
            width: 16px;
            left: 4px;
            bottom: 4px;
            background-color: white;
            -webkit-transition: .4s;
            transition: .4s;
        }

        input:checked+.slider {
            background-color: #2196F3;
        }


        input:checked+.slider:before {
            transform: translateX(18px);
        }

        /* Rounded sliders */
        .slider.round {
            border-radius: 29px;
        }

        .slider.round:before {
            border-radius: 50%;
        }

        .title {
            float: left;
            padding-top: 5px;
        }

        .control {
            padding-right: 50px;
            margin: 1px;
        }

        .op {
            padding: 5px;
        }
        .myinfo div{
           float:left;
            padding-right: 30px;
            padding-left: 30px;
        }
        .myinfo{
            margin-bottom: 15px;
            
            
        }
        .span2{
            position: relative;
        }
        .imgC{
          display: block;
          width: 100%;
          height: auto;
        }
        .overlay {
          position: absolute;
          top: 0;
          bottom: 0;
          left: 0;
          margin-left: 30px;
          right: 0;
          height: 140px;
          width: 140px;
          border-radius: 100px;
          opacity: 0;
          transition: .3s ease;
          background-color: white;
          
          
        }
         .span2:hover .overlay {
          opacity: 0.5;
        }
        

        .icon {
          color: white;
          font-size: 100px;
          position: absolute;
          top: 50%;
          left: 50%;
          transform: translate(-50%, -50%);
          -ms-transform: translate(-50%, -50%);
          text-align: center;
        }

        .fa-camera:hover {
          color: red;
        }
        .product{width:300px; height: 300px; margin:30px 27px; text-align: center; float:left;}
        .product img{width:300px; height: 200px;}
         .btn-group a{margin: 95px 10px;}
    </style>
</head>

<body>
   
    <div class = "container myinfo">
        <div class="row-fluid">
            <div class="span2" >
                <img src="img/${sessionScope.ch_img }" style="width:140px; height: 140px;" class="img-circle imgC" id="imgC">
                
            </div>
           <input type="hidden" id="msg" value="${msg}">
           <div class="span8">
            <input type="hidden" name="beuid" id="beuid" value="${sessionScope.beuid}">
                <h2><i class="oldname">${sessionScope.ch_name}</i> </h2>
                <h3><i class="oldname">${sessionScope.uname}님의 채널</i> </h3>
                <h6><i>Email: </i><i name="email" class="cemail">${sessionScope.email}</i></h6>
   
            </div>


            <div class="span3">
                <div class="btn-group">
                    <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="/beshop/addProduct">
                       	상품 등록하기
                    </a>
                     <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="/beshop/main">
                       	메인으로 가기
                    </a>
                </div>
            </div>
        </div>

    </div>
	    <div class="container">
	        <div class="col-md-13">
	            <div class="panel with-nav-tabs panel-primary">
	                <div class="panel-body">
	                    <div class="tab-content">
	                        <div class="tab-pane fade in active" id="Tabs-Keempat">
	                            <div class="col-md-12 content2" >
	                                <!----> 
	                               <h3>판매중인 상품</h3>
	                               <div class="content">
	                               	<h2>등록된 상품이 없습니다.</h2>
	                               	<div>
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        </div>
	    </div>
    
</body>

</html>