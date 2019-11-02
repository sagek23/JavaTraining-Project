<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<head>
   <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
   <title>NaverLoginSDK</title>
</head>
<body>
  <script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
   <script>
      var naverLogin = new naver.LoginWithNaverId(
         {
            clientId: "izje4O3kf_B_jykImcq9",
            callbackUrl: "http://localhost:8082/naverlogin",
            isPopup: true,
            callbackHandle: true
         }
      );
      naverLogin.init();

      window.addEventListener('load', function () {
         naverLogin.getLoginStatus(function (status) {

            if (status) {
               var email = naverLogin.user.getEmail();
	 			var nickname = naverLogin.user.getNickName();
	 			var profileImg = naverLogin.user.getProfileImage();
	 			var birthday = naverLogin.user.getBirthday();			
	 			var id = naverLogin.user.getId();
	 			var age = naverLogin.user.getAge();
	 		
	 			
	 			console.log("ID: " + id); 
	            console.log('NickName: ' + nickname);
	            console.log('Age: ' + age);
	            console.log('Birthday: ' + birthday);
	            console.log("Image URL: " + profileImg);
	            console.log("Email: " + email);
               if( email == undefined || email == null) {
                  alert("이메일은 필수정보입니다. 정보제공을 동의해주세요.");
                  naverLogin.reprompt();
                  return;
               }
             
               window.close();
             //callback처리 되면 이동 할 페이지. 맨뒤의 주소를 가려는 페이지로 변경할 것
               opener.parent.location = "http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/joinpage";
              // var newWindow = window.open("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/joinpage","_blank");
				
               //window.location.replace("http://" + window.location.hostname + ( (location.port==""||location.port==undefined)?"":":" + location.port) + "/joinpage");
				
			   localStorage.setItem('id', id); //id 상태유지
			   localStorage.setItem('profileImg', profileImg); //profileImg 상태유지
            } else {
               console.log("callback 처리에 실패하였습니다.");
            }
         });
      });

      
      
   </script>
    로그인 성공
</body>
</html>
