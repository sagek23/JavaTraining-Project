<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	$(function(){
		$("#10000").click(function(){
			$("#charge").val($(this).val())
			});
		$("#chgBtn").click(function(){
			alert($("#beuid").val()+","+$("#payment").val()+" and "+$("#charge").val())
			})
		});
</script>
    
</head>
<body>
<form action="/index" method="POST">
	<div>
	<div id="amountCash">충전금액</div>
	<input id="beuid" type="hidden" value="bee" name="beuid">
	<input type="number" name="chargelist" id="charge"><br>
	<button type="button" name="chargelist" value=10000 id="10000">10000p</button><br>
	<span id="pmethod">충전수단</span>
	<div id="pay">
	 <select id="payment" name="chargemethod">
         <option value="card"  selected="selected">신용카드</option>
         <option value="account">계좌</option>
     </select>
     </div>
<button id="chgBtn" type="submit">충전하기</button>
</div>
</form>
</body>
</html>