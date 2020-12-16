<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/alert.jsp" %>
<style>
.board_sign {
	display: block;
	position: relative;
	height: 450px;
	background-color: white;
}
.board_sign_img {
	background: url("https://a-static.besthdwallpaper.com/league-of-legends-lol-world-championship-poro-tapeta-na-zed-3840x1080-54070_75.jpg");
	width: 100%;
	height: 100%;
	background-size: 100% 100%;
	position: absolute;
	top: 0;
	left: 0;
}
.board_sign_img::after {
	content: "";
	background-image: linear-gradient(180deg,rgba(51,56,60,.5),rgba(0,0,0,.5));
	position: absolute;
	top: 0;
	left: 0;
	width: 100%;
	height: 100%;
}
.sign_content {
	position: relative;
	max-width: 1044px;
	margin: 0 auto;
}

/* 게시판 리스트 헤더 */
.content_header {
	position: relative;
	margin-bottom: 8px;
	background-color: white;
	box-shadow: 0 1px 3px 0 rgba(0,0,0,.15);
}
.board_list {
	display: flex; 
	padding: 15px; 
	background-color: white; 
	box-shadow: 0 1px 3px 0 rgba(0,0,0,.15); 
	border-top: 1px solid #ebeef1;
}
.board_writer::before {
	content: "";
	border-left: 1px solid #ebeef1;
	height: 12px;
	margin: 0 8px;
}
/* 다음 이전 링크 스타일*/
.next_button, .prev_button {
	text-decoration: none;
	color: #7b858e;
	font-size: 14px;
	padding: 10px 5px 12px 13px;
	background-color: white; 
	border-radius: 5px; 
	border: 1px solid #dddfe4;
	margin-top: 10px;
}
.prev_button {
	padding: 10px 13px 12px 5px;
	margin-right: 10px;
}
.next_button img, .prev_button img {
	widht: 24px;
	height: 24px;
}
.thumbnail {
	width: 93px;
	height: 60px;
	float: right;
}
</style>
<div class="board_container">
	<div class="board_sign">
		<div class="board_sign_img"></div>
		<div class="sign_content">
		<div style="padding-top: 150px;">
			<a href="/main" style="display: flex; align-items: center; text-decoration: none;">
				<img src="https://talk.op.gg/images/game/icon-community-lol.png" alt="">
				<span style="color: white; font-size: 40px; margin-left: 15px;">리그오브레전드</span>
			</a>
		</div>
		<form class="summoner-search-form" action="/summoner" style="width: 300px; margin-left: 800px; margin-top: 50px;">
			<input type="text" name="username" class="summoner_search_text" placeholder="소환사명..." autocomplete="off" style="width: 300px;" />
			<button type="submit" class="summoner-search-form__button">
				<i class="__spSite __spSite-42"></i>
			</button>
		</form>
		</div>
	</div>
	
	<div class='board_content' style="max-width: 1044px; margin: 0 auto;">
		<div style="width: 900px; margin-top: -40px;">
			<div class="content_header">
				<div style="padding: 18px 0 17px 0;">
					<h3 style="padding-left: 20px;">게시판</h3>
					<c:if test="${not empty principal.username}">
						<a href="/board/write" style="position: absolute; right: 17px; top: 13px;">
							<img src="https://talk.op.gg/images/icon-write@2x.png" style="width: 30px;"/>
						</a>
					</c:if>
				</div>
			</div>
		
			<c:forEach var="board" items="${boardList.content}">
				<div class="board_list">
					<div style="line-height: 60px; color: #7b858e;">${board.bno}</div>
					<div style="padding-left: 20px; width: 290px; line-height: 27px;">
						<div style="font-size: 14px; color: #1e2022; padding-bottom: 5px;">
							<a style="text-decoration: none; color: black;" href="/board/detail/${board.bno }">${board.title }</a>
						</div>
						<div style="font-size: 14px; color: #98a0a7;">
							<span><fmt:formatDate value="${board.writeDate }"
									pattern="yyyy-MM-dd" /></span>
							<span class="board_writer">${board.user.username }</span>
						</div>				
					</div>
					<div style="width: 100%; position: relative;">
						<a href="/board/detail/${board.bno }"><img src="${board.thumbnail }" class="thumbnail"/></a>
					</div>
				</div>
				
			</c:forEach>
			
			<div style="text-align: center; margin-top: 20px;">
				<div>
					<c:if test="${boardList.first == false}">
						<a href="/boardList?page=${boardList.number-1 }"  class="prev_button" onClick="prevButton()">
							<img style="vertical-align: middle;" src="https://talk.op.gg/images/icon-arrow-left@2x.png" />
							<span style="vertical-align: middle;">이전</span>
						</a>
					</c:if>
					<c:if test="${boardList.last == false }">
					<a href="/boardList?page=${boardList.number+1 }"  class="next_button" onClick="nextButton">
						<span style="vertical-align: middle;">다음</span>
						<img style="vertical-align: middle;" src="https://talk.op.gg/images/icon-arrow-right@2x.png" />
					</a>
					</c:if>
				</div>
			</div>
		</div>
	</div>
</div>
<script>
	
</script>
<%@ include file="../includes/footer.jsp" %>