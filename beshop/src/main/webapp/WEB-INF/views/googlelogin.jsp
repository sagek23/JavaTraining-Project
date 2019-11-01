<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta name="google-signin-scope" content="profile email">
    <meta name="google-signin-client_id" content="383971103206-b6p2npdt5smrcrorj1naq8smlos9s3v8.apps.googleusercontent.com.apps.googleusercontent.com">
    <script src="https://apis.google.com/js/platform.js" async defer></script>
</head>
<body>
<script type="text/javascript">
// logout 로직
	function signOut() {
	var auth2 = gapi.auth2.getAuthInstance();
	  auth2.signOut().then(function () {
	  console.log('User signed out.');
	});
	}
</script>
   google 로그인
</body>
</html>