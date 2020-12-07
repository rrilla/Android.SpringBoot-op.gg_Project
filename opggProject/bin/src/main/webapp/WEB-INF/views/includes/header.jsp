<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://opgg-static.akamaized.net/css3/common.css?t=1606457445"
	rel="stylesheet" type="text/css">
<link href="https://opgg-static.akamaized.net/css3/new.css?t=1606457445"
	rel="stylesheet" type="text/css">
<style>
@font-face {
	font-family: "SF-Pro-Rounded-Regular";
	src: url("../../resources/font/SF-Pro-Text-Black.otf");
}

body, html {
	background-color: #5383e8;
	width: 100%;
	height: 100%;
}

.container {
	width: 1080px;
	margin: 0 auto;
}

.logo {
	text-align: center;
	font-size: 80px;
	color: #D4E0F9;
	font-weight: 700;
	margin: 20px;
	font-family: SF-Pro-Rounded-Regular;
}

.logo_image {
	width: 625px;
	margin: 0 auto;
	height: 300px;
	background-size : 100% 100%;
	background-image: url("../../resources/images/logo.jpg");
	background-size: 100% 100%;
}

.summoner_search_text {
	width: 100%;
	padding: 15px 150px 18px 17px;
	background: none;
	border: none;
	line-height: 17px;
	font-size: 14px;
	color: #9b9b9b;
	box-sizing: border-box;
	outline: none;
	box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.19);
	background-color: white;
	width: 600px;
	border-radius: 5px;
}

.summoner-search-form__button {
	position: absolute;
	top: 0px;
	right: 0px;
	height: 30px;
	margin: 10px 10px 0px 0px;
	padding: 0px;
	border-width: initial;
	border-style: none;
	border-color: initial;
	border-image: initial;
}
/* 로고 위 최신글 스타일 */
.alert_text {
	background-color: rgba(0, 0, 0, 0.5);
	width: 100%;
}
/* 최신글 링크 스타일 */
.alert_text > a {
	display: block;
	line-height: 40px;
	color: white;
	font-size: 12px;
	margin: 0 auto;
	text-decoration: none;
	width: 800px;
}
/* 카테고리 스타일 */
.category {
	display: flex;
	max-width: 1300px;
	margin: 0 auto;
	padding: 8px 0;
}
.category > li {
	margin-left: 24px;
	padding: 13px 0px 9px;
}
.category > li > a{
	text-decoration: none;
	color: #b3cdff;
	font-size: 15px;
	padding-bottom: 15px;
}
.category > li > a:hover {
	color: white;
	border-bottom: 3px solid white;
}
/* 로그인 버튼 스타일 */
.loginButton {
	color: white;
	background-color: #232f46;
	font-size: 12px;
	padding: 3px 20px;
	border: none;
	border-radius: 4px;
	line-height: 26px;
	position: absolute;
	right: 12px;
	top: 14px;
}
</style>
</head>
<body>
	<div style="display:relative;">
		<ul class="category">
			<li><a id="category_main" href="/main" style="">집에있자</a></li>
			<li><a id="category_multi" href="/multi">멀티서치</a></li>
			<li><a id="category_community" href="/board">커뮤니티</a></li>
		</ul>
		<button class="loginButton" onClick="loginButton()">로그인</button>
	</div>
		<div class="alert_text">
		<a href="">인생지지 모바일 위젯으로 소환사와 챔피언 정보를 쉽고 빠르게 확인하세요~</a>
	</div>	