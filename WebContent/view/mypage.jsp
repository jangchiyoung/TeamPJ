<%@include file="../include/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<link rel="stylesheet" type="text/css" href="./css/header.css">
<link rel="stylesheet" type="text/css" href="./css/footer.css">
<link rel="stylesheet" type="text/css" href="./css/mypage.css">

<div class="mypage-main-section">
	<div class="mypage-section1">
<div class="container">
    <div class="main-body">
         <form action="update_mypage.do">
          <div class="row gutters-sm">
            <div class="col-md-4 mb-3">
              <div class="card">
                <div class="card-body">
                  <div class="d-flex flex-column align-items-center text-center">
                    <div class="filebox">
	                    <img src="/img/${user_img1 }" class="rounded-circle" width="150" height="150" id="preview-image">
	                    <label for="img1">변경</label>
						<input type="file" id="img1" name="img1" value="${user_img1 }">
					</div>
                    <div class="mt-3">
                      <h4>${user_name}</h4>
                      <p class="text-muted font-size-sm">${user_address}</p>
                    </div>
                  </div>
                </div>
              </div>
              <div class="card mt-3">
                <div class="list-group list-group-flush"> 
                    <a class="list-group-item active" href="mypage.do"> <i class="bi bi-info-circle" style="margin-right: 10px;"></i>개인 정보 변경</a>
                    <a class="list-group-item" href="my_product.do"> <i class="bi bi-bag-plus" style="margin-right: 10px;"></i>판매 물품 관리<span class="badge badge-success">3</span></a>
                    <a class="list-group-item" href="purchaselist.do"><i class="bi bi-bag-fill" style="margin-right: 10px;"></i>구매 내역<span class="badge badge-success">4</span></a>
                    <a class="list-group-item" href="saleslist.do"> <i class="bi bi-journal-text" style="margin-right: 10px;"></i>판매 내역<span class="badge badge-success">12</span></a>
                    <a class="list-group-item" href="favoriteslist.do"><i class="bi bi-heart-fill" style="margin-right: 10px;"></i>관심 목록<span class="badge badge-success">22</span></a>
                    <a class="list-group-item" href="maillist.do"><i class="bi bi-mailbox" style="margin-right: 10px;"></i>쪽지 함<span class="badge badge-success">22</span></a>
                  </div>
              </div>
            </div>
            <div class="col-md-8">
              <div class="card mb-3">
                <div class="card-body">
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">이름</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" class="form-control" id="name" name="name" value="${user_name }">
                    </div>
                  </div>
                  <hr>     
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">아이디</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" disabled="disabled" class="form-control" value="${user_id }">
                      <input type="hidden" name="id" value="${user_id }">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">비밀번호</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="password"class="form-control">
                    </div>
                  </div> 
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">비밀번호 확인</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="password" class="form-control" id="password" name="password">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3"> 
                      <h6 class="mb-0">전화번호</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      <input type="text" class="form-control" id="tel" name="tel" value="${user_tel }">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">메일</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                   		 <input type="text" class="form-control" id="email" name="email" value="${user_email }">
                    </div>
                  </div>
                    <hr>
                    <div class="row">
                    <div class="col-sm-3">
                      <h6 class="mb-0">주소</h6>
                    </div>
                    <div class="col-sm-9 text-secondary">
                      	 <input type="text" class="form-control" id="address" name="address" value="${user_address }">
                    </div>
                  </div>
                  <hr>
                  <div class="row">
                    <div class="col-sm-12">
                      <input type="submit" value="수정" class="btn btn-outline-success btn-block">
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          </form>
        </div>
    </div>
	</div>
</div>
<script type="text/javascript">
function readImage(input) {
    if(input.files && input.files[0]) {
        const reader = new FileReader()
        reader.onload = e => {
            const previewImage = document.getElementById("preview-image")
            previewImage.src = e.target.result
        }
        reader.readAsDataURL(input.files[0])
    }
} 
const inputImage = document.getElementById("img1")
inputImage.addEventListener("change", e => {
    readImage(e.target)
})
</script>
<%@include file="../include/footer.jsp"%>