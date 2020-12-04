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

/* 회원가입 카드 스타일  */
.container {
	background-color: white;
	width: 450px;
	height: 682px;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .2);
}
/* 로그인 버튼 스타일 */
.loginButton {
	width: 100%;
	height: 50px;
	border: none;
	color: white;
	font-size: 16px;
	font-weight: 700;
	background-color: #dddfe4!important;
	margin-top: 40px;
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
.username_label::after {
	content: "";
	position: absolute;
	height: 100%;
	width: 100%;
	left: 0%;
	top: 0%;
	border-bottom: 1px solid #1ea1f7!important;
}
/* label 안에 있는 아이디라고 적혀있는 span 스타일  */
.username_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
/* input 태그 클릭시 발생하는 애니메이션  */
input:focus + .username_label .username_span, 
input:valid + .username_label .username_span,
input:focus + .password_label .password_span,
input:valid + .password_label .password_span {
	transform: translateY(-170%);
	font-size: 12px;
	color: #1ea1f7!important;
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
</style>
</head>
<body>
	<div class="container">
		<div style="text-align:center;">
			<img alt="main" src="https://member.op.gg/img_opgglogo.1924961d.svg"
				style="width: 128px; height: 32px; padding-top: 40px; margin-bottom: 42px;">
		</div>
		<div style="margin: 0px 40px;">
			<form class="loginForm" id="form">
				<div style="position: relative; margin-bottom: 20px;">
					<input type="text" name="username" id="username" autocomplete="off" required onChange="inputHandle(event)"/>
					<label for="username" class="username_label">
						<span class="username_span">아이디</span>
					</label>
				</div>
				<div style="position: relative;">
					<input type="password" name="password" id="password" required onChange="inputHandle(event)" /> 
					<label for="password" class="password_label">
						<span class="password_span">비밀번호</span>
					</label>
				</div>
				<button type="button" id="loginButton" class="loginButton" onClick="loginBtn()" disabled>로그인</button>
			</form>
		</div>
	</div>
</body>

<script>
	const username = document.querySelector("#username");
	const password = document.querySelector("#password");
	let button = document.querySelector("#loginButton");
	
	function inputHandle(e) {
		if(username.value && password.value) {
			button.disabled = false;	
		}
	}

</script>
</html>