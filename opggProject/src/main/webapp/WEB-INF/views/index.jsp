
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="https://opgg-static.akamaized.net/css3/common.css?t=1606457445" rel="stylesheet" type="text/css">
<link href="https://opgg-static.akamaized.net/css3/new.css?t=1606457445" rel="stylesheet" type="text/css">
<style>
@font-face {
	font-family: "SF-Pro-Rounded-Regular";
	src: url("../../font/SF-Pro-Text-Black.ttf");
}
body {
	background-color: #5383e8;
	display: flex;
	justify-content: center;
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
	height: 300px;
	background-size: 100% 100%;
	background-image: url("../../resources/images/logo.jpg");
	margin-bottom: 20px;
}

.summoner_search_text {
	display: block;
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
}
.summoner-search-form__button {
	display: flex;
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
</style>
</head>
<body>
	<div class="container">
		<div class="logo">인생.GG</div>
		<div class="logo_image"></div>
		<form class="summoner-search-form">
			<input type="text" name="username" class="summoner_search_text" placeholder="소환사명..." autocomplete="off" />
			<button type="submit" class="summoner-search-form__button">
				<i class="__spSite __spSite-42"></i>
			</button>
		</form>
		
	</div>
</body>
</html>