<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지입니다</title>
<style>
body, html {
	width: 100%;
	height: 100%;
	font-size: 16px;
	margin: 0;
	background-color: #f3f5f7;
}
/* 회원가입 로고 이미지 스타일 */
.logo_img {
	width: 190px; 
	height: 48px; 
	padding-top: 88px; 
	margin-bottom: 56px;
}
/* 회원가입 카드 배경 스타일 */
.signUp_container {
	position: absolute;
	width: 610px;
	left: 50%;
	top: 0;
	bottom: 0;
	margin-left: -305px;
	background-color: #fff;
	box-shadow: 0 2px 4px 0 rgba(0, 0, 0, .2);
}

.signUp_form {
	display: flex;
	flex-direction: column;
	align-items: center;
	width: 100%;
	height: 100%;
}
/* 회원가입 폼 태그 제목 */
.signUp_form_text {
	font-weight: 400;
    font-size: 24px;
    line-height: 32px;
}
/* 회원가입 폼 태그 부가 설명 */
.signUp_form_sub {
	margin-top: 12px;
    padding: 16px;
    background-color: #f3f5f7;
    font-weight: 400;
    font-size: 14px;
    line-height: 20px;
    color: #52595f;
    margin-bottom: 32px;
    word-break: keep-all;
}
.signUp_input_style {
	position: relative;
	margin-bottom: 20px;
	width: 100%;
}
/* input 입력 스타일 */
input {
	width: 100%;
	height: 100%; 
	outline: none;
	border: none;
	padding-top: 30px;
}
/* 각 input에 들어가는 label 스타일 */
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
.nickname_label {
	color: #7b858e;
	position: absolute;
	width: 100%;
	height: 100%; 
	left : 2px;
	top: 0px;
	border-bottom: 1px solid lightgray;
	padding-bottom: 10px;
}
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
.email_label {
	color: #7b858e;
	position: absolute;
	width: 100%;
	height: 100%; 
	left : 2px;
	top: 0px;
	border-bottom: 1px solid lightgray;
	padding-bottom: 10px;
}
/* 각 label 안에 있는 span 스타일 */
.username_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
.nickname_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
.password_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
.email_span {
	position: absolute;
	bottom: 10px;
	transition: all 0.3s ease;
}
/* input 클릭시 동작하는 애니메이션 */
input:focus + .username_label .username_span,
input:focus + .nickname_label .nickname_span,
input:focus + .password_label .password_span,
input:focus + .email_label .email_span,
input:valid + .username_label .username_span,
input:valid + .nickname_label .nickname_span,
input:valid + .password_label .password_span,
input:valid + .email_label .email_span {
	transform: translateY(-170%);
	color: #1ea1f7;
	font-size: 12px;
}

/* 회원가입 버튼 스타일 */
Button { 
	width: 217px;
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
.signUp_nickname_message {
	position: relative;
    color: #98a0a7;
    margin-top: 8px;
    font-size: 14px;
    line-height: 20px;
}
</style>
</head>
<body>
	<div class="signUp_container">
		<div class="signUp_card" style="width: 100%; height:100%;">
			<div style="text-align: center;">
				<a href="/main">
					<img alt="main" src="https://member.op.gg/img_opgglogo.1924961d.svg" class="logo_img">
				</a>	
			</div>
			<div style="margin: 0 80px;">
				<form class="signUp_form" action="/join" method="post">
					<h2 class="signUp_form_text">기본 정보 입력</h2>
					<div class="signUp_form_sub">
						회원가입을 위해서 이메일 인증이 진행되며, 인증이 완료되기 전까지 회원가입이 완료가 되지 않습니다.
					</div>
					<div class="signUp_input_style">
						<input type="text" name="username" id="username" autocomplete="off" required onKeyup="inputHandle()" />
						<label for="username" class="username_label">
							<span class="username_span">아이디</span>
						</label>
					</div>
					<div class="signUp_input_style">
						<input type="text" name="nickname" id="nickname" autocomplete="off" required onKeyup="inputHandle()" />
						<label for="nickname" class="nickname_label">
							<span class="nickname_span">닉네임</span>
						</label>
					</div>
					<div class="signUp_nickname_message">
						개인정보를 기입하여 발생될 수 있는 피해는 OP.GG가 일절 책임지지 않습니다.
					</div>
					<div class="signUp_input_style">
						<input type="password" name="password" id="password" required onKeyup="inputHandle()" /> 
						<label for="password" class="password_label">
							<span class="password_span">비밀번호</span>
						</label>
					</div>
					<div class="signUp_input_style">
						<input type="text" name="email" id="email" required onKeyup="inputHandle()" />
						<label for="email" class="email_label">
							<span class="email_span">이메일</span>
						</label>
					</div>
					<div class="button_style">
						<button id="signUpButton" class="signUpButton"  >가입하기</button><!-- onClick="signBtn()" -->
						<button type="button"  onClick="cancleBtn()" style="background-color:white; color: black; border: 1px solid lightgray;">취소</button>	
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script>
	// 이메일 정규식 표현
	const emailPattern = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	// 각 input 태그
	const username = document.querySelector("#username");
	const nickname = document.querySelector("#nickname");
	const password = document.querySelector("#password");
	const email = document.querySelector("#email");

	// 회원가입 버튼 태그
	const button = document.querySelector("#signUpButton");
	
	function inputHandle() {
		if(username.value && nickname.value && password.value && email.value) {
			button.disabled = false;
			button.style.backgroundColor = "#1ea1f7";
		} else {
			button.disabled = true;
			button.style.backgroundColor = "#dddfe4"
		}
	}
	
// 	function signBtn() {
// 		if(!email.value || !emailPattern.test(email.value)) {
// 			alert("유효하지 않는 이메일입니다.");
// 		}	
// 	}

	/* 취소 버튼 클릭시 동작하는 이벤트 */
	function cancleBtn() {
		location.href = "/loginForm";
	}
</script>
</html>