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

.comment_button {
   background-color: #46cfa7;
   color: white;
   border: #46cfa7;
   width: 90px;
   padding: 10px;
   margin-left: 776px;
}

.comment_delete {
   position: absolute;
   right: 0;
   bottom: 0;
   color: white;
   background-color: #ff7f7f;
   border: none;
   padding: 7px 10px;
   border-radius: 5px;
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
               <h3 style="padding-left: 20px;">글 상세보기</h3>
            </div>

            <div class="board_write_container" style="padding: 20px;">
               <div class="write_input" style="margin-bottom: 10px;">
                  <input type="text" id="title" placeholder="제목"
                     value="${board.title }" readonly />
               </div>
               <textarea id="summernote">${board.content }</textarea>
            </div>
         </div>
      </div>
      <div style="display: flex;">
         <div>
            <button class="cancle_button" onClick="cancleButton()">목록</button>
         </div>
         <c:if test="${principal.username == board.user.username}">
            <div>
               <button class="success_button" onClick="modifyButton(${board.bno})">수정</button>
            </div>
         </c:if>
      </div>
      <div
         style="border: 1px solid #dddfe4; margin-top: 10px; background-color: white; width: 900px;">
         <div style="padding: 10px;">
            <h2 style="font-size: 18px; display: inline;">댓글</h2>
  
            </span>
         </div>
         <c:if test="${not empty principal.username}">
            <div style="padding: 24px 16px;">
               <div
                  style="border: 1px solid #dddfe4; border-radius: 5px; position: relative;">
                  <textarea id="content" rows="4"
                     placeholder="주제와 무관한 댓글, 타인의 권리를 침해하거나 명예를 훼손하는 게시물은 별도의 통보 없이 제재를 받을 수 있습니다."
                     style="resize: none; border: none; width: 861px;"></textarea>
                  <div>
                     <button class="comment_button"
                        onClick="commentButton(${board.bno})">작성</button>
                  </div>
               </div>
            </div>
         </c:if>
         <c:forEach items="${board.comments}" var="comment">
            <div
               style="border-top: 1px solid #dddfe4; padding: 12px 12px 12px 20px;">
               <div style="width: 290px; line-height: 27px;">
                  <div style="font-size: 14px; color: #1e2022; padding-bottom: 5px;">
                     <span class="name"> <fmt:formatDate
                           value="${comment.writeDate }" pattern="yyyy-MM-dd" /></span> <span
                        style="color: #46cfa7"> ${comment.user.nickname } </span>
                  </div>
                  <div style="font-size: 14px; color: #98a0a7;">${comment.content }</div>
               </div>
               <c:if test="${comment.user.username == principal.username}">
                  <div style="width: 100%; position: relative;">
                     <button class="comment_delete"
                        onClick="commentDelete(${comment.cno})">삭제</button>
                  </div>
               </c:if>
            </div>
         </c:forEach>
      </div>
   </div>
</div>
<script>
   function commentButton(bno) {
      const content = document.querySelector("#content").value;
      if(!content) {
         alert("내용이 비어있습니다!!");
      } else {
         const comment = {
            content: content,
         }
         fetch("/comment/insert/" + bno, {
            method: "POST",
            body: JSON.stringify(comment),
            headers: {
               "Content-Type": "application/json;",
            },
         })
         .then(res => res.text())
         .then(res => {
            if(res === "ok") {
               location.reload();
            } else {
               alert("댓글 작성 실패!!!");
            }
         });
      }      
   }
   
   function commentDelete(cno) {
      fetch("/comment/delete/" + cno, {
         method: "DELETE",
      })
      .then(res => res.text())
      .then(res => {
         if(res === "ok") {
            location.reload();
         } else {
            alert("댓글 삭제 실패!!!");
         }
      });
   }
</script>
<script>
   $('#summernote').summernote('disable');
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
</script>
<script>
   function modifyButton(bno) {
      location.href = "/board/modify/" + bno;
   }
</script>
<script>
   /* 목록 버튼 눌렀을 때 이동 */
   function cancleButton() {
      location.href = "/boardList";
   }
</script>
<script>
   
</script>

<%@ include file="../includes/footer.jsp"%>