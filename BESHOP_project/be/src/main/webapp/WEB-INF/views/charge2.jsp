<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="css/pcharge.css?ver=1" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/bootstrap.min.css?ver=1">
<link rel="stylesheet" href="css/selectric.css?ver=1">

<script src="//code.jquery.com/jquery.min.js"></script>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
<script src="https://netdna.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="js/bootstrap-add-clear.js"></script>
<script type="text/javascript" src="https://service.iamport.kr/js/iamport.payment-1.1.5.js"></script>
<script>
$(function(){
  $("#amount").addClear({
	  closeSymbol: "",
	  symbolClass: 'glyphicon glyphicon-remove',
	  color: "#CCC",
	  top: 0,
	  right: 20,
	  returnFocus: true,
	  showOnLoad: false,
	  onClear: null,
	  hideOnBlur: false,
	  clearOnEscape: true,
	  wrapperClass: '',
	  zindex: 100
  });

	$("#10000").click(function(){
		$("#amount").val($(this).val())
		});
	$("#50000").click(function(){
		$("#amount").val($(this).val())
		});
	$("#100000").click(function(){
		$("#amount").val($(this).val())
		});
	$("#150000").click(function(){
		$("#amount").val($(this).val())
		});
	$("#200000").click(function(){
		$("#amount").val($(this).val())
		});
	
	 
	/*
	$("#chgBtn").click(function () {
	      location.href = "chargeCom.jsp";
	    });
	$("#chgBtn").click(function(){
		alert($("#beuid").val()+","+$("#payment").val()+" and "+$("#amount").val())
		});
	*/

});
</script>
</head>
<body>
<div id="top">
	<img id="logo" src="img/logo.png">
</div>
<div id="cbox"><span id="ccharge">충전</span></div>
<form action="/charge2"  method="POST" id="charging">
<div id="pointPg">
		<div id="charge">포인트 충전</div>
            <div class="payBox">
                 <div id="amountCash">충전금액</div>
					<input id="beuid" type="hidden" value="bee" name="beuid"> <!-- 테스트로 넣은 것. 나중에 지우기 -->
					<input id="beuid" type="hidden" value="010-1111-2222" name="phone"> <!-- 테스트로 넣은 것. 나중에 지우기 -->
					<input type="number" name="chargelist" id="amount" placeholder="충전할 금액을 입력하세요.">
                <div id="btnBox"><button class="money" type="button" name="chargelist" value=10000 id="10000">+10,000P</button><button class="money" type="button" name="chargelist" value=50000 id="50000">+50,000P</button><button class="money" name="chargelist" value=100000 id="100000" type="button">+100,000P</button><button class="money" name="chargelist" value=150000 id="150000" type="button">+150,000P</button><button class="money" name="chargelist" value=200000 id="200000" type="button">+200,000P</button></div>
                <span id="pmethod">충전수단</span>
                    <div id="pay">
                        <select id="paymethod" name="chargemethod">
                            <option value="카카오페이"  selected="selected">카카오페이</option>
                            <option value="네이버페이">네이버페이</option>
                        </select>
                    </div>
            </div>
		<div id="charging"><button id="chgBtn" type="button">충전하기</button></div>
	</div>
</form>
<script>
	
    $("#chgBtn").click(function () {
    	if($("#paymethod").val()=="카카오페이"){
    		$(function(){
    			 var IMP = window.IMP; // 생략가능
                 IMP.init('imp91760461'); // 'iamport' 대신 부여받은 "가맹점 식별코드"를 사용
                 var msg;

                 IMP.request_pay({
                     pg : 'kakaopay',
                     pay_method : 'card',
                     merchant_uid : 'merchant_' + new Date().getTime(),
                     name: 'BeShop 포인트 충전',
   	              //결제창에서 보여질 이름
   	              amount: $("#amount").val(),
   	              //가격
   	              buyer_name: $("#beuid").val(),
   	              buyer_tel: $("#phone").val()

                 }, function(rsp) {
                     if ( rsp.success ) {
                         //[1] 서버단에서 결제정보 조회를 위해 jQuery ajax로 imp_uid 전달하기
                         jQuery.ajax({
                             url: "/payments/complete", //cross-domain error가 발생하지 않도록 주의해주세요
                             type: 'POST',
                             dataType: 'json',
                             data: {
                                 imp_uid : rsp.imp_uid
                                 //기타 필요한 데이터가 있으면 추가 전달
                                
                             }
                         }).done(function(data) {
                             //[2] 서버에서 REST API로 결제정보확인 및 서비스루틴이 정상적인 경우
                             if ( everythings_fine ) {
                                 msg = '결제가 완료되었습니다.';
                                 msg += '\n고유ID : ' + rsp.imp_uid;
                                 msg += '\n상점 거래ID : ' + rsp.merchant_uid;
                                 msg += '\결제 금액 : ' + rsp.paid_amount;
                                 msg += '카드 승인번호 : ' + rsp.apply_num;
                                 
                                 alert(msg);
                             }
   
                         });
                         $('#charging').on('submit', function() {
                             console.log("submit 동작하나요")
                             // Prevent the page from reloading
                           /*  event.preventDefault();

                             var chargelist = $("#amount").val()
                             var chargemethod = $("#paymethod").val();
                             alert(chargelist+","+chargemethod);
								-*/
                             });   
                         //성공시 이동할 페이지      
                         location.href='/chargeCom';                         
                        
                     } else {
                         msg = '결제에 실패하였습니다.';
                         msg += '에러내용 : ' + rsp.error_msg;
                         //실패시 이동할 페이지
                         location.href="/charge"; //취소되면 알러트+메인페이지로 돌아가게 하기
                         alert(msg);
                     }
                 });
                 
             });
     	}
    });
</script>
</body>
</html>