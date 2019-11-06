<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/orderDetail.css" rel='stylesheet' type='text/css' />
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">

</script>
</head>
<body>
	<table class="oinfo">
		<tr>
			<td colspan="5">
			<div  id="order">
			주문상세내역
			</div>
			</td>
		</tr>
	</table>	
	<table  class="oinfo" id="infoTable">
		<tr>
			<td class="col"><div class="colname">받는사람</div></td>
			<td colspan="5" class="colinfo" id="firstline"><div class="info" id="recipient"></div></td>
		</tr>
		
		<tr>
			<td class="col"><div class="colname">연락처</div></td>
			<td colspan="5"  class="colinfo"><div class="info">
			${o.ophone}
			</div></td>
		</tr>		
		<tr >
			<td class="col"><div class="colname" id="add">주소</div></td>
			<td colspan="5"  class="colinfo"><div class="info" id="addr">
			${o.odzip}<br>
			<br>
			${o.addr}
			</div>
			</td>
		</tr>
		<tr>
			<td  class="col"><div class="colname">배송시 요청사항</div></td>
			<td colspan="5" class="colinfo"><div class="info">
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
			<td align=center class="col" width="50%"><div class="opinfo">상품정보</div></td>
			<td align=center class="col" width="12.5%"><div class="opinfo">수량</div></td>
			<td align=center class="col" width="12.5%"><div class="opinfo">상품금액</div></td>
			<td align=center class="col" width="12.5%"><div class="opinfo">배송비</div></td>
			<td align=center class="col" width="12.5%"><div class="opinfo">배송상태</div></td>
		</tr>
		<tr>
			<td align=center class="oinf" id="proInfo" width="40%">
			<div id="goods" class="ocont2">
				${o.oname}
			</div>
			</div>
			</td>
			<td align=center class="oinf" id="qty" width="12.5%"><div class="ocont2">${o.ocount}</div></td>
			<td align=center class="oinf" id="totpri" width="12.5%"><div class="ocont2">${o.oprice}</div></td>
			<td align=center class="oinf" id="dprice" width="12.5%"><div class="ocont2">${o.dprice}</div></td>
			<td align=center class="oinf" id="dstatus" width="12.5%"><div class="ocont2">${o.dstatus}</div></td>
		</tr>
	</table>
	<table  class="pinfo">
		<tr>
			<td colspan="6">
			<div id="adrs">
			결제 금액 정보
			</div>
			</td>
		</tr>
		<tr>
			<td align=center class="col" width="20%"><div class="opinfo">결제수단</div></td>
			<td align=center class="col" width="20%"><div class="opinfo">주문 금액</div></td>
			<td align=center class="col" width="20%"><div class="opinfo">배송비 </div></td>
			<td align=center class="col" width="40%"><div class="opinfo">최종 결제 금액</div></td>

		</tr>
		<tr>
			<td align=center class="oinf" id="qty" width="20%"><div class="ocont2"></div></td>
			<td align=center class="oinf" id="qty" width="20%"><div class="ocont2">${o.oprice}</div></td>
			<td align=center class="oinf" id="totpri" width="20%"><div class="ocont2">${o.dprice}</div></td>
			<td align=center class="oinf"  width="40%"><div class="ocont2">${o.totpri}</div></td>
		</tr>
	</table>
	
</body>
</html>