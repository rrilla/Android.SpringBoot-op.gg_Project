<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/alert.jsp"%>
<link href="//opgg-static.akamaized.net/css3/sprite.css?t=1607925640"
   rel="stylesheet" type="text/css">
<link href="//opgg-static.akamaized.net/css3/champion2.css?t=1607925640"
   rel="stylesheet" type="text/css">
<div class="l-champion-index">
   <div class="l-champion-index-content">
      <div class="champion-index-message">
         <div class="champion-index__message">챔피언 분석은 마스터 티어 이상의 랭크 게임만을
            수집합니다</div>
      </div>
      <div class="opgg__notice-summoner-top"></div>
      <div class="opgg__notice--left"></div>
      <div class="opgg__notice--right"></div>
      <div class="l-champion-index-content--main">
         <div class="champion-list-filter">
            <ul class="champion-list-filter__type">
               <li
                  class="champion-list-filter__type__item champion-list-filter__type__item--active"
                  data-filter-type="ALL"><a href="#">전체</a></li>
               <li class="champion-list-filter__type__item "
                  data-filter-type="TOP"><a href="#">탑</a></li>
               <li class="champion-list-filter__type__item "
                  data-filter-type="JUNGLE"><a href="#">정글</a></li>
               <li class="champion-list-filter__type__item "
                  data-filter-type="MID"><a href="#">미드</a></li>
               <li class="champion-list-filter__type__item "
                  data-filter-type="ADC"><a href="#">바텀</a></li>
               <li class="champion-list-filter__type__item "
                  data-filter-type="SUPPORT"><a href="#">서포터</a></li>
               <li
                  class="champion-list-filter__type__item champion-list-filter__type__item--rotation"
                  data-filter-type="rotation"><a href="#">로테이션</a></li>
            </ul>
            <div class="champion-list-filter__keyword">
               <input type="text" placeholder="챔피언 검색 (가렌, ㄱㄹ, ...)">
            </div>
         </div>
         <div class="champion-index__champion-list">
            <c:forEach items="${champList }" var="champ">
               <div
                  class="champion-index__champion-item   champion-index__champion-item--TOP champion-index__champion-item--MID"
                  data-champion-name="가렌" data-champion-key="garen"
                  data-champion-name-chosung="ㄱㄹ">
                  <a href="https://www.op.gg/champion/${champ.englishName}/statistics/top">
                     <div class="champion-index__champion-item__image">
                        <img
                           src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                           style="with: 82px; height: 82px;" />
                     </div>
                     <div class="champion-index__champion-item__name">${champ.name }</div>
                     <div class="champion-index__champion-item__positions">
                        <div class="champion-index__champion-item__position">
                           <span>${champ.lane }</span>
                        </div>
                     </div>
                  </a>
               </div>
            </c:forEach>
         </div>
      </div>



      <!-- 챔피언 순위 -->
      <div class="l-champion-index-content--side">
         <div class="champion-index-trend tabWrap _recognized">
            <div class="champion-index-trend-header">
               <h2>챔피언 순위</h2>
               <ul class="champion-index-trend-header__filter tabHeaders">
                  <li class="tabHeader champion-tier active"
                     data-tab-show-class="champion-trend-tier"
                     data-trend-type="championtier"><a href="#"><i></i>티어</a></li>
                  <li class="tabHeader"
                     data-tab-show-class="champion-trend-winratio"
                     data-trend-type="winratio"><a href="#">승률</a></li>
                  <li class="tabHeader"
                     data-tab-show-class="champion-trend-pickratio"
                     data-trend-type="pickratio"><a href="#">픽률</a></li>
                  <li class="tabHeader"
                     data-tab-show-class="champion-trend-banratio"
                     data-trend-type="banratio"><a href="#">밴률</a></li>
               </ul>
            </div>
            <div class="champion-index-trend-content">
               <div class="tabItems">
                  <div class="tabItem champion-trend champion-trend-tier"
                     style="display: block;">
                     <div class="tabWrap _recognized">
                        <ul class="champion-index-trend-position tabHeaders">
                           <li
                              class="champion-index-trend-position__item tabHeader active"
                              data-tab-show-class="champion-trend-tier-TOP"
                              data-position="TOP"><a href="#">탑</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-tier-JUNGLE"
                              data-position="JUNGLE"><a href="#">정글</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-tier-MID"
                              data-position="MID"><a href="#">미드</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-tier-ADC"
                              data-position="ADC"><a href="#">바텀</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-tier-SUPPORT"
                              data-position="SUPPORT"><a href="#">서포터</a></li>
                        </ul>
                        <table class="champion-index-table tabItems">
                           <colgroup>
                              <col width="34">
                              <col width="33">
                              <col width="38">
                              <col>
                              <col width="58">
                              <col width="58">
                              <col width="85">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="champion-index-table__header">#</th>
                                 <th class="champion-index-table__header"></th>
                                 <th class="champion-index-table__header" colspan="2">챔피언</th>
                                 <th class="champion-index-table__header">승률</th>
                                 <th class="champion-index-table__header">픽률</th>
                                 <th class="champion-index-table__header">티어</th>
                              </tr>
                           </thead>
                           <tbody class="tabItem champion-trend-tier-TOP"
                              style="display: table-row-group;">

                              <!-- 티어 탑 순서 -->
                              <c:forEach items="${champTierList }" var="champ">
                                 <c:if test="${champ.lane eq 'top' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/malphite/statistics/top"> <img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" />
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/malphite/statistics/top">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">탑</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">
                                          ${champ.winRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">
                                          <img
                                          src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-${champ.tier }.png"
                                          alt="">
                                       </td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-tier-JUNGLE"
                              style="display: none;">
                              <c:forEach items="${champTierList }" var="champ">
                                 <c:if test="${champ.lane eq 'jungle' }">

                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/nunu/statistics/jungle"> <img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" />
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/nunu/statistics/jungle">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">
                                          <img
                                          src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-${champ.tier }.png"
                                          alt="">
                                       </td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />

                           <tbody class="tabItem champion-trend-tier-MID"
                              style="display: none;">
                              <c:forEach items="${champTierList }" var="champ">
                                 <c:if test="${champ.lane eq 'mid' }">

                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/anivia/statistics/mid"> <img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/anivia/statistics/mid">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">
                                          <img
                                          src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-${champ.tier }.png"
                                          alt="">
                                       </td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />

                           <tbody class="tabItem champion-trend-tier-ADC"
                              style="display: none;">
                              <c:forEach items="${champTierList }" var="champ">
                                 <c:if test="${champ.lane eq 'bottom' }">

                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/jhin/statistics/adc"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/jhin/statistics/adc">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">
                                          <img
                                          src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-${champ.tier }.png"
                                          alt="">
                                       </td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />

                           <tbody class="tabItem champion-trend-tier-SUPPORT"
                              style="display: none;">
                              <c:forEach items="${champTierList }" var="champ">
                                 <c:if test="${champ.lane eq 'sup' }">

                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/leona/statistics/support"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/leona/statistics/support">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">
                                          <img
                                          src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-${champ.tier }.png"
                                          alt="">
                                       </td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                        </table>
                     </div>
                  </div>


                  <div class="tabItem champion-trend champion-trend-winratio"
                     data-tab-spinner-height="800" style="display: none;">
                     <div class="tabWrap _recognized">
                        <ul class="champion-index-trend-position tabHeaders">
                           <li
                              class="champion-index-trend-position__item tabHeader active"
                              data-tab-show-class="champion-trend-winratio-ALL"
                              data-position="ALL"><a href="#">전체</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-winratio-TOP"
                              data-position="TOP"><a href="#">탑</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-winratio-JUNGLE"
                              data-position="JUNGLE"><a href="#">정글</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-winratio-MID"
                              data-position="MID"><a href="#">미드</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-winratio-ADC"
                              data-position="ADC"><a href="#">바텀</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-winratio-SUPPORT"
                              data-position="SUPPORT"><a href="#">서포터</a></li>
                        </ul>
                     </div>
                     <table class="champion-index-table tabItems">
                        <colgroup>
                           <col width="40">
                           <col width="32">
                           <col>
                           <col width="88">
                           <col width="88">
                        </colgroup>
                        <thead>
                           <tr>
                              <th class="champion-index-table__header">#</th>
                              <th class="champion-index-table__header" colspan="2">챔피언</th>
                              <th class="champion-index-table__header">승률</th>
                              <th class="champion-index-table__header">픽률</th>
                           </tr>
                        </thead>
                        <c:set var="index" value="0" />
                        <tbody class="tabItem champion-trend-winratio-ALL"
                           style="display: table-row-group;">
                           <c:forEach items="${champWinRateList }" var="champ">


                              <c:set var="index" value="${index+1 }" />
                              <tr>
                                 <td
                                    class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                 <td
                                    class="champion-index-table__cell champion-index-table__cell--image">
                                    <a href="/champion/olaf/statistics/all"> <img
                                       src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                       style="with: 32px; height: 32px;" /></a>
                                 </td>
                                 <td
                                    class="champion-index-table__cell champion-index-table__cell--champion">
                                    <a href="/champion/olaf/statistics/all">
                                       <div class="champion-index-table__name">${champ.name }</div>
                                       <div class="champion-index-table__position">${champ.lane }</div>
                                 </a>
                                 </td>
                                 <td
                                    class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.winRate }%</td>
                                 <td
                                    class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                              </tr>

                           </c:forEach>
                        </tbody>
                        <c:set var="index" value="0" />

                        <tbody class="tabItem champion-trend-winratio-TOP"
                           style="display: none;">
                           <c:forEach items="${champWinRateList }" var="champ">
                              <c:if test="${champ.lane eq 'top' }">
                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/heimerdinger/statistics/top"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/heimerdinger/statistics/top">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.winRate }%</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                 </tr>
                              </c:if>
                           </c:forEach>
                        </tbody>

                        <c:set var="index" value="0" />
                        <tbody class="tabItem champion-trend-winratio-JUNGLE"
                           style="display: none;">
                           <c:forEach items="${champWinRateList }" var="champ">
                              <c:if test="${champ.lane eq 'jungle' }">
                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/fiddlesticks/statistics/jungle"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/fiddlesticks/statistics/jungle">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.winRate }%</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                 </tr>
                              </c:if>
                           </c:forEach>
                        </tbody>
                        <c:set var="index" value="0" />
                        <tbody class="tabItem champion-trend-winratio-MID"
                           style="display: none;">
                           <c:forEach items="${champWinRateList }" var="champ">
                              <c:if test="${champ.lane eq 'mid' }">
                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/aurelionsol/statistics/mid"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/aurelionsol/statistics/mid">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.winRate }%</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                 </tr>
                              </c:if>
                           </c:forEach>
                        </tbody>
                        <c:set var="index" value="0" />
                        <tbody class="tabItem champion-trend-winratio-ADC"
                           style="display: none;">
                           <c:forEach items="${champWinRateList }" var="champ">
                              <c:if test="${champ.lane eq 'bottom' }">
                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/swain/statistics/adc"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/swain/statistics/adc">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.winRate }%</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                 </tr>
                              </c:if>
                           </c:forEach>
                        </tbody>
                        <c:set var="index" value="0" />
                        <tbody class="tabItem champion-trend-winratio-SUPPORT"
                           style="display: none;">
                           <c:forEach items="${champWinRateList }" var="champ">
                              <c:if test="${champ.lane eq 'sup' }">
                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/leona/statistics/support"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/leona/statistics/support">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.winRate }%</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value">${champ.pickRate }%</td>
                                 </tr>
                              </c:if>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
                  <div class="tabItem champion-trend champion-trend-pickratio"
                     data-tab-spinner-height="800" style="display: none;">
                     <div class="tabWrap _recognized">
                        <ul class="champion-index-trend-position tabHeaders">
                           <li
                              class="champion-index-trend-position__item tabHeader active"
                              data-tab-show-class="champion-trend-pickratio-ALL"><a
                              href="#">전체</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-pickratio-TOP"><a
                              href="#">탑</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-pickratio-JUNGLE"><a
                              href="#">정글</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-pickratio-MID"><a
                              href="#">미드</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-pickratio-ADC"><a
                              href="#">바텀</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-pickratio-SUPPORT"><a
                              href="#">서포터</a></li>
                        </ul>
                        <table class="champion-index-table tabItems">
                           <colgroup>
                              <col width="40">
                              <col width="32">
                              <col>
                              <col width="88">
                              <col width="88">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="champion-index-table__header">#</th>
                                 <th class="champion-index-table__header" colspan="2">챔피언</th>
                                 <th class="champion-index-table__header">픽률</th>
                                 <th class="champion-index-table__header">승률</th>
                              </tr>
                           </thead>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-pickratio-ALL"
                              style="display: table-row-group;">
                              <c:forEach items="${champPickRateList }" var="champ">

                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/ezreal/statistics/all"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/ezreal/statistics/all">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.pickRate }%</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                 </tr>

                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-pickratio-TOP"
                              style="display: none;">
                              <c:forEach items="${champPickRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'top' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/camille/statistics/top"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/camille/statistics/top">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>

                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-pickratio-JUNGLE"
                              style="display: none;">
                              <c:forEach items="${champPickRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'jungle' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/leesin/statistics/jungle"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/leesin/statistics/jungle">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-pickratio-MID"
                              style="display: none;">
                              <c:forEach items="${champPickRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'mid' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/anivia/statistics/mid"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/anivia/statistics/mid">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-pickratio-ADC"
                              style="display: none;">
                              <c:forEach items="${champPickRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'bottom' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/kaisa/statistics/adc"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/kaisa/statistics/adc">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-pickratio-SUPPORT"
                              style="display: none;">
                              <c:forEach items="${champPickRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'bottom' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/thresh/statistics/support"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/thresh/statistics/support">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.pickRate }%</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value">${champ.winRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                        </table>
                     </div>
                  </div>
                  <div class="tabItem champion-trend champion-trend-banratio"
                     data-tab-spinner-height="800" style="display: none;">
                     <div class="tabWrap _recognized">
                        <ul class="champion-index-trend-position tabHeaders">
                           <li
                              class="champion-index-trend-position__item tabHeader active"
                              data-tab-show-class="champion-trend-banratio-ALL"><a
                              href="#">전체</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-banratio-TOP"><a
                              href="#">탑</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-banratio-JUNGLE"><a
                              href="#">정글</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-banratio-MID"><a
                              href="#">미드</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-banratio-ADC"><a
                              href="#">바텀</a></li>
                           <li class="champion-index-trend-position__item tabHeader"
                              data-tab-show-class="champion-trend-banratio-SUPPORT"><a
                              href="#">서포터</a></li>
                        </ul>
                        <table class="champion-index-table tabItems">
                           <colgroup>
                              <col width="40">
                              <col width="32">
                              <col>
                              <col width="88">
                           </colgroup>
                           <thead>
                              <tr>
                                 <th class="champion-index-table__header">#</th>
                                 <th class="champion-index-table__header" colspan="2">챔피언</th>
                                 <th class="champion-index-table__header">밴률</th>
                              </tr>
                           </thead>

                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-banratio-ALL"
                              style="display: none;">
                              <c:forEach items="${champBanRateList }" var="champ">

                                 <c:set var="index" value="${index+1 }" />
                                 <tr>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--image">
                                       <a href="/champion/samira/statistics/all"><img
                                          src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                          style="with: 32px; height: 32px;" /></a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--champion">
                                       <a href="/champion/samira/statistics/all">
                                          <div class="champion-index-table__name">${champ.name }</div>
                                          <div class="champion-index-table__position">${champ.lane }</div>
                                    </a>
                                    </td>
                                    <td
                                       class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.banRate }%</td>
                                 </tr>
                              </c:forEach>

                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-banratio-TOP"
                              style="display: none;">
                              <c:forEach items="${champBanRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'top' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/malphite/statistics/top"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/malphite/statistics/top">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.banRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-banratio-JUNGLE"
                              style="display: none;">
                              <c:forEach items="${champBanRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'jungle' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/graves/statistics/jungle"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/graves/statistics/jungle">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.banRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-banratio-MID"
                              style="display: none;">
                              <c:forEach items="${champBanRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'mid' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/fizz/statistics/mid"> <img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/fizz/statistics/mid">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.banRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-banratio-ADC"
                              style="display: none;">
                              <c:forEach items="${champBanRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'bottom' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/samira/statistics/adc"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/samira/statistics/adc">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.banRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                           <c:set var="index" value="0" />
                           <tbody class="tabItem champion-trend-banratio-SUPPORT"
                              style="display: table-row-group;">
                              <c:forEach items="${champBanRateList }" var="champ">
                                 <c:if test="${champ.lane eq 'sup' }">
                                    <c:set var="index" value="${index+1 }" />
                                    <tr>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--rank">${index }</td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--image">
                                          <a href="/champion/leona/statistics/support"><img
                                             src=" http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${champ.englishName }.png"
                                             style="with: 32px; height: 32px;" /></a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--champion">
                                          <a href="/champion/leona/statistics/support">
                                             <div class="champion-index-table__name">${champ.name }</div>
                                             <div class="champion-index-table__position">${champ.lane }</div>
                                       </a>
                                       </td>
                                       <td
                                          class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">${champ.banRate }%</td>
                                    </tr>
                                 </c:if>
                              </c:forEach>
                           </tbody>
                        </table>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</div>

<script>
   /* 티어 승률 픽률 밴률 탭 선택 */
   const tabHeaders = document.querySelector(".tabHeaders");
   const tabItems = document.querySelector(".tabItems");

   tabHeaders
         .addEventListener(
               "click",
               function() {
                  const target = event.target.parentNode;
                  const targetList = target.parentNode.childNodes;

                  if (target.dataset.trendType !== undefined) {
                     for (let i = 1; i < targetList.length; i += 2) {
                        tabItems.childNodes[i].style.display = "none";
                     }

                     for (let i = 1; i < targetList.length; i += 2) {
                        if (target.dataset.trendType === targetList[i].dataset.trendType) {
                           targetList[i].classList.add("active");

                           if (targetList[i].dataset.trendType === "championtier") {
                              document
                                    .querySelector(".champion-trend-tier").style.display = "block";
                           } else if (targetList[i].dataset.trendType === "winratio") {
                              document
                                    .querySelector(".champion-trend-winratio").style.display = "block";
                           } else if (targetList[i].dataset.trendType === "pickratio") {
                              document
                                    .querySelector(".champion-trend-pickratio").style.display = "block";
                           } else if (targetList[i].dataset.trendType === "banratio") {
                              document
                                    .querySelector(".champion-trend-banratio").style.display = "block";
                           }
                        } else {
                           targetList[i].classList.remove("active");
                        }
                     }
                  }
               });

   /* 티어 탭 */

   const tabPosition = document
         .querySelector(".champion-index-trend-position");
   const table = document.querySelector(".champion-index-table");

   tabPosition
         .addEventListener(
               "click",
               function() {
                  const target = event.target.parentNode;
                  const targetList = target.parentNode.childNodes;

                  for (let i = 5; i < table.childNodes.length; i += 2) {
                     table.childNodes[i].style.display = "none";
                  }

                  for (let i = 1; i < targetList.length; i += 2) {
                     if (target.dataset.position === targetList[i].dataset.position) {
                        targetList[i].classList.add("active");
                        if (target.dataset.position === "TOP") {
                           document
                                 .querySelector(".champion-trend-tier-TOP").style.display = "table-row-group";
                        } else if (target.dataset.position === "JUNGLE") {
                           document
                                 .querySelector(".champion-trend-tier-JUNGLE").style.display = "table-row-group";
                        } else if (target.dataset.position === "MID") {
                           document
                                 .querySelector(".champion-trend-tier-MID").style.display = "table-row-group";
                        } else if (target.dataset.position === "ADC") {
                           document
                                 .querySelector(".champion-trend-tier-ADC").style.display = "table-row-group";
                        } else if (target.dataset.position === "SUPPORT") {
                           document
                                 .querySelector(".champion-trend-tier-SUPPORT").style.display = "table-row-group";
                        }

                     } else {
                        targetList[i].classList.remove("active");
                     }
                  }
               });

   /* 승률 탭 */
   const winRatio = document.querySelector(".champion-trend-winratio");
   const winTable = document
         .querySelector(".champion-trend-winratio .champion-index-table");
   winRatio
         .addEventListener(
               "click",
               function() {
                  const target = event.target.parentNode;
                  const targetList = target.parentNode.childNodes;

                  if (target.dataset.position !== undefined) {
                     for (let i = 5; i < winTable.childNodes.length; i += 2) {
                        winTable.childNodes[i].style.display = "none";
                     }

                     for (let i = 1; i < targetList.length; i += 2) {
                        if (target.dataset.position === targetList[i].dataset.position) {
                           targetList[i].classList.add("active");
                           if (target.dataset.position === "ALL") {
                              document
                                    .querySelector(".champion-trend-winratio-ALL").style.display = "table-row-group";
                           } else if (target.dataset.position === "TOP") {
                              document
                                    .querySelector(".champion-trend-winratio-TOP").style.display = "table-row-group";
                           } else if (target.dataset.position === "JUNGLE") {
                              document
                                    .querySelector(".champion-trend-winratio-JUNGLE").style.display = "table-row-group";
                           } else if (target.dataset.position === "MID") {
                              document
                                    .querySelector(".champion-trend-winratio-MID").style.display = "table-row-group";
                           } else if (target.dataset.position === "ADC") {
                              document
                                    .querySelector(".champion-trend-winratio-ADC").style.display = "table-row-group";
                           } else if (target.dataset.position === "SUPPORT") {
                              document
                                    .querySelector(".champion-trend-winratio-SUPPORT").style.display = "table-row-group";
                           }
                        } else {
                           targetList[i].classList.remove("active");
                        }
                     }
                  }
               });

   /* 픽퓰 탭 */
   const pickRatio = document.querySelector(".champion-trend-pickratio");
   const pickTable = document
         .querySelector(".champion-trend-pickratio .champion-index-table");

   pickRatio
         .addEventListener(
               "click",
               function() {
                  const target = event.target.parentNode;
                  const targetList = target.parentNode.childNodes;

                  if (target.dataset.tabShowClass !== undefined) {
                     for (let i = 5; i < pickTable.childNodes.length; i += 2) {
                        pickTable.childNodes[i].style.display = "none";
                     }

                     for (let i = 1; i < targetList.length; i += 2) {
                        if (target.dataset.tabShowClass === targetList[i].dataset.tabShowClass) {
                           targetList[i].classList.add("active");
                           if (target.dataset.tabShowClass === "champion-trend-pickratio-ALL") {
                              document
                                    .querySelector(".champion-trend-pickratio-ALL").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-pickratio-TOP") {
                              document
                                    .querySelector(".champion-trend-pickratio-TOP").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-pickratio-JUNGLE") {
                              document
                                    .querySelector(".champion-trend-pickratio-JUNGLE").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-pickratio-MID") {
                              document
                                    .querySelector(".champion-trend-pickratio-MID").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-pickratio-ADC") {
                              document
                                    .querySelector(".champion-trend-pickratio-ADC").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-pickratio-SUPPORT") {
                              document
                                    .querySelector(".champion-trend-pickratio-SUPPORT").style.display = "table-row-group";
                           }
                        } else {
                           targetList[i].classList.remove("active");
                        }
                     }
                  }

               });

   /* 밴률 탭 */
   const banRatio = document.querySelector(".champion-trend-banratio");
   const banTable = document
         .querySelector(".champion-trend-banratio .champion-index-table");

   banRatio
         .addEventListener(
               "click",
               function() {
                  const target = event.target.parentNode;
                  const targetList = target.parentNode.childNodes;

                  console.log(target.dataset.tabShowClass);

                  if (target.dataset.tabShowClass) {
                     for (let i = 5; i < banTable.childNodes.length; i += 2) {
                        banTable.childNodes[i].style.display = "none";
                     }

                     for (let i = 1; i < targetList.length; i += 2) {
                        if (target.dataset.tabShowClass === targetList[i].dataset.tabShowClass) {
                           targetList[i].classList.add("active");
                           if (target.dataset.tabShowClass === "champion-trend-banratio-ALL") {
                              document
                                    .querySelector(".champion-trend-banratio-ALL").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-banratio-TOP") {
                              document
                                    .querySelector(".champion-trend-banratio-TOP").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-banratio-JUNGLE") {
                              document
                                    .querySelector(".champion-trend-banratio-JUNGLE").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-banratio-MID") {
                              document
                                    .querySelector(".champion-trend-banratio-MID").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-banratio-ADC") {
                              document
                                    .querySelector(".champion-trend-banratio-ADC").style.display = "table-row-group";
                           } else if (target.dataset.tabShowClass === "champion-trend-banratio-SUPPORT") {
                              document
                                    .querySelector(".champion-trend-banratio-SUPPORT").style.display = "table-row-group";
                           }
                        } else {
                           targetList[i].classList.remove("active");
                        }
                     }
                  }
               });
</script>


<%@ include file="../includes/footer.jsp"%>