<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/alert.jsp" %>
<style>
/* 멀티서치 검색하는 부분 레이아웃 스타일 */
.multi_page_container {
	position: relative;
}
.multi_search_container {
	background-color: white;
	height: 180px;
	padding: 24px 0;
}

.multi_search_layout {
	background-color: #f7f7f9;
	width: 1080px;
	height: 175px;
	margin: 0 auto;
}
/* 검색하는 부분 textarea 스타일 */
.multi_search_content {
	background-color: #f7f7f9;
	width: 1060px;
	height: 100px;
	resize: none;
	border: none;
	border-bottom: 1px solid #ebeef1;
	padding: 10px;
	font-size: 12px;
}
.multi_search {
	position: relative;
}
.multi_search_button {
	position: absolute;
	right: 10px;
	top: 11px;
	padding: 7px;
	font-size: 12px;
	background-color: #5383e8;
	border: none;
	border-radius: 5px;
	color: white;
}
/* 검색 결과 레이아웃 스타일 */
.result_container {
	background-color: white;
	width: 1080px;
	height: 530px;
	margin: 10px auto;
	border-radius: 5px;
}
.result_title {
	font-size: 14px;
	color: #202d37;
	padding: 10px;
	border-bottom: 1px solid #ebeef1;
}
/* 결과 내용 스타일 */
.result_content {
	display: flex;
	height: 100%;
	flex-direction: column;
	align-items: center;
}
.contet_title {
	padding-top: 47px;
    margin-top: 0;
    font-size: 20px;
    font-weight: bold;
    color: #202d37;
}
.content_subTitle {
	margin-top: 16px;
    font-size: 15px;
    color: #202d37;
}
.content_guide_img {
	background-image: url("https://kkukowiki.kr/images/2/27/%EB%85%B8%EC%A7%84%EA%B5%AC.jpg");
	background-size: 100% 100%;
	width: 800px;
	height: 300px;
	margin: 40px;
}
</style>
<div class="multi_page_container">
	<div class="multi_search_container">
		<div class="multi_search_layout">
			<form class="multi_search_form" action="multiSearch" method="post">
				<textarea class="multi_search_content" id="content" name="content"></textarea>
				<div class="multi_search">
					<button class="multi_search_button">여러명의 소환사 이름으로 요약 검색</button>
				</div>
			</form>
		</div>
	</div>
	
	<div class="result_container">
		<div class="result_title">멀티서치</div>
		<div class="result_content">
			<div class="contet_title">채팅창의 내용을 붙여 넣으면, 게임에 참여중인 모든 유저를 요약하여 볼 수 있습니다!</div>
			<div class="content_subTitle">여러명의 소환사 이름으로 요약 검색</div>
			<div class="content_guide_img"></div>
		</div>
	</div>
</div>

<script>
	const placeholder = document.querySelector("#content");
	placeholder.placeholder = "고명수 님이 방에 참가했습니다. \n한재현 님이 방에 참가했습니다." + 
							  "\n김재학 님이 방에 참가했습니다. \n허준석 님이 방에 참가했습니다. \n문주완 님이 방에 참가했습니다.";
</script>

<%@ include file="../includes/footer.jsp" %>