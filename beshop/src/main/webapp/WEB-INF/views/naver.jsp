<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<!-- 네이버로그인버튼. 다른 이미지로 변경 가능 -->
<div id="naverIdLogin"><a id="naverIdLogin_loginButton" href="#" role="button"><img src="https://static.nid.naver.com/oauth/big_g.PNG" width=320></a></div>

 <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
 <script type="text/javascript" src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<script type="text/javascript">
   var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "izje4O3kf_B_jykImcq9",
				callbackUrl: "http://localhost:8082/naverlogin", //로그인하면 callback처리 되서 naverlogin으로 이동한 후 로그인 정보가 있으면 가입페이지로
				isPopup: true, //로그인창 팝업
				callbackHandle: true
			}
		);

		//naverlogin페이지로 넘어가서 callback 처리됨 naverlogin페이지 반드시 필요
		naverLogin.init();
	

</script>
</body>
</html>