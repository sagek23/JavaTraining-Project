<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/order.css" rel='stylesheet' type='text/css' />
</head>
<body>
	<div class="top">
	<img id="logo" src="beShop.png">
	</div>
	<table class="oinfo">
		<tr>
		
			<td colspan="5">
			<div  id="order">
			주문
			</div>
			</td>
		</tr>
	</table>	
	<table  class="oinfo" id="infoTable">
		<tr>
			<td colspan="6">
			<div>
				<div  id="adrs">
				배송정보
				</div>
			<div class="odrStatus">
				<h3 class="sts">01 장바구니</h3>
				<h3 class="sts" id="nstatus">02 주문</h3>
				<h3 class="sts">03 결제</h3>
				<h3 class="sts">04 주문완료</h3>
			</div>
			</div>
			</td>
		</tr>
		<tr>
			<td class="col" id="adrr"><div class="colname" >배송지선택</div></td>
			<td colspan="5" class="colinfo" id="adr"><div class="info"><button class="adrBtn">기본배송지</button><button class="adrBtn" onclick="window.open('addressList.jsp','adrsList','width=1000,height=600,location=no,status=no,scrollbars=yes')">배송지목록</button><button class="adrBtn">신규배송지</button> </div></td>
		</tr>
		<tr>
			<td class="col"><div class="colname">주문자</div></td>
			<td colspan="5" class="colinfo"><div class="info" id="oderer">홍길동</div></td>
		</tr>
		<tr>
			<td class="col"><div class="colname">이름</div></td>
			<td colspan="5"  class="colinfo"><div class="info"><input type="text" id="name"></div></td>
		</tr>
		<tr>
			<td class="col"><div class="colname">연락처</div></td>
			<td colspan="5"  class="colinfo"><div class="info"><input type="text" class="tel">&nbsp;-&nbsp;<input type="text" class="tel">&nbsp;-&nbsp;
			<input type="text" class="tel"></div></td>
		</tr>		
		<tr >
			<td class="col"><div class="colname" id="add">주소</div></td>
			<td colspan="5"  class="colinfo"><div class="info" id="addr"><input type="text" id="zip">&nbsp;&nbsp;<button id="zipcode">우편번호찾기</button><br>
			<br>
			<input type="text" id="addr1">&nbsp;&nbsp;<input type="text" id="addr2">
			</div>
			</td>
		</tr>
		<tr>
			<td  class="col"><div class="colname">배송시 요청사항</div></td>
			<td colspan="5" class="colinfo"><div class="info">
				<select  id="odrq">
				  <option>부재시 문앞에 놓고가세요</option>
				  <option>부재시 전화주세요</option>
				  <option>부재시 경비실에 맡겨주세요</option>
				  <option selected="selected">배송시 요청사항 선택</option>
				  <option id="yourself">직접입력</option>
				</select>
			</div>
			</td>
		</tr>		
	</table>
	
	<table  class="pinfo">
		<tr>
			<td colspan="6">
			<div id="adrs">
			주문상품정보
			</div>
			</td>
		</tr>
		<tr>
			<td align=center class="col"><div class="opinfo">상품정보</div></td>
			<td align=center class="col"><div class="opinfo">수량</div></td>
			<td align=center class="col"><div class="opinfo">상품금액</div></td>
			<td align=center class="col"><div class="opinfo">배송비</div></td>
		</tr>
		<tr>
			<td align=center class="oinf" id="proInfo">
			<div class="BuyProd">
			<img  src="tumb.jpg" width="100" height="100" id="proImg">
			<div id="goods" class="ocont">
			[블랭키스] 2중진공 라스텀블러jjjjjjjjjjjjjjj
			</div>
			</div>
			</td>
			<td align=center class="oinf" id="qty"><div class="ocont2">1개</div></td>
			<td align=center class="oinf" id="totpri"><div class="ocont2">18,000원</div></td>
			<td align=center class="oinf" ><div class="ocont2">2,500원</div></td>
		</tr>
	</table>
	<a href="#"><button id="obtn1">주문</button></a>&nbsp;&nbsp;<a href="#"><button id="obtn2">취소</button></a>
</body>
</html>