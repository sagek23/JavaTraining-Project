<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
    <link href="css/chargeCom.css?ver=1" rel="stylesheet">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
    <script type="text/javascript">
	    $(function(){
		    /*
	    	$("#ok").click(function(){
	        	self.opener=self;
	        	window.close();
	    		});
    		*/
	    	$("#ok").on('click', function() {
	    	    self.close(); //크롬에서는 close 불가
	    	  });
	    });
    </script>
</head>
<body>
<div id="wBox">
    <div id="msgBox">
        <img src="img/charged.png" id="coin"><br>
        <span id="msg">포인트 충전이 완료되었습니다.</span>
    </div>
    <div id="tbBox">
    	<table id="tb">
    		<tr id="r">
    			<td class="td1"><span>충전금액</span></td><td class="td2"><span id="money">${chargelist}원</span></td>
    		</tr>
    		<tr id="r2">
    			<td class="td1"><span>충전수단</span></td><td class="td2"><span id="method">${chargemethod}</span></td>
    		</tr>
    	</table>
    </div>
    <div id="btnBox"><button type="button" id="ok" onclick="location.href='/main'">확인</button></div> <!-- 확인 클릭 시 메인으로 이동 -->
    <div id="chargeMore"><a href="/charge">추가 충전하기</a></div>
 </div>
</body>
</html>