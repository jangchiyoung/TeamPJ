<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ANBD</title>
<link rel="stylesheet" href="css/login.css?v=3">
</head>
<body>
	<div id="login">
		<div id="body" style="padding-top: 75px;">
			<div class="container">
				<div class="ANBD_logo">
					<img src="img/logo.png?v3"
						onclick="location.href='index.jsp'"
						style="cursor: pointer;">
				</div>
				<div class="header_title">로그인</div>
				<form action="loginAction.do" method="post">
					<div class="input_section">
						<input class="input" type="text" id="userid" name="userid" placeholder="ID">
						<input class="input" type="password" id="password" name="password" placeholder="PASSWORD">
					</div>
					<input class="button1 input" type="submit" value="로그인" class="login_button">
				</form>
				<div class="login_line"></div>
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