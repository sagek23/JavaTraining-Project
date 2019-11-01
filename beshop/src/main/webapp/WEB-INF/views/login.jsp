<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<meta http-equiv="X-UA-Compatible" content="IE=edge"/>
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width"/>
<script src="https://apis.google.com/js/api:client.js"></script>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<title>Login</title>

<style type="text/css">
   
    #customBtn:hover {
      cursor: pointer;
    }
    #googleLogin{
    	width: 100px;
    	height: 100px;
    }
    #naverLogin{
    	width: 100px;
    	height: 100px;
    }
  </style>
</head>
<body>

<a id="custom-login-btn" href="javascript:loginWithKakao()">
<img src="img/kakaoLogin.png" width="300"/>
</a>
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
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
               //var userEmail = res.kaccount_email;   //유저의 이메일
               var userNickName = res.properties.nickname; //유저가 등록한 별명
               var profileImage = res.properties.profile_image;
               console.log("ID: "+id);
               //console.log(userEmail);
               console.log("Nickname: "+userNickName);
               console.log("ProfileImage: "+profileImage);
               //console.log("Access Token: "+authObj.access_token);
               location.href = '/joinpage';
               localStorage.setItem('id', id);
               
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

 <!-- 구글 -->
<script type="text/javascript">
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
	            //console.log("Access Token: "+ access_token)
	            location.href = '/joinpage';
	            localStorage.setItem('id', id);
	            
	      }, function(error) {
	        alert(JSON.stringify(error, undefined, 2));
	      });
	}	
</script>

    <div id="gSignInWrapper">
        <span class="label"></span>
        <div id="customBtn" class="customGPlusSignIn">
          <img src="img/googleLogin.png" id="googleLogin">
        </div>
    </div>
    <div id="name"></div>
    <script>startApp();</script>
    
 <!-- 네이버로그인 -->
 <div id="naverIdLogin">
 </div>
<script type="text/javascript">
	
   var naverLogin = new naver.LoginWithNaverId(
			{
				clientId: "izje4O3kf_B_jykImcq9",
				callbackUrl: "http://localhost:8082/naverlogin",
				isPopup: false, /* 팝업을 통한 연동처리 여부 */
				loginButton: {color: "green", type: 1, height: 60} /* 로그인 버튼의 타입을 지정 */
			}
		);
		
		/* 설정정보를 초기화하고 연동을 준비 */
		naverLogin.init();

   window.addEventListener('load', function () {
	   naverLogin.getLoginStatus(function (status) {
			if (status) {
				/* 필수적으로 받아야하는 프로필 정보가 있다면 callback처리 시점에 체크 */
				var email = naverLogin.user.getEmail();
				var email = naverLogin.user.getEmail();
	 			var nickname = naverLogin.user.getNickName();
	 			var profileImage = naverLogin.user.getProfileImage();
	 			var birthday = naverLogin.user.getBirthday();			
	 			var id = naverLogin.user.getId();
	 			var age = naverLogin.user.getAge();
	 	       console.log('id: ' + id);
	 	       console.log('NickName: ' + nickname);
	            console.log('Age: ' + age);
	            console.log('Birthday: ' + birthday);
	            console.log("Image URL: " + profileImage);
	            console.log("Email: " + email);

				
				if( email == undefined || email == null) {
					alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
					/* 사용자 정보 재동의를 위하여 다시 네아로 동의페이지로 이동함 */
					naverLogin.reprompt();
					return;
				}
			
				window.location.replace("http://localhost:8082/joinpage"); //callback 처리후 이동페이지
				localStorage.setItem('id', id);
			} else {
				console.log("callback 처리에 실패하였습니다.");
			}
		});
    
   });
	    
</script>

</body>
</html>
