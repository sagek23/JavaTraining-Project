<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<link rel="stylesheet" href="css/popup.css">
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script type="text/javascript" src="js/popup.js"></script>
<script type="text/javascript">

//var SetTime = 1800;		// 최초 설정 시간(기본 : 초)



//window.onload = function TimerStart(){ tid=setInterval('msg_time()',1000) };
var SetTime = 1800;
function msg_time() {	// 1초씩 카운트
		
		/* $.ajax({url:"getTime",data:'6',success:function(data){
			console.log(data.p_cdate);
			alert(data.p_cdate);
			SetTime = data.p_cdate - new Date();
			alert(SetTime);
		}}); */
		m = Math.floor(SetTime / 60) + "분 " + (SetTime % 60) + "초";	// 남은 시간 계산
		
		var msg = "현재 남은 시간은 " + m + "</font> 입니다.";
		
		document.all.ViewTimer.innerHTML = msg;		// div 영역에 보여줌 
				
		SetTime--;					// 1초씩 감소
		
	if (SetTime < 60) {			// 시간이 종료 되었으면..
			
			clearInterval(tid);		// 타이머 해제
			alert("경매가 종료되기 1분 전 입니다");
		}
		if (SetTime <= 0) {			// 시간이 종료 되었으면..
			
			clearInterval(tid);		// 타이머 해제
			alert("경매가 종료되었습니다");
		}
		
	}
	setInterval(function(){
		msg_time();
	},1000);
$(function(){
	
	
	$("#btn1").click(function(){
		var priceval1 = $(this).attr('value');
		$('.price').val(priceval1);
		alert(priceval1);
		
	});
	$("#btn2").click(function(){
		var priceval2 = $(this).attr('value');
		$('.price').val(priceval2);
		alert(priceval2);
	});
	$("#btn3").click(function(){
		var priceval3 = $(this).attr('value');
		$(".price").val(priceval3);
		alert(priceval3);
	});

	function now(){
		$.ajax({url:"nowAuction",success:function(data){
			alert(data.cnt); 
			$("#startprice").html(data.price);
			$(".btn_1").val(data.price+10000);
			$(".btn_2").val(data.price+20000);
			$(".btn_3").val(data.price+30000);
			$("#cnt").html(data.cnt);
		}});
	}
	now();
	setInterval(function(){
		now();
		
	},5000);

	$(".beuid").hide();
	$(".btn_b").click(function(){
		var data = $(".f").serialize();
		alert(data);
		$.ajax({
			url:"insertAuction",
			type:"post",
			data:data,
			success:function(r){
				alert("입찰되었습니다."+r)
			}
		}); 
	});
})
</script>
<body>

<a href="#layer01" data-popup="#layer01" class="layer-popup">레이어팝업 보기</a> <br /><br /><br />
    <div class="pop-wrap" id="layer01" style="display:none">
        <dl>
            <dt class="pop-header"><span id="startprice">1,230,000</span> 원ㅣ무료배송<a href="#none" class="btnp-close">Χ</a></dt>
            <dd class="pop-box">
        	<form class="f">
                <div class="pop-cont">
                    <div class="pop-msg">
						<input type="text" class="beuid" id="beuid" name="beuid" value="${sessionScope.beuid}">
                        <p class="start" id="time">경매종료까지 <span id="ViewTimer"></span> 남았습니다ㅣ<span id="cnt" name="cnt">2</span>번의 입찰 진행중</p>
                        <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
                        <p class="start" id="notice" style="margin-bottom: 15px;">보유하신 포인트의 금액만큼 입찰가를 제시해주세요</p>
                        <div class="colorpart">
                            <p class="start" id="per">입찰가ㅣ만원 단위</p> 
                            <div class="price_part">

                                <p><input type="button" class="btn btn_1" id="btn1" value="1220000"></p>
                                <p><input type="button" class="btn btn_2" id="btn2" value="1320000"></p>
                                <p><input type="button" class="btn btn_3" id="btn3" value="1420000"></p>

                            </div>
                            <p class="bar"><em style="width:1242%;height: 3px;"></em></p>
                            <p class="start">보유포인트<span class="mypoint">1,220,000</span>원 <a href="#">충전하기</a></p>
                            <div class="box">
                                <input type="number" class="price btn_a" name="price" id="price" value=" " placeholder="입찰하고 싶은 금액을 입력해주세요.">
                                <input type="button" class="btn_b" value="입찰하기">
                            </div>

                            <p class="start">경매가 끝나거나 판매자가 입찰종료시 가장 높은 금액을 제시한 입찰자가 입찰됩니다</p>

                            <div class="pop-noti">
                                <div><input type="checkbox" name="" id="daychk01" /> <label for="daychk01">1주일간 보지 않기</label></div>
                            </div>

                        </div>

                    </div>
                </div>
        	</form>
            
            </dd>
        </dl>
    </div>
</body>
</html>