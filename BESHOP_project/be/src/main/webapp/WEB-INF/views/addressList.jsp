<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="css/adrsList.css" rel='stylesheet' type='text/css' />
</head>
<body>
<div id="title"><h3>배송지 목록</h3></div>
<div class="adrsBox">
	<table class="adrsTable">
		<tr class="row1">
			<td class="col" id="shipto">받는사람</td>
			<td class="col" id="tel">연락처</td>
			<td class="col" id="adrs">주소</td>
			<td class="col" id="select">선택</td>
		</tr>
		<tr class="rowCont">
			<td class="col2" id="shipList">홍길동</td>
			<td class="col2" id="telList">010-1234-8510</td>
			<td class="col2" id="addrList">서울 마포구 백범로 23 구프라자 3층 비트캠프</td>
			<td class="col2" id="select2"><button id="selectBtn">선택</button></td>
		</tr>
	</table>
</div>
	<div class="btnBox">
		<button id="addBtn">배송지 추가</button>&nbsp;
		<button id="updBtn">수정</button>&nbsp;
		<button id="delBtn">삭제</button>
	</div>
</body>
</html>