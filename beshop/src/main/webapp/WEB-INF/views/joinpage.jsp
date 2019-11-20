<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">


<title>Insert title here</title>
	<link type="text/css" href="css/insert.css" rel="stylesheet">
	<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
	<script type="text/javascript">
	$(function(){
		var snsid = localStorage.getItem('id'); //sns로그인 시 가져오는 아이디
		//alert(snsid);
		
		$("#snsId").val(snsid);  //snsId에 값을 넣어줘야되서 추가할 것.
		//alert($("#snsId").val()); 
		var snsId = $("#snsId").val(); //snsId
		console.log(snsId);
		
		$("#btn_Auth").hide();
		$("#emailcode").hide();
		$("#btn_email").click(function(){
			$("#btn_email").hide();
			$("#btn_Auth").show();
			$("#emailcode").show();
			var email=$("#email").val();
			
			$.ajax({url:"mail.go",Type:"GET",data:{"email":email},success:function(r){
				
				$("#key_a").val(r);
			}});
			
			
		})
		
		$("#btn_Auth").click(function(){
			
			var emailcode=$("#emailcode").val();
			var origincode=$("#key_a").val();
			if(emailcode!=origincode)
				{
				$("#email").val('');
				$("#emailcode").val('');
				alert("인증코드가 일치하지않습니다");
				$("#btn_Auth").hide();
				$("#emailcode").hide();
				$("#btn_email").show();
				}
			else if(emailcode==origincode)
			{
				alert("인증에 성공하였습니다");
			}
			
			
			
		})
		$("#emailcode").hide();
		$("#btn_email").click(function(){
			$("#emailcode").show();
			
		})
		
		for (i = new Date().getFullYear(); i > 1900; i--){
	        $('#year').append($('<option />').val(i).html(i));
	    }
	    //populate our months select box
	    for (i = 1; i < 13; i++){
	        $('#mon').append($('<option />').val(i).html(i));
	    }
	    //populate our Days select box
	    updateNumberOfDays(); 

	    //"listen" for change events
	    $('#year, #mon').change(function(){
	        updateNumberOfDays(); 
	    });
	
	 	//var sex = $('input:radio[name="gender"]:checked').val();
	$("#btn_insert").click(function(){
		
		
		})
	})
	function updateNumberOfDays(){
    $('#day').html('');
    month = $('#mon').val();
    year = $('#year').val();
    days = daysInMonth(month, year);

    for(i=1; i < days+1 ; i++){
            $('#day').append($('<option />').val(i).html(i));
    }
}

	//helper function
	function daysInMonth(month, year) {
	    return new Date(year, month, 0).getDate();
	}
	function sendIt(){
		var email = document.f.email.value;
        var regex = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/;
        
        if (f.beuid.value == "") {
        	$('#id_check').text('아이디를 입력해주세요');
           
            f.beuid.focus()
            return false;
        }
        for (i = 0; i < document.f.beuid.value.length; i++) {
            ch = document.f.beuid.value.charAt(i)
            if (!(ch >= '0' && ch <= '9') && !(ch >= 'a' && ch <= 'z')&&!(ch >= 'A' && ch <= 'Z')) {
            	$('#id_check').text("아이디는 대소문자, 숫자만 입력가능합니다.");
                
                document.f.beuid.focus()
                document.f.beuid.select()
                return false;
            }
        }
        if (document.f.beuid.value.indexOf(" ") >= 0) {
            
            $('#id_check').text("아이디에 공백을 사용할 수 없습니다.");
            document.f.beuid.focus()
            document.f.beuid.select()
            return false;
        }
        if (document.f.beuid.value.length<4 || document.f.beuid.value.length>12) {
            
            $('#id_check').text("아이디를 4~12자까지 입력해주세요.");
            document.f.beuid.focus()
            document.f.beuid.select()
            return false;
        }
        if (document.f.upw.value == "") {
        	$('#pw_check').text("비밀번호를 입력하지 않았습니다.");
            
            document.f.upw.focus()
            return false;
        }
        //
        if (f.upw.value == f.beuid.value) {
        	$('#pw_check').text("아이디와 비밀번호가 같습니다.");
            
            document.f.upw.focus()
            return false;
        }
        //비밀번호 길이 체크(4~8자 까지 허용)
        if (document.f.upw.value.length<4 || document.f.upw.value.length>12) {
        	$('#pw_check').text("비밀번호를 4~12자까지 입력해주세요.")
            document.f.upw.focus()
            document.f.upw.select()
            return false;
        }
 
        //비밀번호와 비밀번호 확인 일치여부 체크
        if (document.f.upw.value != document.f.upw_check.value) {
        	$('#pwd_check').text("비밀번호가 일치하지 않습니다");
            
            document.f.upw_check.value = ""
            document.f.upw_check.focus()
            return false;
        }
 
        if (document.f.email.value == "") {
        	$('#email_check').text("이메일을 입력하지 않았습니다.");
            
            document.f.email.focus()
            return false;
        }
        if (regex.test(email) === false) {
        	
        	$('#email_check').text("잘못된 이메일 형식입니다.");
            document.f.email.value=""
            document.f.email.focus()
            return false;
        }
        if (document.f.uname.value == "") {
        	$('#name_check').text("이름을 입력하지 않았습니다.")
            document.f.uname.focus()
            return false;
        }
        if(document.f.uname.value.length<2){
        	$('#name_check').text("이름을 2자 이상 입력해주십시오.")
            document.f.uname.focus()
            return false;
        }
        if(document.f.pf1.selected==false && 
                document.f.pf2.selected==false && 
                document.f.pf3.selected==false){
        	$('#pf_check').text("관심분야를 선택 주세요");
             return false;
          }
        if(document.f.sex.checked==false && 
                document.f.sex.checked==false){
        	$('#sex_check').text("성별을 체크해 주세요");
             return false;
          }
        if(document.f.emailcode==""){
        	$('#code_check').text("");
             return false;
          }
        
	}
	</script>
</head>
<body>
	<h1 id="logo">BESHOP</h1>
    <div id="f_insert">
        <form method="post" action="/beshop/joinpage"  name="f" onsubmit="return sendIt();">
             <p>아이디</p><span><input type="text" name="beuid" id="beuid"  maxlength="12" ></span><br>
            <div class="check_font" id="id_check"></div>
			<input id="snsId" name="snsid" type="hidden"> 

            
           <p>비밀번호</p><span><input type="password" name="upw" id="upw" maxlength="12" ></span><br>
            <div class="check_font" id="pw_check"></div>
            <p>비밀번호 재확인</p><span><input type="password" name="upw_check" id="upw_check"  maxlength="12" ></span><br>
            <div class="check_font" id="pwd_check"></div>
             <p>이름</p><span><input type="text" name="uname" id="uname"  maxlength="5" ></span><br>
             <div class="check_font" id="name_check"></div>
            <p>생년월일</p>
            
            <select id="year" name="year"></select>년
            <select id="mon" name="mon"></select>월
            <select id="day" name="day"></select>일

             
            <p>성별</p>
            <span><input type="checkbox" value="여자" id="sex" name="sex">여자</span>
            <span><input type="checkbox" value="남자" id="sex" name="sex">남자</span>
            
            <div class="check_font" id="sex_check"></div>
            <p>이메일</p>
             <span><input type="text" name="email" id="email" placeholder="이메일을 입력해주세요."></span> 
             <span><input type="text" name="emailcode" id="emailcode" placeholder="인증번호를 입력해주세요."></span> 
             <div class="check_font" id="email_check"></div> 
             <input type="button" id="btn_email" value="인증번호받기">
             <input type="button" id="btn_Auth" value="인증확인">
           	 <input type="hidden" id="key_a">
              
             
            <br>
            <p>휴대전화</p>
            <input type="number" name="phone1" id="phone1" value="010">
            <input type="number" name="phone2" id="phone2" maxlength="4">
            <input type="number" name="phone3" id="phone3" maxlength="4"><br>
           <div class="check_font" id="phone_check"></div>
            <p>선호 카테고리1</p>
            <select id="pf1" name="pf1">
            	<option>선택하세요</option>
            	<option value="fashion">패션</option>
            	<option value="stuff/beauty">잡화/뷰티</option>
            	<option value="child">유아</option>
            	<option value="food/necessity">식품/생필품</option>
            	<option value="hobby/phrases">문구/취미</option>
            	<option value="computer">컴퓨터</option>
            	<option value="sports">스포츠</option>
            	<option value="car/tool">자동차/공구</option>
            	<option value="trip/book/ticket">여행/도서/티켓</option>
            </select>
            <p>선호 카테고리2</p>
             <select id="pf2" name="pf2">
             	<option>선택하세요</option>
            	<option value="fashion">패션</option>
            	<option value="stuff/beauty">잡화/뷰티</option>
            	<option value="child">유아</option>
            	<option value="food/necessity">식품/생필품</option>
            	<option value="hobby/phrases">문구/취미</option>
            	<option value="computer">컴퓨터</option>
            	<option value="sports">스포츠</option>
            	<option value="car/tool">자동차/공구</option>
            	<option value="trip/book/ticket">여행/도서/티켓</option>
            </select>
            <p>선호 카테고리3</p>
             <select id="pf3" name="pf3">
             	<option>선택하세요</option>
            	<option value="fashion">패션</option>
            	<option value="stuff/beauty">잡화/뷰티</option>
            	<option value="child">유아</option>
            	<option value="food/necessity">식품/생필품</option>
            	<option value="hobby/phrases">문구/취미</option>
            	<option value="computer">컴퓨터</option>
            	<option value="sports">스포츠</option>
            	<option value="car/tool">자동차/공구</option>
            	<option value="trip/book/ticket">여행/도서/티켓</option>
            </select>
             <div class="check_font" id="pf_check"></div>
            <input type="submit" value="가입하기" onclick="sendit()" id="btn_insert">
        </form>
    </div>
</body>
</html>