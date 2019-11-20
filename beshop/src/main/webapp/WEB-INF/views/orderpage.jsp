<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
	<link rel="stylesheet" href="css/orderpage.css">
	<script type="text/javascript" src="https://code.jquery.com/jquery-1.12.4.min.js" ></script>
	<script type="text/javascript" src="https://cdn.iamport.kr/js/iamport.payment-1.1.5.js"></script>
	<script type="text/javascript"src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	$(function(){
		var p_priceval=$("#p_price").text();
		$("#p_priceval").val(p_priceval);
		
		
		var oprice=$("#p_priceval").val();
		
		var email=$("#email").val();
		var name=$("#name").val();
		var addr=$("#oaddr1").val();
		var zipcode=$("#odzip").val();
		
		localStorage.setItem('oprice', oprice);
		localStorage.setItem('email', email);
		localStorage.setItem('name', name);
		localStorage.setItem('addr', addr);
		localStorage.setItem('zipcode', zipcode);
		
		var odname=$("#odnameval").val();
		
		 $("#odnum").hide();
		$("#odpnum").hide(); 
		var generateRandom = function (min, max) {
			  var ranNum = Math.floor(Math.random()*(max-min+1)) + min;
			  return ranNum;
			}
		var onumkey=generateRandom(100000, 1000000);
		
		$("#odnum").val(onumkey);
		var onum=$("#odnum").val();
	      localStorage.setItem('onum', onum);
		
		var pnumkey=generateRandom(1, 100);
		var oprice = $("#h_oprice").val();
		var hap = eval(oprice+'2500');
		$(".oprice").text(hap);

		var rname=$("#receivename").val();
	    var p1=$("#phone1").val();
	    var p2=$("#phone2").val();
	    var p3=$("#phone3").val();
	    var odtel=p1.concat(p2,p3);
	    var odmemo=$("#omemo").val();

	    
	    localStorage.setItem('rname', rname);
	    localStorage.setItem('odphone', odtel);
	    localStorage.setItem('odmemo', odmemo);
	    
		
	});

	
	
	</script>
	  <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
    <script>
        function addrfind() {
            new daum.Postcode({
                oncomplete: function(data) {
                    var roadAddr = data.roadAddress; // 도로명 주소 변수
                    var extraRoadAddr = ''; // 참고 항목 변수
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
                        extraRoadAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if (data.buildingName !== '' && data.apartment === 'Y') {
                        extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if (extraRoadAddr !== '') {
                        extraRoadAddr = ' (' + extraRoadAddr + ')';
                    }
                    // 우편번호와 주소 정보를 해당 필드에 넣는다.
                    document.getElementById('odzip').value = data.zonecode;
                    document.getElementById("oaddr1").value = roadAddr;
                    document.getElementById("oaddr2").focus();
                }
            }).open();
        }
    </script>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
 <div class="totalbox">
    

<form action="orderpage" method="post">

            <h1>주문서작성</h1>


            <div class="line"></div>
            <div class="row">
                
                    <div style="margin-bottom: 10px; margin-top: 20px; margin-left: 5px;">주문상품</div>
                    <input type="number"  name="odnum" id="odnum">
                    <input type="number" name="odpnum" id="odpnum" value="${p.pnum }">
                    
                    <div class="line"></div>
                        
                            <div class='main-session'>

                                <!--테이블 영역      -->
                                <table class='cart_table'>
                                    <colgroup>
                                        <col width='150px'>
                                        <col width="100px">
                                        <col width="300px">
                                        <col width='100px'>
                                        <col width='250px'>
                                        <col width='200px'>
                                    </colgroup>
                                    <thead id="con">
                                        <th scope="col" >주문번호</th>
                                        <th scope="col"></th>
                                        <th scope="col">상품명</th>
                                        <th scope="col" id="price">상품금액</th>
                                        <th scope="col" id="qty">수량</th>
                                        <th scope="col" id="oprice">주문금액</th>
                                    </thead>
                                    <tbody>
                                    
                                        <td >1</td>
                                        
                                        <td>
                                            <div class="product_img">
                                                <img src="img/${p.p_sangse }" width="62px" height="68px" style="margin-bottom: 5px;margin-top: 5px;overflow: hidden;">
                                            </div>

                                        </td>
                                        
                                        <td>
                                            <span id="odnameval">${p.pname }</span><br>
                                            <input type="hidden" id="oname" name="oname" value=${p.pname }>
                                            
                                        </td>
                                        <td >
                                           <span id="p_price">${p.p_price }</span>
                                            <input type="hidden" name="p_priceval" id="p_priceval" >
                                        </td>
                                        
                                        <td>
                                            <span id="ocount" name="ocount">1</span>
                                        </td>
											
                                        <td>
                                            <span id="odp_price" name="odp_price">${oprice }</span><br>
                                           
                                        </td>
									
                                    </tbody>
                       
                                </table>
										<input type="hidden" value="${oprice }" id="h_oprice">


                            </div>


                        
                    


             

            </div>

            <div class="line"></div>
            <div class="row">
                
                    <table class="table table-condensed" border="0" cellspacing="0" cellpadding="0" width="100%">



                    </table>
                
            </div>

            <!--    <div class="line"></div>-->
            <div class="row">
                
                    <div style="margin-bottom: 5px; margin-top: 20px; margin-left: 5px;"><strong>할인/혜택</strong></div>
                    <div class="line"></div>
	<div class="col-sm-12 col-xs-12 table-responsive">
                    <div class="row" id="tableleft">
                        <div class="table">
                            <table class="table-con" width="100%" border="0" cellspacing="0" cellpadding="0">

                                <tr>
                                    <th class="p-info-payoption">쿠폰</th>
                                    <th>
                                       
                                           <span style="padding-right: 20px;"> <span >보유쿠폰 </span><strong class="ucoupon">0</strong>장</span>
                                            <span class="couponfind" style="padding-right: 10px"><a href="#" >쿠폰찾기</a></span>
                                    </th>

                                </tr>
                                <tr>
                                    <th class="p-info-status">보유포인트</th>
                                    <th>
                                            <span style="padding-right: 20px;">보유포인트<strong class="ucoupon">0</strong>원</span>
                                            <span style="padding-right: 10px;">사용포인트<input type="text" value="0" style="text-align: right; padding-right: 10px;">원</span>
                                            <span class="couponfind"><a href="#" style="">전액사용</a></span>
                                             <span class="couponfind"><a href="/charge" style="">포인트 충전</a></span>
                                    </th>
                                </tr>

                                

                                <tr>
                                    <th class="p-info-status">총 할인내역</th>
                                    <th class="p-info-deposit-request"><span style="padding-right: 20px;">할인쿠폰 (-)0원</span>
                                    <span style="margin-right: 10px;">배송비쿠폰 (-)0원</span></th>
                                </tr>




                            </table>
                            <div class="line"></div>
                        </div>
                    </div>
	</div>

                    <br>

               
            </div>

            <div class="row">
                <div class="col-sm-12 col-xs-12 table-responsive">
                    <div style="margin-bottom: 5px; margin-top: 20px; margin-left: 5px;"><strong>주문자 정보</strong></div>
                    <div class="line"></div>

                    <div class="row" id="tableleft">
                        <div class="table">
                            <table class="table-con" width="100%" border="0" cellspacing="0" cellpadding="0">

                                <tr>
                                    <th class="p-info-payoption">이름</th>
                                    <th class="table-colname-blank"><input type="text" id="name" name="uname" style="text-align: left;padding-left: 10px;" value="${sessionScope.uname }"></th>
                                   
                                </tr>
                                <tr>
                                    <th class="p-info-status">전화번호</th>
                                    <th class="table-colname-phone1con"  width="800px;"><input type="number" class="phone" name="phone1" id="phone1" value="010"> -
                                            <input type="number" class="phone" name="phone2" id="phone2" maxlength="4"> - 
                                            <input type="number" class="phone" name="phone3" id="phone3" maxlength="4"></th>
                                            
                                </tr>

                                 <tr>
                                    <th class="p-info-payoption">이메일</th>
                                    <th class="table-colname-blank"><input type="text"  style="text-align: left;padding-left: 10px;" value="${sessionScope.email }"></th>
                                </tr>
							
                                




                            </table>
                            <div class="line"></div>
                            
                        </div>
                    </div>
                    </div>


                    <br>

               
            </div>
           

       <div class="row">

                <div style="margin-bottom: 10px; margin-top: 20px; margin-left: 5px;"><strong>배송지 정보</strong></div>
                <div class="line"></div>
                <div class="col-sm-12 col-xs-12 table-responsive">
                    <div class="row">
                        <div class="table" id="delivery">
                            <table class="table-con" width="100%" border="0" cellspacing="0" cellpadding="0">

                                <tr>
                                    <th class="table-colname-recieve" style="padding-left: 20;">수령인</th>
                                    <th class="table-colname-blank"><input type="text" name="receivename" id="receivename" placeholder="이름을 입력해주세요" style="text-align: left;padding-left: 10px;"></th>


                                </tr>
                                <tr>
                                    <th class="table-colname-phone1" style="" width="800px;">연락처</th>
                                    <th class="table-colname-phone1con" width="800px;"><input type="number" class="phone" name="phone1" id="phone1" value="010"> -
                                        <input type="number" class="phone" name="phone2" id="phone2" maxlength="4"> -
                                        <input type="number" class="phone" name="phone3" id="phone3" maxlength="4"></th>

                                </tr>

                                <tr>
                                    <th class="table-colname-addr" style="padding-left: 20px;" width="800px;">배송지 주소</th>
                                    <th class="table-colname-addrcon" style="" width="800px;"><input type="text" name="odzip" id="odzip"><input type="button" id="btnaddr" onclick="addrfind()" name="btnaddr" value="주소찾기">
                                    <br><input type="text" name="oaddr1" id="oaddr1"><br>
                                    <input style="margin-left: 10px;" type="text" name="oaddr2" id="oaddr2"></th>

                                </tr>
                                <tr>
                                    <th class="table-colname-memo" style="padding-left: 20px;" width="800px;">배송메모</th>
                                    <th class="table-colname-blank"><input type="text" value="" style="width:680px;  text-align: left;padding-left: 10px;" name="omemo" id="omemo"></th>

                                </tr>


                        </div>


                            </table>
                            <div class="line"></div>
                              <div class="row">
                        <div class="col-sm-12 col-xs-12 table-responsive">
                            <table class="table table-condensed" border="0" cellspacing="0" cellpadding="0" width="100%">

                                <tr>
                                    <td class="blankspace"></td>
                                    <td class="text-center" style="height: 30px; vertical-align: middle">총 상품금액</td>
                                    <td class="text-right" style="height: 30px; vertical-align: middle">${oprice }원</td>

                                </tr>
                                <tr>
                                    <td class="blankspace"></td>
                                    <td class="text-center">배송비</td>
                                    <td class="text-right">2,500원</td>
                                </tr>

                                <tr>

                                    <td class="blankspace"></td>
                                    <td class="text-center" style="height: 40px; vertical-align: middle">총결제금액</td>
                                    <td class="text-right" style="height: 40px; vertical-align: middle" class="oprice" name="oprice">102,500원</td>
                                 
                                </tr>



                            </table>
                        </div>
                    </div>
                            <input type="submit" value="결제하기" id="payment" name="payment">
                        </div>
                    </div>


                    <br>

                
            </div>

      
      
   
</div>
	</form>
</div>
</body>
</html>