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
   background-image: url("//opgg-static.akamaized.net/images/multi/multi-ko-png@2x.png");
   background-size: 100% 100%;
   width: 800px;
   height: 300px;
   margin: 40px;
}
/* 리스트 스타일 */
.multi_ul > li {
   width: 20%;
   border-right: 1px solid #ebeef1;
}
/* 소환사 티어 스타일 */
.summoner_tier {
   width: 38px;
   height: 38px;
}
/* 소환사 이름 */
.summoner_name {
   font-size: 15px;
   font-weight: bold;
   color : #202d37;
}
.summoner_lp {
   font-size: 11px;
   color: #57646f;
   line-height: 14px;
   margin-top: 3px;
}
.base {
   position: relative;
   width: 155px;
   height: 16px;
   padding-right: 4px;
   background-color: #e84057;
   color: white;
   text-align: right;
   font-size: 11px;
   border-radius: 4px;
}
.win {
   position: absolute;
   top: 0;
   left: 0;
   height: 16px;
   width: 56%;
   padding-left: 4px;
   text-align: left;
   background-color: #5383e8;
   border-top-left-radius: 4px;
   border-bottom-left-radius: 4px;   
}
/* 승률 퍼센트 */
.ratio {
   font-size: 11px;
   font-weight: bold;
   color: #d31a45;
   margin-left: 8px;
   line-height: 16px;
}
.recent_title {
   font-size: 12px;
   text-align: center;
   color: #9aa4af;
   margin-bottom: 10px;
}
.recent_match {
   border-top: 1px solid #ebeef1;
   padding: 15px; 
   height: 305px;
}
.recent_match li {
   line-height: 20px;
   font-size: 0;
}
.win_or_defeat {
   display: inline-block;
   background-color: #ecf2ff;
   vertical-align: middle;
   width: 62px;
   height: 20px;
   font-size: 11px;
   font-weight: bold;
   text-align: center;
   border-radius: 2px;
   color: #4171d6;
   margin-left: 8px;   
}
</style>
<div class="multi_page_container">
   <div class="multi_search_container">
      <div class="multi_search_layout">
         <form class="multi_search_form" action="/multiSearch" method="post">
            <textarea class="multi_search_content" id="content" name="content"></textarea>
            <div class="multi_search">
               <button class="multi_search_button">여러명의 소환사 이름으로 요약 검색</button>
            </div>
         </form>
      </div>
   </div>
   
   

   
   <c:choose>
      <c:when test="${empty summonerInfoList}">
         <div class="result_container">
            <div class="result_title">멀티서치</div>
            <div class="result_content">
               <div class="contet_title">채팅창의 내용을 붙여 넣으면, 게임에 참여중인 모든 유저를 요약하여 볼 수 있습니다!</div>
               <div class="content_subTitle">여러명의 소환사 이름으로 요약 검색</div>
               <div class="content_guide_img"></div>
            </div>
         </div>
      </c:when>
      <c:otherwise>
      <div class="result_container">
   <div style="text-align: center;">
      <ul class="multi_ul" style="display: flex;">
         <c:forEach items="${summonerInfoList}" var="summoner">
            <li>
               <div style="padding: 8px 15px 15px;">
                  <div><img class="summoner_tier" src="../../resources/images/${summoner.tier}.png" /></div>
                  <div class="summoner_name">${summoner.name}</div>
                  <div class="summoner_lp">${summoner.tier} ${summoner.tierNum} (${summoner.point} LP)</div>
                  <div style="display:flex; margin: 10px 0;">
                     <div class="base">
                        ${summoner.loss}
                        <div class="win">
                           ${summoner.win}
                        </div>
                     </div>
                     <span class="ratio"><fmt:formatNumber value="${summoner.win/(summoner.win+summoner.loss)}" type="percent"/></span></span>
                  </div>
                  
               </div>
                  <div class="recent_match">
                  <div class="recent_title">최근 플레이</div>
                  <ul>
                     <c:forEach items="${summoner.kda}" var="multi">
                     <li>   
                        <div style="display: inline-block; vertical-align: middle;">
                           <img style="width: 20px; vertical-align: middle;" src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${multi.championName}.png">
                        </div>
                        <div class="win_or_defeat" style="${multi.result eq 'loss' ? 'background-color: #e2b6b3;' : 'background-color: #a3cfec;'} ">
                           <span class="kill">${multi.kill}</span> /
                           <span class="death">${multi.death}</span> /
                           <span class="assist">${multi.assis}</span>
                        </div>
                     </li>
                     </c:forEach>
                  </ul>
               </div>
            </li>
            </c:forEach>
      </ul>
   </div>
</div>
      </c:otherwise>
   </c:choose>
   
</div>

<script>
   const placeholder = document.querySelector("#content");
   placeholder.placeholder = "고명수님이 로비에 참가했습니다. \n한재현님이 로비에 참가했습니다." + 
                       "\n김재학님이 로비에 참가했습니다. \n허준석님이 로비에 참가했습니다. \n문주완님이 로비에 참가했습니다.";
</script>

<%@ include file="../includes/footer.jsp" %>