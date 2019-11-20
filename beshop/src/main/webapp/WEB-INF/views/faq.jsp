<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title> Title </title>
      <link type="text/css" rel="stylesheet" href="css/style.css" />
     <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
     <style type="text/css">
    #accordion-container {
	font-size: 13px;
        font-weight: 100;
	background: #ffffff;
	padding: 5px 10px 10px 10px;
	border: 1px solid #cccccc;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
	-moz-box-shadow: 0 5px 15px #cccccc;
	-webkit-box-shadow: 0 5px 15px #cccccc;
	box-shadow: 0 5px 15px #cccccc;
	    width: 100%;
}
.accordion-header {
	font-size: 13px;
	font-weight:300;
	background: #555;
	margin: 5px 0 0 0;
	padding: 5px 20px;
	border: 1px solid #cccccc;
	cursor: pointer;
	color: #fff;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	border-radius: 5px;
}

.active-header {
	-moz-border-radius: 5px 5px 0 0;
	-webkit-border-radius: 5px 5px 0 0;
	border-radius: 5px 5px 0 0;
	background: url(images/active-header.gif) #888;
	background-repeat: no-repeat;
	background-position: right 50%;
}

.active-header:hover {
	background: url(images/active-header.gif) #888;
	background-repeat: no-repeat;
	background-position: right 50%;
}

.inactive-header {
	background: url(images/inactive-header.gif) #444;
	background-repeat: no-repeat;
	background-position: right 50%;
}

.inactive-header:hover {
	background: url(images/inactive-header.gif) #888;
	background-repeat: no-repeat;
	background-position: right 50%;
}

.accordion-content {
	display: none;
	padding: 20px;
	background: #ffffff;
	border: 1px solid #cccccc;
	border-top: 0;
	-moz-border-radius: 0 0 5px 5px;
	-webkit-border-radius: 0 0 5px 5px;
	border-radius: 0 0 5px 5px;
}
.title{margin: 20px;}
    
</style>
</head>

<body>
    <!-- container -->
    <div class="container">
        <h3 class="title">FAQ</h3>
        <script>
            $(document).ready(function () {
                //Add Inactive Class To All Accordion Headers
                $('.accordion-header').toggleClass('inactive-header');
                //Set The Accordion Content Width
                var contentwidth = $('.accordion-header').width();
                $('.accordion-content').css({
                    'width': contentwidth
                });
                //Open The First Accordion Section When Page Loads
                $('.accordion-header').first().toggleClass('active-header').toggleClass('inactive-header');
                $('.accordion-content').first().slideDown().toggleClass('open-content');
                // The Accordion Effect
                $('.accordion-header').click(function () {
                    if ($(this).is('.inactive-header')) {
                        $('.active-header').toggleClass('active-header').toggleClass('inactive-header').next().slideToggle().toggleClass('open-content');
                        $(this).toggleClass('active-header').toggleClass('inactive-header');
                        $(this).next().slideToggle().toggleClass('open-content');
                    }
                    else {
                        $(this).toggleClass('active-header').toggleClass('inactive-header');
                        $(this).next().slideToggle().toggleClass('open-content');
                    }
                });
                return false;
            });
        </script>
        <div id="accordion-container">
            <h2 class="accordion-header">주문을 확인하고 싶어요</h2>
            <div class="accordion-content">
                <p>MY PAGE > 나의 쇼핑정보에서 주문번호를 선택하여 상세 주문내역 확인이 가능합니다.</p>
            </div>
            <h2 class="accordion-header">상품 배송확인은 어떻게 하나요?</h2>
            <div class="accordion-content">
                <p>MY PAGE > 주문배송조회 메뉴에서 진행상태의 택배 정보를 클릭하면 해당 상품의 배송 확인이 가능합니다.</p>
            </div>
            <h2 class="accordion-header">교환이나 반품은 어떻게 하나요?</h2>
            <div class="accordion-content">
                <p>교환은 동일 브랜드 주문 상품 중 동일한 구매 가격으로만 가능하며 이 경우 1:1 문의로 교환을 희망하는 상품명, 사이즈를 작성해주세요.<br><br>
                동일 브랜드 내, 가격이 다른 경우 원하는 상품으로 재구매 후 기존 구매 상품은 반품 접수해주세요. 상품이 반품 완료된 후 환불을 진행해드립니다.<br><br>
                반품 접수는 MY PAGE > 나의 쇼핑정보에서 해당 상품의 주문번호를 확인 후, '반품접수'를 선택해주세요.<br><br>
                아래의 경우 교환/반품이 불가하니 유의해주세요.
                <br><br>
                1. 상품 수령 후 7일이 지난 경우
                <br>
                2. 주문제작 상품으로 상세 설명에 반품불가 명시된 경우
                <br>
                3. 세탁 및 수선한 경우
                <br>
                4. 고객 부주의로 상품이 훼손되거나 하자가 발생한 경우
                <br>
                5. 착용 후 향수 등의 오염이나 심한 구김으로 정상 새제품 판매가 불가한 경우
                <br>
                6. 별도 정책으로 반품 불가를 명시한 상품인 경우    
                </p>
                </div>
            <h2 class="accordion-header">주문 취소를 하고 싶어요.</h2>
            <div class="accordion-content">
                <p>결제 직후, '결제 완료' 상태에서는 MY PAGE에서 직접 주문 취소가 가능합니다. <br>
                단 부분 취소가 불가하므로 전체 취소 후, 원하는 상품으로 재주문 해주세요.<br>
                '상품 준비' 상태에서는 상품 포장이 완료되거나<br>
                브랜드 정책에 따라 취소가 불가할 수 있습니다.<br>
                추가 문의 사항은 1:1문의 접수 또는 고객센터로 연락해주세요.
                </p>
            </div>
            <h2 class="accordion-header">현금영수증 또는 지출 증빙을 받을 수 있나요?</h2>
            <div class="accordion-content">
                <p>MY PAGE > 증빙서류 발급에서 신청 가능합니다.</p>
            </div>
            <h2 class="accordion-header">여러 개의 상품을 주문했는데, 일부만 취소하고 싶어요.</h2>
            <div class="accordion-content">
                <p>현재 부분 취소가 불가하므로 결제 직후 '결제 완료' 상태에서 전체 취소 후, 원하는 상품으로 재주문 해주세요.<br>
'상품 준비 중' 상태인 경우, <br>주문 취소를 위해 출고처에 발송 취소 요청이 필요하므로 1:1 문의 접수 또는 고객센터에 연락해주세요.</p>
            </div>
            <h2 class="accordion-header">비회원도 주문할 수 있나요?</h2>
            <div class="accordion-content">
                <p>29CM 회원만 주문이 가능합니다.<br>
회원 가입 후, 첫 구매 할인 쿠폰과 29CM에서 준비한 다양한 혜택을 누려보세요</p>
            </div>
            <h2 class="accordion-header">배송된 상품이 불량입니다. 교환이나 반품(환불) 받고 싶어요.</h2>
            <div class="accordion-content">
                <p>교환 접수 : 1:1 문의에 불량 상품 사진 첨부 후, 문의 사항을 접수해주세요.<br> 브랜드 배송 정책에 따라 맞교환 또는 반품 회수 확인 후 교환이 가능합니다.<br>
반품 환불 : MY PAGE > 나의 쇼핑정보에서 주문번호 선택 후 관련 상품을 '반품접수' 해주세요. <br>접수 시, 반품사유 선택 및 내용을 꼭 기재하여 접수 부탁드립니다.</p>
            </div>
            <h2 class="accordion-header">배송기간은 얼마나 걸리나요?</h2>
            <div class="accordion-content">
                <p>일반 상품은 3일 이내 출고됩니다.<br>
품절, 재입고, 주문제작으로 인해 출고 예정일이 늦어지는 경우, MY PAGE > 나의 쇼핑정보에서 주문번호를 선택하여 상세 내역 확인이 가능합니다.<br>
SPECIAL ORDER, PT 등 예약주문 상품의 경우 상세 설명의 출고일정을 꼭 확인해주세요.<br>
구두, 액세서리, 침구, 액자, 가구 등의 상품은 상세 설명의 제작기간을 체크해주세요.</p>
            </div>
        </div>
    </div>
    <!-- /container -->
</body>
</html>