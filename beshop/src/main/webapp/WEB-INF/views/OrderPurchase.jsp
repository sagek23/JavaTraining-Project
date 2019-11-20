<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->
	<link rel="stylesheet" href="css/orderpurchase.css">
	<style type="text/css">
	.totalboxing
	{
	padding-left: 200px;
	padding-right: 200px;
	}
	</style>
	<script type="text/javascript" src=""></script>
	<script type="text/javascript">
	$(function(){
		var snsid = localStorage.getItem('id');
		
		var oprice=localStorage.getItem('oprice');
		var email=localStorage.getItem('email');
		var name=localStorage.getItem('name');
		var addr=localStorage.getItem('addr');
		var zipcode=localStorage.getItem('zipcode');
		var paynum=localStorage.getItem('merchant_uid');
		var onum=localStorage.getItem('onum');
		var pname=localStorage.getItem('pname');
		var rname=localStorage.getItem('rname');
		var odphone=localStorage.getItem('odphone');
		var odmemo=localStorage.getItem('odmemo');
	
		
		$("#omemo").text(odmemo);
		$("#recivename").text(rname);
		$("#ophone").text(odphone);
		$("#oaddr").text(addr);

	});
	</script>
	<style>
	footer {position: fixed; bottom:0; width:100%;}
	
	</style>
</head>
<body>


<jsp:include page="header.jsp"></jsp:include>
	

        <main style="margin-top:25px;">
        <div class="totalboxing" >
            <div class="row">
                <div class="col-sm-3 col-xs-3">
                    <h1>주문완료</h1>
                </div>
            </div>
            <div class="totalpage">
           <div class="line"></div>
            <div class="o_headtext">
                <p class="o_text">감사합니다! <strong>주문이 완료</strong>되었습니다.</p>
                <p class="o_num">주문번호 : <strong>${d.onum }</strong></p>
            </div>
      
                        </div>
                    </div>

			
        </main>
        <!--</div>-->
        <footer >
        
  	<jsp:include page="footer.jsp"></jsp:include>  
</footer>
</body>

</html>