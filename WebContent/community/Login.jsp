<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ANBD</title>
<link rel="stylesheet" href="../css/login.css?v=3">
</head>
<body>
	<div id="login">
		<div id="body" style="padding-top: 75px;">
			<div class="container">
				<div class="ANBD_logo">
					<img src="../img/logo.png?v3"
						onclick="location.href='home.do?page=${page}'"
						style="cursor: pointer;">
				</div>
				<div class="header_title">Login</div>
				<form action="loginAction.do" method="post" name="login_ok"
					onsubmit="return login_ok()">
					<div class="input_section">
						<input type="text" id="id" name="id" placeholder="ID"> <input
							type="password" id="pw" name="pw" placeholder="PASSWORD">
					</div>
					<input type="submit" value="로그인" class="login_button">
				</form>
				<div class="login_line"></div>
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