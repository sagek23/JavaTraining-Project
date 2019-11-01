<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="css/search_user.css">
<script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
	 $(function() {

		$("#btn_id").click(function(){
			if($.trim($("#uname").val()) !== $("#uname").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else if($.trim($("#email").val()) !== $("#email").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else{
			$("#find_id").empty();
			var data = $("#f").serialize();
			alert(data);
			$.ajax({
				url:"search_id.do",
				type:"GET",
				data:data,
				success:function(r){
				if(r  == "null"){
					alert("가입된 회원 정보가 없습니다.");
				}
			 	else{
					var findId = $("<p></p>").html("회원님의 아이디는 "+r+"입니다.");
					$("#find_id").append(findId);
				} 
				}});
					
			}});

		$("#btn_oknum").click(function(){
			if($.trim($("#puname").val()) !== $("#puname").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else if($.trim($("#pemail").val()) !== $("#pemail").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else if($.trim($("#pbeuid").val()) !== $("#pbeuid").val()){
				alert("공백은 입력이 불가능합니다.");
				return false;
			}
			else{
			var uname = $("#puname").val().trim();
			var beuid = $("#pbeuid").val().trim();
			var email = $("#pemail").val().trim();
			var data = "puname="+uname+"&pbeuid="+beuid+"&pemail="+email;
			alert(data)
			$.ajax({
				url:"search_pwd.do",
				type:"POST",
				data:data,
				success:function(r){
				if(r  == "no"){
					alert("가입된 회원 정보가 없습니다.");
				}
			 	else{
					alert("인증번호를 발송하였습니다.");
					$.ajax({url:"pwdmail.go",type:"GET",data:"email="+email, success:function(r){
						alert(r);
						$("#hidden_ok").html(r);
						alert($("#hidden_ok").text());
					}});
				} 
				}});
			}});
	});
</script>
	<title>아이디/비밀번호 찾기</title>
</head>
<body>
    <h1 id="logo"><a href="main">BESHOP</a></h1>
    <div id="search_id">
       <h2>아이디 찾기</h2>
        <form id="f">
            <p>이름</p><span><input type="text" name="uname" id="uname"></span><br>
            <p>이메일</p>
            <span><input type="text" name="email" id="email" placeholder="  이메일을 입력해주세요."></span> 
            <br>
            <input type="button" value="아이디 찾기" id="btn_id">
        </form>
        <div id="find_id">
        </div>
    </div>
    <script type="text/javascript">
	function checkOk(){
		var hidden = $("#hidden_ok").text();
		var oknum = $("#oknum").val();
		alert(oknum);
		if(hidden != oknum){
				alert("인증번호를 확인해주세요");
				$("#oknum").focus();
				return false;
		}
		else {
			return true;
		}
	}

    </script>
     <div id="search_pwd">
       <h2>비밀번호 찾기</h2>
        <form action="new_pwd" method="post" onsubmit="return checkOk()">
            <p>이름</p><span><input type="text" name="uname" id="puname"></span><br>
            <p>아이디</p>
            <span><input type="text" name="beuid" id="pbeuid" placeholder="  아이디를 입력해주세요."></span> 
            <br>
            <p>이메일</p>
            <span><input type="email" name="email" id="pemail" placeholder="  이메일을 입력해주세요."></span> 
            <br>
            <p>인증번호</p>
            <span><input type="text" name="oknum" id="oknum" placeholder=" 인증번호를 입력해주세요" style="width:72%">
            <input type="button" name="btn_oknum" id="btn_oknum" value="인증번호 전송" style="width:25%">
            </span>
            <input type="hidden" id="hidden_ok">
            <input type="submit" value="비밀번호 찾기" id="btn_pwd">
        </form>
    </div>
</body>
</html>
