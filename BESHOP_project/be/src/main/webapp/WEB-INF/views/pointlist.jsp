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
            <h3>포인트 충전 내역</h3>
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
                            <td style="width: 40%">충전 날짜</td>
                            <td style="width: 20%">충전 포인트</td>
                            <td style="width: 20%">사용 포인트</td>
                            <td style="width: 20%">포인트 잔액</td>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td style="width: 40%">2019-10-20</td>
                            <td style="width: 20%">3500 point</td>
                            <td style="width: 20%">0 point</td>
                            <td style="width: 20%">7000 point</td>
                        </tr>
                    </tbody>
                </table>
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