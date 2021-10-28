<%@include file="include/header.jsp"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<link rel="stylesheet" type="text/css"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>


<link rel="stylesheet" type="text/css" href="css/header.css">
<link rel="stylesheet" type="text/css" href="css/footer.css">
<link rel="stylesheet" type="text/css" href="css/admin.css">
<link rel="stylesheet" type="text/css" href="css/mypage.css">
<link rel="stylesheet" type="text/css" href="css/my_product.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<section class="home-main-section">
	<div class="mypage-main-section">
		<div class="mypage-section1">
			<div class="container">
				<div class="main-body">
					<div class="row gutters-sm">
						<div class="col-md-4 mb-3">
							<div class="card">
								<div class="card-body">
									<div class="d-flex flex-column align-items-center text-center">
										<div class="filebox">
											<a href="mypage.do"> <img src="/img/${user_img }"
												class="rounded-circle" width="150" height="150"
												id="preview-image">
											</a>
										</div>
									</div>
								</div>
							</div>
							<div class="card mt-3">
								<div class="list-group list-group-flush">
									<a class="list-group-item" href=""> <i
										class="bi bi-bag-plus" style="margin-right: 10px;"></i>상품 관리<span
										class="badge badge-success">100</span></a> <a
										class="list-group-item" href=""><i class="bi bi-bag-fill"
										style="margin-right: 10px;"></i>회원 관리<span
										class="badge badge-success">2311231</span></a> <a
										class="list-group-item" href=""> <i
										class="bi bi-info-circle" style="margin-right: 10px;"></i>신고
										관리<span class="badge badge-success">3123</span></a> <a
										class="list-group-item" href=""><i
										class="bi bi-info-circle" style="margin-right: 10px;"></i>카테고리
										관리<span class="badge badge-success">1212</span></a>
								</div>
							</div>
						</div>
						<div class="col-md-8">
							<h3>아나바다 회원 관리</h3>
							<div class="card mb-3">
								<div class="card-body">
									<h4 style="margin-bottom: 20px;">
										<i class="bi bi-bag-fill" style="margin-right: 10px;"></i>회원
										내역
									</h4>
									<table class="table table-hover">
										<tr>
											<th>아이디</th>
											<th>이름</th>
											<th>전화번호</th>
											<th>이메일</th>
											<th>주소</th>
											<th></th>
											
										</tr>
										<c:forEach items="${list }" var="user" varStatus="index">
										<tr>
											<td style="width: 8em;"><p class="product_list_name">${user.member_id }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_name }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_tel }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_email }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_address }</p></td>
											<td>
                			<a class="btn btn-danger" href="DeleteMemberAction.do?member_id=${user.member_id }"><i class="bi bi-trash"></i></a>
                		</td>
										</tr>
										</c:forEach>
									</table>
								</div>
							</div>
							<div class="card mb-3">
								<div class="card-body">
									<h4 style="margin-bottom: 20px;">
										<i class="bi bi-bag-fill" style="margin-right: 10px;"></i>탈퇴 회원
										내역
									</h4>
									<table class="table table-hover">
										<tr>
											<th>아이디</th>
											<th>이름</th>
											<th>전화번호</th>
											<th>이메일</th>
											<th>주소</th>
											<th></th>
											
										</tr>
										<c:forEach items="${Wuser }" var="user" varStatus="index">
										<tr>
											<td style="width: 8em;"><p class="product_list_name">${user.member_id }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_name }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_tel }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_email }</p></td>
											<td style="width: 8em;"><p class="product_list_name">${user.member_address }</p></td>
											<td>
                			<a class="btn btn-danger1" href="RecoverMemberAction.do?member_id=${user.member_id }"><i class="bi bi-trash"></i></a>
                		</td>
										</tr>
										</c:forEach>
									</table>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>

<%@include file="include/footer.jsp"%>