<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script type="text/javascript"src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	
	<script type="text/javascript">
	$(function(){
		var generateRandom = function (min, max) {
			  var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
			  return ranNum;
			}
		var paynum=generateRandom(100000, 1000000);
		
		var oprice=localStorage.getItem('oprice');
		var name=localStorage.getItem('name');
		var addr=localStorage.getItem('addr');
		var zipcode=localStorage.getItem('zipcode');
		var onum = localStorage.getItem('onum');
		
	  	
			var IMP = window.IMP; // 생략가능
			IMP.init('imp33071173');
			
			IMP.request_pay({
				
			    pg : 'inicis', // version 1.1.0부터 지원.
			    pay_method : 'card',
			    merchant_uid :new Date().getTime(),
			    name : 'BESHOP결제',
			    amount : 100,
			    buyer_email : 'email',
			    buyer_name : name,
			    buyer_tel : '010-6268-3365',
			    buyer_addr : addr,
			    buyer_postcode : zipcode,
			    m_redirect_url : 'http://localhost:8080/beshop/OrderPurchase?onum='+onum
			}, function(rsp) {
				 if ( rsp.success ) {
				     jQuery.ajax({
				      url: "/beshop/purchase_ok", 
				      type: 'POST',
				      dataType: 'json',
				      data: {
				        
				    	  	"paynum":paynum,
				            "payway":"카드",
				            "paycondition":"결제완료",
				           	"payprice":oprice,
				            "pnum":1
				        },success:function(r){
				        	 console.log("결제성공");
						     location.href="/beshop/OrderPurchase?onum="+onum;
				        }
				     })
				    
				    } else {
				        var msg = '결제에 실패하였습니다.';
				        msg += '에러내용 : ' + rsp.error_msg;
				        alert(msg);
				        history.back();
				    }
				});
	});
	</script>

</head>
<body>

</body>
</html>