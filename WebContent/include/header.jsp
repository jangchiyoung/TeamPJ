<%@page import="com.jcpdev.dto.Member"%>

<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko" class="html"> 
<head>
<meta charset="UTF-8">
<title>아나바다</title>
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css" integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.min.js" integrity="sha384-skAcpIdS7UcVUC05LJ9Dxay8AXcDYfBJqt1CJ85S/CFujBsIzCIv+l9liuYLaMQ/" crossorigin="anonymous"></script> -->
<!-- <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ" crossorigin="anonymous"></script> -->
<script type="text/javascript">
function enterkey() {
	if (window.event.keyCode == 13) {
		document.charset = "utf-8"; 
		document.formname.acceptCharset = "utf-8"
		formname.submit();
	} 
}
window.onload = function mailRefresh() {
	$.ajax({
		type : 'get', 
		url : './view/mail/MailRefresh_ajax.jsp', 
// 		data : {"id":id}, 
		dataType : "text",
		success : function(data) { 
			$('#mail_cnt').html(data);
		}
	});
	setTimeout(mailRefresh,3000);
	return false;
};
</script>
</head>
<body>
<div class="header fixed-top">
<div class="container fixed-top">
<nav class="navbar  navbar-expand-lg">
  <div class="container-fluid">
   <a href="index.do"><img src="img/logo.png" class="img-logo me-auto" width="100" height="74"></a>
      <form class="d-flex" action="SearchAction.do" method="post" name="formname"  accept-charset="UTF-8">
        <input class="form-control me-2 searchbox" type="text" onkeyup="enterkey()" name="search_name" placeholder="물건명을 입력해보세요!" >
      </form>
    <div class="collapse navbar-collapse ">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 nav-gr">
        <c:if test="${sessionScope.user_id == null}">
        <li class="nav-item">
          <a class="btn btn-outline-success" href="login.do">로그인</a>
          <a class="btn btn-outline-success" href="join.do">회원가입</a>
        </li>
        </c:if>
        <c:if test="${sessionScope.user_id != null}">
        <li class="nav-item">
         	<img class="img_profile" src="./img/messge.png" onclick="location.href='mail.do'">
         	<div class="chat_cnt" id="mail_cnt">0</div>
         	<img class="img_profile" src="/img/${user_img }" onclick="location.href='mypage.do'">
       		<a class="btn btn-outline-success" href="mypage.do">${user_name} 님</a>
          <a class="btn btn-outline-success" href="logout.do">로그아웃</a>
        </li>
        </c:if>
      </ul>
    </div>
  </div>
</nav>
</div>
</div>