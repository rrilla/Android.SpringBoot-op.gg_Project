<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
	div {
		color: red;
		font-size: 12px;
	}
</style>
</head>
<body>
	<h1>회원수정 페이지입니다</h1>
	<form>
		<input type="text" value="" /> <br>
		<input type="password" name="password" id="password" value="" /> <br>
		<div id="password_condition"></div>
		<input type="text" name="nickname" id="nickname" value="" /> <br>
		<div id="nickname_condition"></div>
		<input type="email" name="email" id="email" value="" /> <br>
		<div id="email_condition"></div>
		<button type="button" onClick="modifyButton()">수정</button>
	</form>
</body>
<script>
	function modifyButton() {
		// 각 input 값
		const username = document.querySelector("#username").value;
		const password = document.querySelector("#password").value;
		const nickname = document.querySelector("#nickname").value;
		const email = document.querySelector("#email").value;

		// 유효성 검사를 하기 위해서
		// 각 div 태그
		const password_condition = document.querySelector("#password_condition");
		const nickname_condition = document.querySelector("#nickname_condition");
		const email_condition = document.querySelector("#email_condition");

		password_condition.textContent = "";
		nickname_condition.textContent = "";
		email_condition.textContent = "";
		
		if(!password) {
			password_condition.textContent = "비밀번호를 입력해주세요"
		} else if(!nickname) {
			nickname_condition.textContent = "닉네임을 입력해주세요";
		} else if(!email) {
			email_condition.textContent = "이메일을 입력해주세요";
		} else {
			const user = {
				username: username,
				password: password,
				nickname: nickname,
				email: email, 
			}
			fetch("http://localhost:8000/userModify", {
				method: "PUT",
				body: JSON.stringify(user),
				headers: {
					"Content-Type": "application/json; charset=utf-8",
				},
			})
			.then(res => res.text())
			.then(res => {
				if(res === "ok") {
					alert("회원수정 성공!!");
				} else {
					alert()	
				}
			});
		}
	}
</script>
</html>