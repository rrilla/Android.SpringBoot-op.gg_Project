<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/alert.jsp"%>
<link href="//opgg-static.akamaized.net/css3/ranking.css?t=1606991396"
	rel="stylesheet" type="text/css">
<style>
.LadderRankingLayout>.ContentWrap>.Content {
	width: 1000px;
}
</style>
<div class="l-container">
	<div class="PageHeaderWrap">
		<div class="Menu" style="margin-top: 30px;">
			<div class="Actions" style="bottom: 10px;">
				<div class="SearchItem">
					<form id="search_summoner" class="FormItem"
						action="/ranking/ladder/" method="get">
						<div class="InputText">
							<input type="text" class="Input" placeholder="소환사명"
								name="summonerName" value="">
						</div>
						<button class="Button SemiRound Blue" type="submit">랭킹검색</button>
					</form>
				</div>
			</div>
		</div>
		<div class="PageDescription">
			<span class="Text">소환사의 협곡에 총 4,834,850명의 소환사가 있습니다.</span> <small
				class="Small">랭킹은 마스터 이상 소환사만 표시. 랭킹은 주기적으로 갱신됩니다.</small>
		</div>
	</div>


	<div class="LadderRankingLayoutWrap">
		<div class="LadderRankingLayout">
			<div class="ContentWrap">
				<div class="Content">
					<div class="ranking-highest">
						<ul id="select_summoner_highest" class="ranking-highest__list">
							<c:forEach items="${rankList.content }" var="rank">
								<c:choose>
									<c:when test="${rank.rno== 1 }">
										<li class="ranking-highest__item ranking-highest__item--big"
											id="summoner-83579483"><div
												class="ranking-highest__rank">${rank.rno }</div>
											<div class="ranking-highest__icon">
												<a href="//www.op.gg/summoner/userName=xunxunxuno"><div
														class="ranking-highest__border"
														style="background-image: url(//opgg-static.akamaized.net/images/borders2/challenger.png);"></div>
													<img
													src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4781.jpg?image=q_auto:best&amp;v=1518361200"
													class="ranking-highest__image"
													onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';">
													<div class="ranking-highest__level">${rank.level }</div></a>
											</div>
											<div class="ranking-highest-champions">
												<div class="ranking-highest-champion">
													<img
														src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=q_auto:best&amp;v=1606405946"
														class="ranking-highest-champion__image"><span
														class="ranking-highest-champion__winratio ranking-highest-champion__winratio--red">78%
													</span><span class="ranking-highest-champion__wonlose">(7승
														2패) </span><span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--orange"><span>5.03:1</span>
														평점 </span>
												</div>
												<div class="ranking-highest-champion">
													<img
														src="//opgg-static.akamaized.net/images/lol/champion/Lillia.png?image=q_auto:best&amp;v=1606405946"
														class="ranking-highest-champion__image"><span
														class="ranking-highest-champion__winratio ranking-highest-champion__winratio--normal">50%
													</span><span class="ranking-highest-champion__wonlose">(4승
														4패) </span><span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--normal"><span>2.79:1</span>
														평점 </span>
												</div>
												<div class="ranking-highest-champion">
													<img
														src="//opgg-static.akamaized.net/images/lol/champion/Nidalee.png?image=q_auto:best&amp;v=1606405946"
														class="ranking-highest-champion__image"><span
														class="ranking-highest-champion__winratio ranking-highest-champion__winratio--red">86%
													</span><span class="ranking-highest-champion__wonlose">(6승
														1패) </span><span
														class="ranking-highest-champion__kda ranking-highest-champion__kda--blue"><span>4.11:1</span>
														평점 </span>
												</div>
											</div> <a href="//www.op.gg/summoner/userName=xunxunxuno"
											class="ranking-highest__name">${rank.name }</a>
											<div class="ranking-highest__tierrank first">
												<img
													src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
													alt=""><span> ${rank.tier }</span><b>
													${rank.point } LP</b>
											</div>
											<div class="ranking-highest-winratio">
												<div class="winratio">
													<div class="winratio-graph">
														<div
															class="winratio-graph__fill winratio-graph__fill--left"
															style="width: 57%"></div>
														<div
															class="winratio-graph__text winratio-graph__text--left">${rank.win }</div>
														<div
															class="winratio-graph__fill winratio-graph__fill--right"></div>
														<div
															class="winratio-graph__text winratio-graph__text--right">${rank.lose }</div>
													</div>
													<span class="winratio__text">57%</span>
												</div>
											</div></li>
									</c:when>
									<c:when test="${rank.rno < 6 }">
										<li class="ranking-highest__item " id="summoner-57541180"><div
												class="ranking-highest__rank">${rank.rno }</div>
											<div class="ranking-highest__icon">
												<a href="//www.op.gg/summoner/userName=viper3"><img
													src="//opgg-static.akamaized.net/images/profile_icons/profileIcon7.jpg?image=q_auto:best&amp;v=1518361200"
													class="ranking-highest__image"
													onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"></a>
											</div> <a href="//www.op.gg/summoner/userName=viper3"
											class="ranking-highest__name">${rank.name }</a>
											<div class="ranking-highest__level">Lv.${rank.level }</div>
											<div class="ranking-highest__tierrank ">
												<img
													src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
													alt=""><span> ${rank.tier }</span><b>
													${rank.point } LP</b>
											</div>
											<div class="ranking-highest-winratio">
												<div class="winratio">
													<div class="winratio-graph">
														<div
															class="winratio-graph__fill winratio-graph__fill--left"
															style="width: 56%"></div>
														<div
															class="winratio-graph__text winratio-graph__text--left">${rank.win }</div>
														<div
															class="winratio-graph__fill winratio-graph__fill--right"></div>
														<div
															class="winratio-graph__text winratio-graph__text--right">${rank.lose }</div>
													</div>
													<span class="winratio__text">56%</span>
												</div>
											</div></li>
									</c:when>
								</c:choose>
							</c:forEach>
						</ul>
					</div>
					<table class="ranking-table">
						<colgroup>
							<col width="100">
							<col width="230">
							<col width="90">
							<col width="90">
							<col width="90">
							<col width="198">
						</colgroup>
						<thead>
							<tr>
								<th class="ranking-table__header"></th>
								<th class="ranking-table__header">소환사</th>
								<th class="ranking-table__header">티어</th>
								<th class="ranking-table__header">LP</th>
								<th class="ranking-table__header">레벨</th>
								<th class="ranking-table__header">승률</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${rankList.content }" var="rank">
								<c:if test="${rank.rno > 6 }">
									<tr class="ranking-table__row " id="summoner-83507930">
										<td class="ranking-table__cell ranking-table__cell--rank">${rank.rno}</td>
										<td
											class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
											href="//www.op.gg/summoner/userName=Gen+G+Khael"><img
												src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4561.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
												onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>${rank.name }</span></a></td>
										<td class="ranking-table__cell ranking-table__cell--tier">
											${rank.tier }</td>
										<td class="ranking-table__cell ranking-table__cell--lp">
											${rank.point } LP</td>
										<td class="ranking-table__cell ranking-table__cell--level">
											${rank.level }</td>
										<td class="ranking-table__cell ranking-table__cell--winratio"><div
												class="winratio">
												<div class="winratio-graph">
													<div
														class="winratio-graph__fill winratio-graph__fill--left"
														style="width: 54%"></div>
													<div
														class="winratio-graph__text winratio-graph__text--left">${rank.win }</div>
													<div
														class="winratio-graph__fill winratio-graph__fill--right"></div>
													<div
														class="winratio-graph__text winratio-graph__text--right">${rank.lose }</div>
												</div>
												<span class="winratio__text">54%</span>
											</div></td>
									</tr>
								</c:if>

							</c:forEach>
						</tbody>
					</table>

					<div class="ranking-pagination">
						<ul class="ranking-pagination__list">
							<c:if test="${rankList.first == false }">
								<li
									class="ranking-pagination__item ranking-pagination__item--arrow"><a
									href="/ranking?page=${rank.number-1}">◀</a></li>
							</c:if>
							<c:if test="${rankList.last == false }">
								<li
									class="ranking-pagination__item ranking-pagination__item--arrow "><a
									href="/ranking?page=${rank.number+1}">▶</a></li>
							</c:if>
						</ul>
						<div class="ranking-pagination__desc">
							<span>1 ~ 100</span> 등 / 총 <span>4,834,850</span> 소환사
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>

<%@ include file="../includes/footer.jsp"%>