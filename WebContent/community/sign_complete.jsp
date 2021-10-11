<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
<link rel="stylesheet" href="../css/login.css?v=3">
<link rel="stylesheet" href="../css/find.css?v=3">
</head>
<body>
	<div id="login">
		<div id="body" style="padding-top: 19.5px;">
			<div class="container" style="padding-top: 28px;">
				<div class="ANBD_logo">
					<img src="../img/logo.png?v3"
						onclick="location.href='../index.jsp'" style="cursor: pointer;">
				</div>
				<div class="header_title">회원가입을 축하드립니다!!</div>
				<div class="login_line"></div>
				<div class="">
					<ul>
					<li>${vo.id }</li>
					<li>${vo.name }</li>
					<li>${vo.tel }</li>
					<li>${vo.email }</li>
					<li>${vo.address }</li>
 					</ul>
				</div>
				<div>
					<input class="button" type="button" value="확인" onclick="location.href='../index.jsp'">
					<input class="button" type="button" value="수정" onclick="location.href='update.jsp'">
				</div>
				<div class="button_section">
					<a class="" href="find_id.jsp">아이디 찾기</a>
					<span class="hor_line">|</span>
					<a class="" href="find_password.jsp">비밀번호 찾기</a>
					<span class="hor_line ">|</span>
					<a class="" href="sign_up.jsp">회원가입</a>
				</div>
			</div>
		</div>
	</div>
</body>
</html>