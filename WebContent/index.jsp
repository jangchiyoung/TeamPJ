<%@include file="include/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/main.css">
<link rel="stylesheet" type="text/css" href="css/upScroll.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<section class="home-main-section">
		
	<div class="row">
	<h2 style="font-size: 1.5rem; margin-bottom: 1.5rem;">오늘의 상품 추천</h2>
		<c:forEach items="${list }" var="item" varStatus="index">
			<div class="card col-md-3 col-sm-6"
				onclick="location.href='detail.do?pno=${item.product_no}'">
				<img src="/img/${item.product_img1 }" class="card-img-top" alt="...">
				<div class="card-body">
					<h5 class="card-title size_limite">${item.product_name }</h5>
					<div class="card-text">
						<span style="font-weight: bold;"> <fmt:formatNumber
								value="${item.product_price }" pattern="#,###" />원
						</span><span class="card-span"><i class="bi bi-heart-fill"></i>
							${item.product_like }</span>
					</div>
				</div>
			</div>
		</c:forEach>
		 <div id="add"></div>
		 <button id="get" class="getList"  onclick="getList('${StartNo }','${EndNo }')">더보기</button>
		<div class="scroll_top_btn_warpper">
		<div class="scroll_top_btn">
		<a href="#header"></a>
		<img id="back-to-top" src="https://ccimage.hellomarket.com/web/2020/icon/btn_top_n_x2.png" alt="페이지 업 버튼">
		</div>
		</div>
	</div>
</section>

<script type="text/javascript">
$(function(){
	  $('#back-to-top').on('click',function(e){
	      e.preventDefault();
	      $('html,body').animate({scrollTop:0},600);
	  });
	  
	  $(window).scroll(function() {
	    if ($(document).scrollTop() > 10) {
	      $('#back-to-top').addClass('show');
	    } else {
	      $('#back-to-top').removeClass('show');
	    }
	  });
	});
	
function getList(StartNo,EndNo){
	$.ajax({
			type : 'post',
			url : './view/mail/index_Ajax.jsp',
			data : {"StartNo":StartNo,"EndNo":EndNo}, 
			dataType : 'html', 
			success : function(data) { 
				$('#add').html(data); 
				$('#get').remove();
			}
		});
	}
/* $(function(){
  $('.getList').click(function(){
    $('.get').Style.display:none;
  });
}); */
</script>
<%@include file="include/footer.jsp"%>