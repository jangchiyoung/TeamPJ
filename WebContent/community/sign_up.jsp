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
			<div class="container" style="padding-top:28px;">
				<div class="ANBD_logo">
					<img src="../img/logo.png?v3" style="cursor: pointer;">
				</div>
				<div>
					<div class="header_title">회원가입</div>
				</div>
				<div class="login_line"></div>
				<form action="find_id.do" method="post">
					<div class="input_section">
						<input type="text" id="name" placeholder="이름"> 
						<input type="text" id="id" placeholder="아이디"> 
						<input type="email" id="email" placeholder="이메일">
						<input type="search" id="email" placeholder="주소">
						<input type="text" id="phone" placeholder="전화번호">
					</div>
					<div>
						<input class="button" type="submit" value="확인"> <input
							class="button" type="button" value="취소"
							onclick="location.href='Login.jsp'">
					</div>
				</form>
				<form action="">
					<div class="button_section">
						<a class="" href="find_id.jsp">아이디 찾기</a> <span class="hor_line">|</span>
						<a class="" href="find_password.jsp">비밀번호 찾기</a> <span
							class="hor_line ">|</span> <a class="" href="sign_up.jsp">회원가입</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>