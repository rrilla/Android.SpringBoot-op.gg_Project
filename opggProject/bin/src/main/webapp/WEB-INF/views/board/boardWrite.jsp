<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/alert.jsp"%>
<script
	src="https://cdn.ckeditor.com/ckeditor5/23.1.0/classic/ckeditor.js"></script>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<link
	href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.css"
	rel="stylesheet">
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote-lite.min.js"></script>
<style>
.board_sign {
	display: block;
	position: relative;
	height: 450px;
	background-color: white;
}

.board_sign_img {
	background:
		url("https://a-static.besthdwallpaper.com/league-of-legends-lol-world-championship-poro-tapeta-na-zed-3840x1080-54070_75.jpg");
	width: 100%;
	height: 100%;
	background-size: 100% 100%;
	position: absolute;
	top: 0;
	left: 0;
}

.board_sign_img::after {
	content: "";
	background-image: linear-gradient(180deg, rgba(51, 56, 60, .5),
		rgba(0, 0, 0, .5));
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
	box-shadow: 0 1px 3px 0 rgba(0, 0, 0, .15);
}
/* 글쓰기 제목 입력 부분 */
.write_input>input {
	width: 825px;
	border: 1px solid #dddfe4;
	padding: 10px 16px 9px;
}

/* 취소 성공 버튼 스타일 */
.cancle_button {
	line-height: 19px;
	font-size: 16px;
	color: #7b858e;
	border-radius: 5px;
	background-color: white;
	border: 1px solid #dddfe4;
	width: 154px;
	height: 48px;
}

.success_button {
	color: #fff;
	border-radius: 4px;
	background-color: #46cfa7;
	border: 1px solid #dddfe4;
	width: 154px;
	height: 48px;
	line-height: 19px;
	font-size: 16px;
	margin-left: 594px;
}
</style>
<div class="board_container">
	<div class="board_sign">
		<div class="board_sign_img"></div>
		<div class="sign_content">
			<div style="padding-top: 150px;">
				<a href="/main"
					style="display: flex; align-items: center; text-decoration: none;">
					<img src="https://talk.op.gg/images/game/icon-community-lol.png"
					alt=""> <span
					style="color: white; font-size: 40px; margin-left: 15px;">리그오브레전드</span>
				</a>
			</div>
			<form class="summoner-search-form" action="/summoner"
				style="width: 300px; margin-left: 800px; margin-top: 50px;">
				<input type="text" name="username" class="summoner_search_text"
					placeholder="소환사명..." autocomplete="off" style="width: 300px;" />
				<button type="submit" class="summoner-search-form__button">
					<i class="__spSite __spSite-42"></i>
				</button>
			</form>
		</div>
	</div>

	<div class='board_content'
		style="max-width: 1044px; margin: 0 auto; height: 939px;">
		<div style="width: 900px; margin-top: -40px;">
			<div class="content_header">
				<div style="padding: 18px 0 17px 0;">
					<h3 style="padding-left: 20px;">글쓰기</h3>
				</div>

				<div class="board_write_container" style="padding: 20px;">
					<div class="write_input" style="margin-bottom: 10px;">
						<input type="text" id="title" placeholder="제목" />
					</div>
					<textarea id="summernote"></textarea>
				</div>
			</div>
		</div>
		<div style="display: flex;">
			<div>
				<button class="cancle_button" onClick="cancleButton()">취소</button>
			</div>
			<div>
				<button class="success_button" onClick="writeButton()">작성완료</button>
			</div>
		</div>
	</div>
</div>
<script>
	$('#summernote').summernote(
			{
				tabsize : 2,
				height : 400,
				lang: "ko-KR",
				callbacks: {
					onImageUpload : function(files) {
						summernoteImageUpload(files, this);
					}
				}
			});
	function summernoteImageUpload(files, editor,) {
		const form = new FormData();
		for(let i=0; i<files.length; i++) {
			form.append("files", files[i]);
		}
		fetch("/board/summernote", {
			method: "POST",
			body: form
		})
		.then(res => res.json())
		.then(res => {
			for(let i=0; i<res.length; i++) {
				$(editor).summernote("insertImage", res[i]);
			}
		});
	}
	
	function writeButton() {
		const title = document.querySelector("#title").value;
		const content = document.querySelector("#summernote").value;

		const board = {
			title: title,
			content: content,
		}
		
		fetch("/board/insert", {
			method: "POST",
			body: JSON.stringify(board),
			headers: {
				"Content-Type": "application/json",
			}
		})
		.then(res => res.text())
		.then(res => {
			if(res === "ok") {
				location.href="/boardList";
			} else {
				alert("등록 실패!!");
			}
		});
	}
</script>
<script>
	/* 취소 버튼 눌렀을 때 이동 */
	function cancleButton() {
		location.href = "/boardList";
	}
</script>
<script>
	
</script>

<%@ include file="../includes/footer.jsp"%>