<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="css/loginPop2.css" rel='stylesheet' type='text/css' />
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="https://apis.google.com/js/api:client.js"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>Insert title here</title>

<script type='text/javascript'>
//카카오로그인
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정
    Kakao.init('3fc37ff4b17fd3a8918da187f484255f');
    function loginWithKakao() {
      // 로그인 창을 띄웁니다.
      Kakao.Auth.login({
        success: function(authObj) {
          //alert(JSON.stringify(authObj));
          Kakao.API.request({

        	  url: '/v2/user/me',
              success: function(res) {
               console.log(res);
               
               var id = res.id;      //유저의 카카오톡 고유 id
               //var userEmail = res.kaccount_email;   //유저의 이메일 - 카톡로그인으로는 로그인 안받와짐
               var userNickName = res.properties.nickname; //유저가 등록한 별명
               var profileImage = res.properties.profile_image;
               console.log("ID: "+id);
               //console.log(userEmail);
               console.log("Nickname: "+userNickName);
               console.log("ProfileImage: "+profileImage);
               //console.log("Access Token: "+authObj.access_token);
               location.href = '/joinpage';
               localStorage.setItem('id', id); //아이디 전송
               
                  }

                });
        },
        fail: function(err) {
          alert(JSON.stringify(err));
        }
      });
    };

  //]]>
</script>
<script type="text/javascript">
//구글 로그인
	var googleUser = {};
	var startApp = function() {
	  gapi.load('auth2', function(){
	    // Retrieve the singleton for the GoogleAuth library and set up the client.
	    auth2 = gapi.auth2.init({
	        
	      // 클라이언트 ID 설정하기
	      client_id: '383971103206-b6p2npdt5smrcrorj1naq8smlos9s3v8.apps.googleusercontent.com',
	      
	      cookiepolicy: 'single_host_origin',
	    });
	    attachSignin(document.getElementById('customBtn'));
	  });
	};
	
	function attachSignin(element) {
	  console.log(element.id);
	  auth2.attachClickHandler(element, {},
	      function(googleUser) {
	            googleUser.getBasicProfile().getName();
	            var profile = googleUser.getBasicProfile();
	            var id = profile.getId()
	            console.log("ID: " + id); 
	            console.log('Full Name: ' + profile.getName());
	            console.log('Given Name: ' + profile.getGivenName());
	            console.log('Family Name: ' + profile.getFamilyName());
	            console.log("Image URL: " + profile.getImageUrl());
	            console.log("Email: " + profile.getEmail());
				
	            var access_token = googleUser.getAuthResponse().id_token;
	            //console.log("Access Token: "+ access_token)액세스토큰
	            location.href = '/joinpage';
	            localStorage.setItem('id', id); //아이디 전송
	            
	      }, function(error) {
	        alert(JSON.stringify(error, undefined, 2));
	      });
	}	
</script>
</head>
<body>
    <div class="loginPg">
      <div class="logoBox"><img src="img/beShop3.png"  class="logo"/></div>
       <div class="login">
        <input type="text" name="id" class="idpwd" placeholder="아이디"/><br>
        <input type="password" name="pwd" class="idpwd" placeholder="패스워드"><br>
        <button class="btnLogin">로그인</button><br>
        <div class="snsLogin">
         <a id="custom-login-btn" href="javascript:loginWithKakao()">
		<button class="kakaoLogin"><img src="img/kakao.png" class="kakao"/>로그인</button><br>
		</a>
     	
	    <div id="gSignInWrapper">
	        <span class="label"></span>
	      <button id="customBtn" class="customGPlusSignIn"><img src="img/google.png" id="googleLogin" class="google">로그인</button>
	    </div>

	    <script>startApp();</script>

        </div>
        </div>
         <div class="loginPg2">
        <a href="#" class="login_find">아이디찾기</a>&nbsp;&nbsp;<span class="bar" >|</span>&nbsp;&nbsp;
        <a href="#" class="login_find">비밀번호찾기</a>&nbsp;&nbsp;<span class="bar">|</span>&nbsp;&nbsp;<a href="#" class="login_find">회원가입</a>
        </div>
    </div>
</body>
</html>