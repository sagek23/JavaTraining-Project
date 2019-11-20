<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
   <html>

    <head>
   
        <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css" />
         <link href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700" rel="stylesheet">
    <!-- Bootstrap -->
    <link type="text/css" rel="stylesheet" href="css/bootstrap.min.css" />
    <link type="text/css" rel="stylesheet" href="css/bootstrap.css" />
    <!-- Slick -->
    <link type="text/css" rel="stylesheet" href="css/slick.css" />
    <link type="text/css" rel="stylesheet" href="css/slick-theme.css" />
    <!-- nouislider -->
    <link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />
    <!-- Font Awesome Icon -->
    <link rel="stylesheet" href="css/font-awesome.min.css">
 <link href="css/orderList.css" rel="stylesheet">
      <!-- Custom stlylesheet -->
    <link type="text/css" rel="stylesheet" href="css/style.css" />
        <script src="http://code.jquery.com/jquery-1.11.0.min.js"></script>
        <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
        <!-- datepicker 한국어로 -->
        <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
        <script type="text/javascript">
			$(function(){
				//alert("ok");
				$.getJSON("orderedList", function(data){
					//console.log(data);
					$.each(data, function(idx, item){
						var tr = $("<tr></tr>");
						var a = $("<a></a>").attr({href:"/orderDetail?onum="+item.onum, role:"button", type:"submit"});
						var a2 = $("<a></a>").attr({href:"/addReview?pnum="+item.pnum, role:"button", id:"rbtn"});
						var btn = $("<button></button>").attr("id","reviewBtn");
						$(a).html(item.onum);
						$(btn).html("리뷰작성");
						var td1 = $("<td></td>");
						var td2 = $("<td></td>").html(item.oname);
						var td3 = $("<td></td>").html(item.ocount);
						var td4 = $("<td></td>").html(item.oprice);
						var td5 = $("<td></td>").html(item.dprice);
						var td6 = $("<td></td>").html(item.dstatus+"<br>");
						$(a2).append(btn);
						$(td1).attr("width", "10%");
						$(td2).attr("width", "30%");
						$(td3).attr("width", "10%");
						$(td4).attr("width", "20%");
						$(td5).attr("width", "10%");
						$(td6).attr("width", "20%");
						$(td6).addClass("status");
						$(td6).append(a2);
						$(td1).append(a);
						$(tr).append(td1, td2, td3, td4, td5, td6);
						$("#tb").append(tr);

						var status = $(td6).html();
						substring = "배송완료";
						var onum = item.onum;
						var pnum = item.pnum;
						console.log(onum);
						console.log(pnum);
						$("#onum").val(onum);
						$("#pnum").val(onum);

						
						if(status.indexOf(substring) == 0){
							$(btn).show();
							//console.log(status.indexOf(substring));
							//console.log(status);
						}
						else if(status.indexOf(substring) == -1)
						{
							$(btn).hide();
							//console.log(status.indexOf(substring));
							//console.log(status);
						}
						
						
						
					});
					
				});
				
			});
			

  </script>
        <script>
            $(document).ready(function () {
                //datepicker 한국어로 사용하기 위한 언어설정
                $.datepicker.setDefaults($.datepicker.regional['ko']);
                // Datepicker            
                $(".datepicker").datepicker({
                    showButtonPanel: true
                    , dateFormat: "yy-mm-dd"
                    , onClose: function (selectedDate) {
                        var eleId = $(this).attr("id");
                        var optionName = "";
                        if (eleId.indexOf("StartDate") > 0) {
                            eleId = eleId.replace("StartDate", "EndDate");
                            optionName = "minDate";
                        }
                        else {
                            eleId = eleId.replace("EndDate", "StartDate");
                            optionName = "maxDate";
                        }
                        $("#" + eleId).datepicker("option", optionName, selectedDate);
                        $(".searchDate").find(".chkbox2").removeClass("on");
                    }
                });
                //시작일.
                /*$('#searchStartDate').datepicker("option","onClose", function( selectedDate ) {    
                    // 시작일 datepicker가 닫힐때
                    // 종료일의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                    $("#searchEndDate").datepicker( "option", "minDate", selectedDate );
                    $(".searchDate").find(".chkbox2").removeClass("on");
                });
                */
                //종료일.
                /*$('#searchEndDate').datepicker("option","onClose", function( selectedDate ) {    
                    // 종료일 datepicker가 닫힐때
                    // 시작일의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정 
                    $("#searchStartDate").datepicker( "option", "maxDate", selectedDate );
                    $(".searchDate").find(".chkbox2").removeClass("on");
                });
                */
                $(".dateclick").dateclick(); // DateClick
                $(".searchDate").schDate(); // searchDate
            });
            // Search Date
            jQuery.fn.schDate = function () {
                var $obj = $(this);
                var $chk = $obj.find("input[type=radio]");
                $chk.click(function () {
                    $('input:not(:checked)').parent(".chkbox2").removeClass("on");
                    $('input:checked').parent(".chkbox2").addClass("on");
                });
            };
            // DateClick
            jQuery.fn.dateclick = function () {
                var $obj = $(this);
                $obj.click(function () {
                    $(this).parent().find("input").focus();
                });
            }

            function setSearchDate(start) {
                var num = start.substring(0, 1);
                var str = start.substring(1, 2);
                var today = new Date();
                //var year = today.getFullYear();
                //var month = today.getMonth() + 1;
                //var day = today.getDate();
                var endDate = $.datepicker.formatDate('yy-mm-dd', today);
                $('#searchEndDate').val(endDate);
                if (str == 'd') {
                    today.setDate(today.getDate() - num);
                }
                else if (str == 'w') {
                    today.setDate(today.getDate() - (num * 7));
                }
                else if (str == 'm') {
                    today.setMonth(today.getMonth() - num);
                    today.setDate(today.getDate() + 1);
                }
                var startDate = $.datepicker.formatDate('yy-mm-dd', today);
                $('#searchStartDate').val(startDate);
                // 종료일은 시작일 이전 날짜 선택하지 못하도록 비활성화
                $("#searchEndDate").datepicker("option", "minDate", startDate);
                // 시작일은 종료일 이후 날짜 선택하지 못하도록 비활성화
                $("#searchStartDate").datepicker("option", "maxDate", endDate);
            }
        </script>
        <style>
        #reviewBtn{
        	border: 0.5px solid gray;
        	width: 30%;
        	height: 40%;
        	margin-top: 2%;
        }
            .del_state{
                width: 85%;
                height: 210px;
                clear: both;
                margin: 20px auto;
            }
            .del_state li{
                width:150px;
                float: left;
                margin: 0 15px;
            }
            .circle{
                width: 150px;
                height: 150px;
                background-color: #444;
                color:#fff;
                border-radius: 100px;
                line-height: 150px;
                text-align: center;
            }
            .sub{text-align: center;}
           
        </style>
    
    </head>
    <body>
        <div id="mainFram">
            <h3>주문/배송조회</h3>
            <div id="orderSearch">
                <form>
                    <!-- search -->
                    <table class="searchBox">
                        <caption>조회</caption>
                        <colgroup>
                            <col width="123px">
                                <col width="*">
                        </colgroup>
                        <tbody>
                            <tr>
                                <th>조회기간</th>
                                <td>
                                    <ul class="searchDate">
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType1" onclick="setSearchDate('0d')"/>
                                    <label for="dateType1">당일</label>
                                </span> </li>
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType2" onclick="setSearchDate('3d')"/>
                                    <label for="dateType2">3일</label>
                                </span> </li>
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType3" onclick="setSearchDate('1w')"/>
                                    <label for="dateType3">1주</label>
                                </span> </li>
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType4" onclick="setSearchDate('2w')"/>
                                    <label for="dateType4">2주</label>
                                </span> </li>
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType5" onclick="setSearchDate('1m')"/>
                                    <label for="dateType5">1개월</label>
                                </span> </li>
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType6" onclick="setSearchDate('3m')"/>
                                    <label for="dateType6">3개월</label>
                                </span> </li>
                                        <li> <span class="chkbox2">
                                    <input type="radio" name="dateType" id="dateType7" onclick="setSearchDate('6m')"/>
                                    <label for="dateType7">6개월</label>
                                </span> </li>
                                    </ul>
                                    <div class="clearfix">
                                        <!-- 시작일 --><span class="dset">
                                <input type="text" class="datepicker inpType" name="searchStartDate" id="searchStartDate" >
                                <a href="#"><img src="img/calendar.gif"  class="btncalendar dateclick"></a>
                            </span> <span class="demi">~</span>
                                        <!-- 종료일 --><span class="dset">
                                <input type="text" class="datepicker inpType" name="searchEndDate" id="searchEndDate" >
                                <a href="#"><img src="img/calendar.gif"  class="btncalendar dateclick"></a>
                            </span> </div>
                                </td>
                            </tr>
                            <tbody>
                    </table>
                </form>
                <table class="table orderlist">
                    <thead>
                        <tr>
                            <td style="width: 10%">주문번호</td>
                            <td style="width: 30%">상품명</td>
                            <td style="width: 10%">수량</td>
                            <td style="width: 20%">상품가격</td>
                            <td style="width: 10%">배송비</td>
                            <td style="width: 20%">진행사항</td>
                        </tr>
                    </thead>
                    <tbody id="tb">
                      
                    </tbody>
                </table>
                <form action="/orderDetail" method="POST">
                	<input type="hidden" id="onum" name="onum">
                </form>
                <form action="/shoppingDetail" method="POST">
                	<input type="hidden" id="pnum" name="pnum">
                </form>
            </div>
            <div class="sangtae" style="margin-top:100px;">
                <h3>주문상태 및 취소기간 안내</h3>
                <div id="orderHistory">
                    <ul class="del_state">
                        <li><p class="circle">결제 완료</p><p class="sub">입금(결제) 확인이<br>완료되었습니다.</p></li>
                        <li><p class="circle">상품 준비중</p><p class="sub">
                            주문하신 상품을 발송할 예정입니다.
                        </p></li>
                        <li><p class="circle">배송 시작</p><p class="sub">상품 준비가 완료되어 곧 배송 될 예정입니다.</p></li>
                        <li><p class="circle">배송 중</p><p class="sub">상품이 고객님께<br>배송중입니다.</p></li>
                        <li><p class="circle">배송 완료</p><p class="sub">상품이 주문자에게<br>전달완료 되었습니다.</p></li>
                    </ul>
                </div>
            </div>
              <!-- jQuery Plugins -->
        <script src="js/jquery.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/slick.min.js"></script>
        <script src="js/nouislider.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/main.js"></script>
        <script src="assets/js/util.js"></script>
        <!-- util functions included in the CodyHouse framework -->
        <script src="assets/js/main.js"></script>
        </div>
    </body>

    </html>