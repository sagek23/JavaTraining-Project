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
	
	console.log($("#amount").val());
	console.log($("#paymethod").val());
	/*
	$("#chgBtn").click(function () {
	      location.href = "chargeCom.jsp";
	    });
	$("#chgBtn").click(function(){
		alert($("#beuid").val()+","+$("#payment").val()+" and "+$("#amount").val())
		});
	*/
	/*
		로그인 후 id 상태유지
	*/
	var id = "<%=session.getAttribute("beuid") %>" 
	$("#beuid").val((id));
	
});
</script>
</head>
<body>
<form action="charge"  method="POST" id="charging">
<div id="pointPg">
		<div id="charge">포인트 충전</div>
            <div class="payBox">
                 <div id="amountCash">충전금액</div>
					<input id="beuid" type="hidden" name="beuid" >
					<input type="number" name="chargelist" id="amount" placeholder="충전할 금액을 입력하세요.">
                <div id="btnBox"><button class="money" type="button" name="chargelist" value=10000 id="10000">+10,000P</button><button class="money" type="button" name="chargelist" value=50000 id="50000">+50,000P</button><button class="money" name="chargelist" value=100000 id="100000" type="button">+100,000P</button><button class="money" name="chargelist" value=150000 id="150000" type="button">+150,000P</button><button class="money" name="chargelist" value=200000 id="200000" type="button">+200,000P</button></div>
                <span id="pmethod">충전수단</span>
                    <div id="pay">
                        <select id="paymethod" name="chargemethod">
                            <option value="카카오페이"  selected="selected">카카오페이</option>
                            <option value="삼성페이">삼성페이</option>
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
    			 var IMP = window.IMP; 
                 IMP.init('imp91760461'); // 부여받은 가맹점 식별코드 입력
                 var msg;

                 IMP.request_pay({
                     pg : 'kakaopay',
                     pay_method : 'card',
                     merchant_uid : 'merchant_' + new Date().getTime(),
                     name: 'BeShop 포인트 충전',
   	
   	              amount: $("#amount").val(),
   	              buyer_name: $("#beuid").val()
   	              //buyer_tel: $("#phone").val()

                 }, function (rsp) {
                	 console.log(rsp);
                	 if (rsp.success) {
                	 var msg = '결제가 완료되었습니다.';
                	 msg += '고유ID : ' + rsp.imp_uid;
                	 msg += '상점 거래ID : ' + rsp.merchant_uid;
                	 msg += '결제 금액 : ' + rsp.paid_amount;
                	 msg += '카드 승인번호 : ' + rsp.apply_num;

                	 $("#charging").submit(); //충전 성공시 submit되어 DB에 insert됨

                	 } else {
                	 var msg = '결제에 실패하였습니다.';
                	 msg += '에러내용 : ' + rsp.error_msg;
                	 alert(msg);
                	 }

                });

    		   });
    	}

    	else if($("#paymethod").val()=="삼성페이"){
    		$(function(){
    			 var IMP = window.IMP; 
                 IMP.init('imp63840957'); // 부여받은 가맹점 식별코드 입력
                 var msg;

                 IMP.request_pay({
                	 pg: 'html5_inicis',
                	 pay_method: 'samsung',
                	 //pg: 'uplus',
                	 //pay_method: 'card',
                	 //pg: 'smilepay',
                	 //pay_method: 'card',
                     merchant_uid : 'merchant_' + new Date().getTime(),
                     name: 'BeShop 포인트 충전',
   	              amount: $("#amount").val(),
   	              buyer_name: $("#beuid").val()
   	             //buyer_tel: $("#phone").val()

                 }, function (rsp) {
                	 console.log(rsp);
                	 if (rsp.success) {
                	 var msg = '결제가 완료되었습니다.';
                	 msg += '고유ID : ' + rsp.imp_uid;
                	 msg += '상점 거래ID : ' + rsp.merchant_uid;
                	 msg += '결제 금액 : ' + rsp.paid_amount;
                	 msg += '카드 승인번호 : ' + rsp.apply_num;

                	 $("#charging").submit(); //충전 성공시 submit되어 DB에 insert됨

                	 } else {
                	 var msg = '결제에 실패하였습니다.';
                	 msg += '에러내용 : ' + rsp.error_msg;
                	 alert(msg);
                	 }

                });

    		   });
    	}
    });
</script>
</body>
</html>
