<%@ page contentType="text/html; charset=EUC-KR" %>
<%@ page pageEncoding="EUC-KR"%>


<!DOCTYPE html>

<html lang="ko">
	
<head>
	<meta charset="EUC-KR">
	
	<!-- 참조 : http://getbootstrap.com/css/   참조 -->
	<meta name="viewport" content="width=device-width, initial-scale=1.0" />
	
	<!--  ///////////////////////// Bootstrap, jQuery CDN ////////////////////////// -->
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" >
	<link rel="stylesheet" href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
	<link rel="stylesheet" href="/resources/demos/style.css">
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" ></script>
	<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	
		<!-- Bootstrap Dropdown Hover CSS -->
   <link href="/css/animate.min.css" rel="stylesheet">
   <link href="/css/bootstrap-dropdownhover.min.css" rel="stylesheet">
   
    <!-- Bootstrap Dropdown Hover JS -->
   <script src="/javascript/bootstrap-dropdownhover.min.js"></script>
	
	<!--  ///////////////////////// CSS ////////////////////////// -->
	<style>
       body > div.container{
        	border: 3px solid #D6CDB7;
            margin-top: 10px;
        }
    </style>

<script type="text/javascript">

$(function() {
	   //==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	   $( ".btn:contains('등')" ).on("click" , function() {
	      fncAddProduct();
	   });
	});


//============= "취소"  Event 처리 및  연결 =============
$(function() {
	//==> DOM Object GET 3가지 방법 ==> 1. $(tagName) : 2.(#id) : 3.$(.className)
	$("a[href='#' ]").on("click" , function() {
		$("form")[0].reset();
	});
});	

$(function(){
	$('#manuDate').datepicker({ dateFormat : "yy/mm/dd"});
})



function fncAddProduct(){
   //Form 유효성 검증
    //var name = document.detailForm.prodName.value;
   var name=$("input[name='prodName']").val();
   var detail=$("input[name='prodDetail']").val();
   var price=$("input[name='price']").val();
   var manuDate=$("input[name='manuDate']").val();
   
   /* var detail = document.detailForm.prodDetail.value;
   var manuDate = document.detailForm.manuDate.value;
   var price = document.detailForm.price.value; */
  // var target = document.getElementById("cate");
   //var cateName = target.options[target.selectedIndex].text;
  // var cateName = $("#cate option:checked").text();
  // console.log('name : ' + cateName)
  // document.getElementById("cateName").value = cateName;
   
   if(name == null || name.length<1){
      alert("상품명은 반드시 입력하여야 합니다.");
      return;
   }
   if(detail == null || detail.length<1){
      alert("상품상세정보는 반드시 입력하여야 합니다.");
      return;
   }
   if(manuDate == null || manuDate.length<1){
      alert("제조일자는 반드시 입력하셔야 합니다.");
      return;
   }
   if(price == null || price.length<1){
      alert("가격은 반드시 입력하셔야 합니다.");
      return;
   }

   $("form").attr("method" , "POST").attr("action" , "/product/addProduct").submit();
}

function resetData(){
	document.detailForm.reset();
}

</script>
</head>

<body>

<jsp:include page="/layout/toolbar.jsp" />

<div class="navbar  navbar-default">
        <div class="container">
        	<a class="navbar-brand" href="/index.jsp">Model2 MVC Shop</a>
   		</div>
   	</div>
   	<!-- ToolBar End /////////////////////////////////////-->

	<!--  화면구성 div Start /////////////////////////////////////-->
	<div class="container">
	
		<h1 class="bg-primary text-center">제 품 등 록</h1>
		
		<!-- form Start /////////////////////////////////////-->
		<form class="form-horizontal">
		
		  <div class="form-group">
		    <label for="prodName" class="col-sm-offset-1 col-sm-3 control-label">상 품 명</label>
		    <div class="col-sm-4">
			<input type="text" class="form-control" id="prodName" name="prodName" placeholder="상 품 명">
			</div>
		</div>	
		  
		  <div class="form-group">
		    <label for="prodDetail" class="col-sm-offset-1 col-sm-3 control-label">상품상세정보</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="prodDetail" name="prodDetail" placeholder="상품상세정보">
		    </div>
		  </div>
		  
		   <div class="form-group">
		    <label for="manuDate" class="col-sm-offset-1 col-sm-3 control-label">제조일자</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="manuDate" name="manuDate" class="ct_input_g" maxLength="10" minLength="6">&nbsp;
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="price" class="col-sm-offset-1 col-sm-3 control-label">가 격</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="price" name="price" placeholder="가 격">
		    </div>
		  </div>
		  
		  <div class="form-group">
		    <label for="fileName" class="col-sm-offset-1 col-sm-3 control-label">상품이미지</label>
		    <div class="col-sm-4">
		      <input type="text" class="form-control" id="fileName" name="fileName" placeholder="상품이미지">
		    </div>
		  </div>
		
		  
		  
		  <div class="form-group">
		    <div class="col-sm-offset-4  col-sm-4 text-center">
		      <button type="button" class="btn btn-primary"  > 등&nbsp;록</button>
			  <a class="btn btn-primary btn" href="#" role="button">취&nbsp;소</a>
		    </div>
		  </div>
		</form>
		<!-- form Start /////////////////////////////////////-->
		
 	</div>
	<!--  화면구성 div end /////////////////////////////////////-->
	
</body>

</html>