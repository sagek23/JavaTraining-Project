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
        function preview_images() {
            var total_file = document.getElementById("images").files.length;
            for (var i = 0; i < total_file; i++) {
                $('#image_preview').append("<div class='col-md-3'><img class='img-responsive' src='" + URL.createObjectURL(event.target.files[i]) + "'><i class='glyphicon glyphicon-ok-circle' style='color: limegreen; ''></i></div>");

            }
        }
        $(function() {
            var i = 2;
            $(".add").click(function() {
                $(".option").append("<div><label class='op'>옵션" + i + " : </label><input class='title form-control input-md op"+i+"' type='text' value='옵션" + i + "' style='width: 90%; float:right;'></div>")
                i++;
            });
            var n = 1;
            $(".delInfo").hide();
            $(".addInfo").click(function() {
                $(".info").append("<div id=num" + n + "><label class='title col-md-2 control-label' style='text-align: right'>추가정보 명</label><input class='title form-control input-md' type='text' value='추가정보" + n + "' style='width: 20%; float:left;'><label class='title col-md-2 control-label'> 이미지 </label> <input type='file' name='as'><textarea type='text' style='width: 100%; height: auto;'></textarea></div>")
                $(".addInfo").hide();
                $(".delInfo").toggle();
            });
            $(".delInfo").click(function(){
                $(".info").removechild();
            })
            $(".delInfo").click(function() {
                n--;
                $(".info").remove($("#num" + n));

            });
            $(".salePrice").hide();
            $("#sale").click(function() {
                $(".salePrice").toggle();
            });
            $(".auctionOK").hide();
            $(".now").hide();
            $(".auctionOK").val(0);
            
           /* $("#auction").click(function(){
                $(".now").toggle();                
            });*/
            
            $("#auction").toggle(function(){
                $(".auctionOK").val(1); 
                $(".now").show(); 
                $(".dayname").text("경매 시작일");
                $(".pricename").text("초기 금액");
                
            },function(){
                $(".auctionOK").val(0);
                $(".now").hide(); 
                $(".dayname").text("게시 날짜");
                $(".pricename").text("가 격");
                
            });
            
            $(".addr").hide();
            $(".fa-camera").click(function(){
                $(".addr").click();
                setTimeout(function(){
	                var addr = $(".addr").val();
	                $(".imgC").attr("src","file:///"+addr);
	                alert(addr);
                },3000);
                
            });
            
            new Rolldate({
				el: '#date-group1-4',
				format: 'YYYY-MM-DD hh:mm',
				beginYear: 2000,
				endYear: 2100
			});

           $(".reset").click(function(){
                location.href="main";
           });
        });

    </script>
    
	<style type="text/css">
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
       
    </style>
</head>

<body>
   
    <div class = "container myinfo">
        <div class="row-fluid">
            <div class="span2" >
                <img src="http://imgnews.naver.net/image/018/2019/10/20/0004495762_001_20191020000127820.jpg" style="width:140px; height: 140px;" class="img-circle imgC" id="imgC">
                <div class="overlay">
                    <a href="#" class="icon" title="User Profile" style="width:140px; height: 140px;">
                        <i class="fa fa-camera"></i>
                    </a>
                    <input type="file" class="addr" onchange="document.getElementById('imgC').attr('src',this.value);" >
                </div>
            </div>
            <div class="span8">
                <h2><i class="oldname">킴 해리 </i> <input type="text" name="cname" class="cname"></h2>
                <h6><i>Email: </i><i name="cemail" class="cemail">goflrhdwn1@gmail.com</i></h6>
                <h6><i>지역: </i><i name="caddr" class="caddr">인천</i></h6>
                <h6><i>나이: </i><i name="cage" class="cage">비공개</i></h6>
              	<h6><i name="cdetail" class="cdetail">나는 누구이며 누구다</i></h6>
            </div>


            <div class="span3">
                <div class="btn-group">
                    <a class="btn dropdown-toggle btn-info" data-toggle="dropdown" href="#">
                       	수정하기
                    </a>
                    
                </div>
            </div>
        </div>

    </div>
	<form action="addProduct" method="POST" enctype="multipart/form-data">
	    <div class="container">
	        <div class="col-md-13">
	            <div class="panel with-nav-tabs panel-primary">
	                <div class="panel-body">
	                    <div class="tab-content">
	                        <div class="tab-pane fade in active" id="Tabs-Keempat">
	                            <div class="col-md-12">
	                                <!---->
	                                <div class="form-group files" style="width:100%; height: 330px;">
	                                    <label>영상 파일 업로드 </label>
	                                    <input type="file" class="form-control upload" name="video" style="width:100%; height:300px;">
	                                </div>
	                                <div class="col-md-12" style="text-align:right;">
	                                    <label class="title col-md-4 control-label" style="text-align: left">상품명 </label>
	                                    <input type="text" class="title form-control input-md pname" name="pname" style="width: 100%;"><br>
	                                    <label class="title col-md-4 control-label" style="text-align: left">설 명</label>
	                                    <input type="text" class="text form-control input-md explain" name="detail" style="width: 100%;"><br>
	                                    <div class="" style="display:flex;">
	                                        <div style="display:flow-root; text-align:left " class="control">
	                                            <label class="title col-md-4 control-label" style="width:100px;">수량 </label><br><input class="form-control input-md qty" type="number" name="stock" style="width: 130px;">
	                                        </div>
	                                        <div style="display:flow-root; text-align:left" class="control">
	                                            <label class="title col-md-4 control-label pricename" style="width:100px;">가 격 </label><br><input class="form-control input-md price" type="number" min="5000" name="p_price" style="width: 130px;">
	                                        </div>
	                                        <div style="display:flow-root; text-align:left" class="control now">
	                                            <label class="title col-md-4 control-label" style="width:100px;">즉시구매가 </label><br><input class="form-control input-md nowprice" type="number" min="5000" name="p_price" style="width: 130px;">
	                                        </div>
	                                        <div class="salePrice control" style=" display:flow-root; text-align: left">
	                                            <label class="title col-md-7 control-label" style="width:130px;">할인전 금액</label> <br><input class="form-control input-md sprice" type="number" min="5000" name="p_sprice" style="width: 130px;">
	                                        </div>
	                                        <div>
	                                            <label class="control-label" style="margin-top: 5px;">할인 적용</label><br>
	                                            <label class="switch" style=" float: right; margin-top: 5px;">
	                                                <input type="checkbox" id="sale">
	                                                <span class="slider round"></span>
                                                </label>
	                                        </div>
	                                        &nbsp;&nbsp;&nbsp;
	                                        <div >
                                                <label class="control-label" style="margin-top: 5px; ">경매 기능</label><br>
                                                <label class="switch" style=" float: right; margin-top: 5px;">
                                                    <input type="checkbox" id="auction">
                                                    <span class="slider round"></span>
                                                </label>
                                            </div>
                                            <div>
                                                <input type="number" class="auctionOK"> 
                                            </div>
	                                    </div> <br>
	                                    <label class="title col-md-4 control-label" style=" display:flow-root; text-align:left">옵션명 </label>
	                                    <a class="add btn btn-dark" name="add" style="float:right">옵션 추가</a><input class="form-control opname" name="select_op" type="text" style="width:100%;">
	
	                                    <div class="option">
	                                        <label class="op">옵션1 : </label><input class='title form-control input-md op1' name="option" type="text" value="옵션1" style="width: 90%; float: right;">
	                                    </div><br>
	                                    <div class="info">
	                                        <label class="title col-md-4 control-label" style="text-align: left">상세정보</label>
	                                        <label class="title col-md-2 control-label"> 상세정보 이미지 </label>
	                                        <input class="sangse" type="file" name="sangse" style="width: auto;">
	                                        <textarea class="sangsetext" type="text" style="width: 100%; height: auto;"> 이미지만 넣으셔도 됩니다.</textarea>
	                                        <a class="btn btn-dark addInfo" name="addInfo">정보추가</a>
	                                        <a class="btn btn-dark delInfo" name="delInfo">삭제</a><br>
	                                    </div>
	                                    <div class="form-group clearfix">
	                                        <label class="title col-md-4 control-label dayname" style="text-align: left">게시 날짜</label>
	                                        <div class="col-xs-13">
	                                            <input readonly class="form-control p_cdate" type="text" id="date-group1-4" name="p_cdate" placeholder="YYYY-MM-DD hh:mm">
	                                        </div>
	                                    </div>
	                                    <div>
	                                        
	                                    </div>
	                                    <div style="float: right">
								            <input class="btn btn-dark save" type="submit" value="확인">
								            <input class="btn btn-dark reset" type="reset" value="취소">
								        </div>
                                        
	                                </div>
	                            </div>
	                        </div>
	                    </div>
	                </div>
	            </div>
	        </div>
	        
	    </div>
    </form>
</body>

</html>