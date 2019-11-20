<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1">


<link href="http://www.jqueryscript.net/css/jquerysctipttop.css" rel="stylesheet" type="text/css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!-- Google font -->
<link
	href="https://fonts.googleapis.com/css?family=Montserrat:400,500,700"
	rel="stylesheet">

<!-- Bootstrap -->
<link rel="stylesheet" href="http://netdna.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">


<!-- nouislider -->
<link type="text/css" rel="stylesheet" href="css/nouislider.min.css" />

<!-- Font Awesome Icon -->
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/sub.css">
</head>

<body>
<jsp:include page="header.jsp"></jsp:include>
	<div class="main">
		<div class="shop_top">
			<div class="container">
				
				<div class="sub_contain">
					<div class="sub_title_name">${sessionScope.uname }님의 구독 채널</div>
						<c:forEach var="s" begin="0" end="0" items="${list_sub }">
						<div class="sub_name"><span>${s.beuid }님의 채널입니다.</span>
						</c:forEach>
					<div id="mixedSlider" class="mixedSlider01">
                    <div class="MS-content">
                     <c:forEach var="s" items="${list_sub }">
                        <div class="item">
                          
						<div class="sub_title">
							<div class="sub_video"><a href="#">
								<img src="img/${s.p_sangse}" width="300" height="250"
									class="proicon" />
									</a>
							</div>
							<div class="sub_name">
								<a href="#"><span>${s.pname }</span></a>
							</div>
							<div class="sub_date">
								<span>${s.p_date }</span>
							</div>
							<div class="sub_hits">
								<span>조회수:&nbsp${s.hits }</span>
							</div>
						</div>
					
                        </div>
                       </c:forEach>
                        
                    </div>
                    <div class="MS-controls">
                        <button class="MS-left"><i class="fa fa-angle-left" aria-hidden="true"></i></button>
                        <button class="MS-right"><i class="fa fa-angle-right" aria-hidden="true"></i></button>
                    </div>
                </div>

                    </div>
                    
                </div>
                	
		</div>			
 </div>
				
<script src="js/multislider.js"></script> 
<script>
		$('#basicSlider').multislider({
			continuous: true,
			duration: 2000
		});
		$('.mixedSlider03').multislider({
			duration: 750,
			interval: 3000
		});
		
		$('.mixedSlider02').multislider({
			duration: 750,
			interval: 3000
		});
		$('.mixedSlider01').multislider({
			duration: 750,
			interval: 3000
		});
		
		
</script>
	<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-36251023-1']);
  _gaq.push(['_setDomainName', 'jqueryscript.net']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
  })();

</script>
<jsp:include page="footer.jsp"></jsp:include>
</body>




</html>