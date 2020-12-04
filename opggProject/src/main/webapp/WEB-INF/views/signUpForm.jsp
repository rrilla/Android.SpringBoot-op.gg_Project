<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입 페이지입니다</title>
<style>
	div {
		color: red;
		font-size: 12px;
	}
</style>
</head>
<body>
	<h1>회원가입 페이지입니다.</h1>
	<form>
		<input type="text" name="username" id="username" placeholder="아이디" /> <br>
		<div id="username_condition"></div>
		<input type="text" name="nickname" id="nickname" placeholder="닉네임" /> <br>
		<div id="nickname_condition"></div>
		<input type="password" name="password" id="password" placeholder="비밀번호" /> <br>
		<div id="password_condition"></div>
		<input type="email" name="email" id="email" placeholder="이메일주소" /> <br>
		<div id="email_condition"></div>
		<button type="button" onClick="signUpButton()">회원가입</button>
	</form>
</body>
<script>
	function signUpButton() {
		// 각 input 값
		const username = document.querySelector("#username").value;
		const nickname = document.querySelector("#nickname").value;
		const password = document.querySelector("#password").value;
		const email = document.querySelector("#email").value;

		// 유효성 검사를 하기 위해서
		// 각 div 태그
		const username_condition = document.querySelector("#username_condition");
		const nickname_condition = document.querySelector("#nickname_condition");
		const password_condition = document.querySelector("#password_condition");
		const email_condition = document.querySelector("#email_condition");

		username_condition.textContent = "";
		nickname_condition.textContent = "";
		password_condition.textContent = "";
		email_condition.textContent = "";

		if(!username) {
			username_condition.textContent = "아이디를 입력해주세요";
		} else if(!nickname) {
			nickname_condition.textContent = "닉네임을 입력해주세요";
		} else if(!password) {
			password_condition.textContent = "비밀번호를 입력해주세요"; 
		} else if(!email) {
			email_condition.textContent = "이메일을 입력해주세요";			
		} else {
			const user = {
				username: username,
				nickname: nickname,
				password: password,
				email: email,
			}
			fetch("http://localhost:8000/signUp", {
				method: "POST",
				body: JSON.stringify(user),
				headers: {
					"Content-Type": "application/json; charset=utf-8",
				},
			})
			.then(res => res.text())
			.then(res => {
				if(res === "ok") {
					alert("회원가입 성공!!");
				} else {
					email_condition.textContent = "아이디가 없거나, 비밀번호가 틀렸습니다.";
				}
			});
		}
	}
</script>
</html>