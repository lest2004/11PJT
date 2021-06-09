<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!--  ///////////////////////// JSTL  ////////////////////////// -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- ///////////////////////////// 로그인시 Forward  /////////////////////////////////////// -->
 <c:if test="${ ! empty user }">
 	<jsp:forward page="main.jsp"/>
 </c:if>
 <!-- //////////////////////////////////////////////////////////////////////////////////////////////////// -->


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
	body{
	background-image : url('data:image/png;base64,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');
	background-repeat : no-repeat;
	background-position : center bottom;
	background-size : 400px;
	}
	.jumbotron{
        opacity: 1;
        position: absolute;
        background-color: #fff;
	}

	
	</style>
   	
   	<!--  ///////////////////////// JavaScript ////////////////////////// -->
	<script type="text/javascript">
		
		//============= 회원원가입 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('회원가입')").on("click" , function() {
				self.location = "/user/addUser"
			});
		});
		
		//============= 로그인 화면이동 =============
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('로 그 인')").on("click" , function() {
				self.location = "/user/login"
			});
		});
		
		$( function() {
			//==> 추가된부분 : "addUser"  Event 연결
			$("a[href='#' ]:contains('상품검색')").on("click" , function() {
				self.location = "/product/listProduct"
			});
		});
		
	</script>	
	
</head>

<body>

	<!-- ToolBar Start /////////////////////////////////////-->
	<div class="navbar  navbar-default">
		
        <div class="container">
        
        	<a class="navbar-brand" href="#">다있소 쇼핑몰</a>
			
			<!-- toolBar Button Start //////////////////////// -->
			<div class="navbar-header">
			    <button class="navbar-toggle collapsed" data-toggle="collapse" data-target="#target">
			        <span class="sr-only">Toggle navigation</span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			        <span class="icon-bar"></span>
			    </button>
			</div>
			<!-- toolBar Button End //////////////////////// -->
			
			<div class="collapse navbar-collapse"  id="target">
	             <ul class="nav navbar-nav navbar-right">
	                 <li><a href="#">회원가입</a></li>
	                 <li><a href="#">로 그 인</a></li>
	           	</ul>
	       </div>
   		
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->
   	
	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
		
		<!-- 다단레이아웃  Start /////////////////////////////////////-->
		<div class="row">
	
			<!--  Menu 구성 Start /////////////////////////////////////-->     	
			<div class="col-md-3">
		        
		       	<!--  회원관리 목록에 제목 -->
				<div class="panel panel-primary">
					<div class="panel-heading">
						<i class="glyphicon glyphicon-heart"></i> 회원관리
         			</div>
         			<!--  회원관리 아이템 -->
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#">개인정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#">회원정보조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-primary">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-briefcase"></i> 판매상품관리
         			</div>
					<ul class="list-group">
						 <li class="list-group-item">
						 	<a href="#">판매상품등록</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
						 <li class="list-group-item">
						 	<a href="#">판매상품관리</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
		        </div>
               
               
				<div class="panel panel-primary">
					<div class="panel-heading">
							<i class="glyphicon glyphicon-shopping-cart"></i> 상품구매
	    			</div>
					<ul class="list-group">
						 <li class="list-group-item"><a href="#">상품검색</a></li>
						  <li class="list-group-item">
						  	<a href="#">구매이력조회</a> <i class="glyphicon glyphicon-ban-circle"></i>
						  </li>
						 <li class="list-group-item">
						 	<a href="#">최근본상품</a> <i class="glyphicon glyphicon-ban-circle"></i>
						 </li>
					</ul>
				</div>
				
			</div>
			<!--  Menu 구성 end /////////////////////////////////////-->   
			
	 	 	<!--  Main start /////////////////////////////////////-->   		

	   	 	<!--  Main end /////////////////////////////////////-->   		
	 	 	
		</div>
		<!-- 다단레이아웃  end /////////////////////////////////////-->
		
	</div>
	<!--  화면구성 div end /////////////////////////////////////-->

</body>

</html>