
<%@ page language="java" contentType="text/html; charset=EUC-KR"
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

.messageBox{
	width: 100%;
}
.searchForm{
    width: 1080px;
    margin: 0 auto;
    border-radius: 4px;
    background: #f7f7f9;
    display: flex;
    flex-direction: row;
    
}
.button_box{
	width: 100%;
    border-top: solid 1px;
    padding: 12px;
    box-sizing: border-box;
    display: flex;
    justify-content: flex-end;
    margin-top:10px;
}
.search_button{
	font-size: 12px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.33;
    letter-spacing: normal;
    color: #ffffff;
    padding: 6px 16px;
    border-radius: 4px;
    background: #5383e8;
    border: 0;
    
}
.head{
	margin-top: 30px;
}
.TextArea{
	width: 100%;
    height: 120px;
    padding: 12px;
    border: 0;
    box-sizing: border-box;
    background: #f7f7f9;
    resize: none;
    font-size: 12px;
    font-weight: normal;
    font-stretch: normal;
    font-style: normal;
    line-height: 1.33;
    letter-spacing: normal;
}
form{
	display: block;
    margin-top: 0em;
   
}
textarea{
	overflow: auto;
    vertical-align: top;
     -webkit-writing-mode: horizontal-tb !important;
    text-rendering: auto;
    color: -internal-light-dark-color(black, white);
    word-spacing: normal;
    text-transform: none;
    text-indent: 0px;
    text-shadow: none;
    display: inline-block;
    text-align: start;
    -webkit-appearance: textarea;
    -webkit-rtl-ordering: logical;
    flex-direction: column;
    cursor: text;
    white-space: pre-wrap;
    overflow-wrap: break-word;
    font: 400 13.3333px Arial;
}
</style>
</head>
<body>
	<div class="head">
	<div class="searchForm">
		<form class="messageBox">
			<textarea name="query" class="TextArea"></textarea>
			<div class="button_box">
				<button type="submit" class="search_button">여러명의 소환사 이름으로 요약 검색</button>
			</div>	
		</form>
	</div>
	</div>
	<div class="container">
		
	</div>
</body>
</html>

<%-- 원격 dev랑 재학branch 
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>

<%@ include file="includes/footer.jsp" %>
--%>

