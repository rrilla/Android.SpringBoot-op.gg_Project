<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	background-color: #f3f5f7;
	display: flex;
	justify-content: center;
	align-items: center;
	min-height: 115vh;
}

/* 로그인 카드 스타일  */
.container {
	background-color: white;
	width: 450px;
	height: 682px;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .2);
}
/* 로그인 로고 이미지 스타일 */
.logo_img {
	width: 128px; 
	height: 32px; 
	padding-top: 40px; 
	margin-bottom: 42px;
}
.loginForm {
	overflow: hidden;
}

/* 로그인 버튼 스타일 */
.loginButton {
	width: 100%;
	height: 50px;
	border: none;
	color: white;
	font-size: 16px;
	font-weight: 700;
	background-color: #dddfe4;
	margin-top: 40px;
	border-radius: 3px;
	margin-bottom: 16px;
}
/* input 태그 스타일  */
input {
	width: 100%;
	height: 100%; 
	outline: none;
	border: none;
	padding-top: 30px;
}
/* 유저아이디 label 스타일  */
.username_label {
	color: #7b858e;
	position: absolute;
	width: 100%;
	height: 100%; 
	left : 2px;
	top: 0px;
	border-bottom: 1px solid lightgray;
	padding-bottom: 10px;
}
/* 유저 아이디 input 클릭시 밑에 파란색 밑줄 */
.username_label::after {
	content: "";
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0%;
	top: 0%;
	border-bottom: 1px solid #1ea1f7;
	transform: translateX(-110%);
}
/* 유저 비밀번호 input 클릭시 밑에 파란색 밑줄 */
.password_label::after {
	content: "";
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0%;
	top: 0%;
	border-bottom: 1px solid #1ea1f7;
	transform: translateX(-110%);
}
/* label 안에 있는 아이디라고 적혀있는 span 스타일  */
.username_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
/* input 태그 클릭시 동작하는 애니메이션  */
input:focus + .username_label .username_span, 
input:valid + .username_label .username_span,
input:focus + .password_label .password_span,
input:valid + .password_label .password_span {
	transform: translateY(-170%);
	font-size: 12px;
	color: #1ea1f7;
}
input:focus + .username_label::after,
input:focus + .password_label::after {
	transform: translateX(0%);
}

/* 유저 비밀번호 스타일  */
.password_label {
	color: #7b858e;
	position: absolute;
	width: 100%;
	height: 100%; 
	left : 2px;
	top: 0px;
	border-bottom: 1px solid lightgray;
	padding-bottom: 10px;
}
/* label 안에 있는 비밀번호라고 적혀있는 span 스타일  */
.password_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
/* 회원가입 텍스트 텍스트 */
.signUp_text {
	text-align: center;
	font-size: 14px;
}
/* 회원가입 링크 스타일 */
.signUp_text > a {
	color: #1ea1f7;
}
</style>
</head>
<body>
	<div class="container">
		<div style="text-align:center;">
			<a href="/main">
				<img alt="main" src="https://member.op.gg/img_opgglogo.1924961d.svg" class="logo_img">
			</a>
		</div>
		<div style="margin: 0px 40px;">
			<form class="loginForm" id="form">
				<div style="position: relative; margin-bottom: 20px;">
					<input type="text" name="username" id="username" autocomplete="off" required onKeyup="inputHandle()"/>
					<label for="username" class="username_label">
						<span class="username_span">아이디</span>
					</label>
				</div>
				<div style="position: relative;">
					<input type="password" name="password" id="password" required onKeyup="inputHandle()" /> 
					<label for="password" class="password_label">
						<span class="password_span">비밀번호</span>
					</label>
				</div>
				<button type="button" id="loginButton" class="loginButton" onClick="loginBtn()">로그인</button>
				<div class="signUp_text">
					인생.GG에 처음이세요? <a href="/signUpForm">회원가입하기</a>
				</div>
			</form>
		</div>
	</div>
</body>

<script>
	const username = document.querySelector("#username");
	const password = document.querySelector("#password");
	const button = document.querySelector("#loginButton");
	
	function inputHandle() {
		if(username.value && password.value) {
			button.disabled = false;
			button.style.backgroundColor = "#1ea1f7";
		} else {
			button.disabled = true;
			button.style.backgroundColor = "#dddfe4"
		}
	}

</script>
</html>