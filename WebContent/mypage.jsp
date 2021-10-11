<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내 페이지</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script>
<script src="js/main.js"></script>
</head>
<body>
<%@include file="include/header.jsp"%>
<section class="home-main-section">
<div class="floatwrap" style="display: block; right: 0px;">
	<div class="floatwing fix" style="top: 0px;">
		<div class="btn_toggle active">
			<span class="open"><span class="ti-menu -moslow"></span></span>
			<span class="close"><span class="ti-close -moslow"></span></span>
		</div>

		<div class="innerbox">
			<div class="inbox">
				<div class="quickmenu">
					<h3 style="text-align: center;">마이 페이지<span class=""></span></h3>
					<ul class="quickservice">
						<li><a href="" class="-moslow"><span>내 정보수정</span></a></li>
						<li><a href="" class="-moslow"><span></span>쪽지</a></li>
						<li><a href="" class="-moslow"><span></span>내 글</a></li>	
						<li><a href=""><span class="-moslow"></span>관심 상품</a></li>
						<li><a href="" class="-moslow"><span></span>판매 내역</a></li>
						<li><a href="" class="-moslow"><span></span>구매 내역</a></li>
					</ul>
				</div>
				<div class="sizeinfo">
                   <ul>
						<li class="BackNv"><a href="/main/html.php?htmid=service/shop.html">오프라인 매장 <br>운영안내</a></li> 						<br><br>
					</ul></div>
				</div>
				<div class="btn_updown">
					<a href="#" class="scrolltop -moslow">
					<span class="ti-arrow-up"></span></a>
					<a href="#" class="scrollbottom -moslow">
					<span class="ti-arrow-down"></span></a>
				</div>
			</div>
		</div>
	</div>
	<div>
	</div>
	<div class="row">
		<div class="card col-md-3 col-sm-6" onclick="TestFuc()">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
	</div>
	<div class="row">
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
		<div class="card col-md-3 col-sm-6">
			<img src="http://placehold.it/250x100" class="card-img-top" alt="...">
			<div class="card-body">
				<h5 class="card-title">Card title</h5>
				<div class="card-text">
					<span style="font-weight: bold;">20,000원</span><span class="card-span"><i class="bi bi-heart"></i> 4</span>
				</div>
			</div>
		</div>
	</div>
	
</section>
<%@include file="include/footer.jsp"%>		
</body>
</html>