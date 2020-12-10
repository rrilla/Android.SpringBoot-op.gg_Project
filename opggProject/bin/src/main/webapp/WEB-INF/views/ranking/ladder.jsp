<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/alert.jsp"%>
<link href="//opgg-static.akamaized.net/css3/ranking.css?t=1606991396" rel="stylesheet" type="text/css">
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
					<form id="search_summoner" class="FormItem" action="/ranking/ladder/" method="get">
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
				class="Small">랭킹은 브론즈 이상 소환사만 표시. 랭킹은 주기적으로 갱신됩니다.</small>
		</div>

	</div>

	<div class="LadderRankingLayoutWrap">
		<div class="LadderRankingLayout">
			<div class="ContentWrap">
				<div class="Content">
					<div class="ranking-highest">
						<ul id="select_summoner_highest" class="ranking-highest__list">
							<li class="ranking-highest__item ranking-highest__item--big"
								id="summoner-83579483"><div class="ranking-highest__rank">1</div>
								<div class="ranking-highest__icon">
									<a href="//www.op.gg/summoner/userName=xunxunxuno"><div
											class="ranking-highest__border"
											style="background-image: url(//opgg-static.akamaized.net/images/borders2/challenger.png);"></div>
										<img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4781.jpg?image=q_auto:best&amp;v=1518361200"
										class="ranking-highest__image"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';">
									<div class="ranking-highest__level">157</div></a>
								</div>
								<div class="ranking-highest-champions">
									<div class="ranking-highest-champion">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=q_auto:best&amp;v=1606405946"
											class="ranking-highest-champion__image"><span
											class="ranking-highest-champion__winratio ranking-highest-champion__winratio--red">78%
										</span><span class="ranking-highest-champion__wonlose">(7승 2패)
										</span><span
											class="ranking-highest-champion__kda ranking-highest-champion__kda--orange"><span>5.03:1</span>
											평점 </span>
									</div>
									<div class="ranking-highest-champion">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Lillia.png?image=q_auto:best&amp;v=1606405946"
											class="ranking-highest-champion__image"><span
											class="ranking-highest-champion__winratio ranking-highest-champion__winratio--normal">50%
										</span><span class="ranking-highest-champion__wonlose">(4승 4패)
										</span><span
											class="ranking-highest-champion__kda ranking-highest-champion__kda--normal"><span>2.79:1</span>
											평점 </span>
									</div>
									<div class="ranking-highest-champion">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Nidalee.png?image=q_auto:best&amp;v=1606405946"
											class="ranking-highest-champion__image"><span
											class="ranking-highest-champion__winratio ranking-highest-champion__winratio--red">86%
										</span><span class="ranking-highest-champion__wonlose">(6승 1패)
										</span><span
											class="ranking-highest-champion__kda ranking-highest-champion__kda--blue"><span>4.11:1</span>
											평점 </span>
									</div>
								</div>
								<a href="//www.op.gg/summoner/userName=xunxunxuno"
								class="ranking-highest__name">xunxunxuno</a>
							<div class="ranking-highest__tierrank first">
									<img
										src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
										alt=""><span> Challenger</span><b> 1,590 LP</b>
								</div>
								<div class="ranking-highest-winratio">
									<div class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">666</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">500</div>
										</div>
										<span class="winratio__text">57%</span>
									</div>
								</div></li>
							<li class="ranking-highest__item " id="summoner-57541180"><div
									class="ranking-highest__rank">2</div>
								<div class="ranking-highest__icon">
									<a href="//www.op.gg/summoner/userName=viper3"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon7.jpg?image=q_auto:best&amp;v=1518361200"
										class="ranking-highest__image"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"></a>
								</div>
								<a href="//www.op.gg/summoner/userName=viper3"
								class="ranking-highest__name">viper3</a>
							<div class="ranking-highest__level">Lv.334</div>
								<div class="ranking-highest__tierrank ">
									<img
										src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
										alt=""><span> Challenger</span><b> 1,561 LP</b>
								</div>
								<div class="ranking-highest-winratio">
									<div class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">502</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">401</div>
										</div>
										<span class="winratio__text">56%</span>
									</div>
								</div></li>
							<li class="ranking-highest__item " id="summoner-49070156"><div
									class="ranking-highest__rank">3</div>
								<div class="ranking-highest__icon">
									<a
										href="//www.op.gg/summoner/userName=%EC%9A%A9%ED%98%B8%EC%95%BC"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4295.jpg?image=q_auto:best&amp;v=1518361200"
										class="ranking-highest__image"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"></a>
								</div>
								<a
								href="//www.op.gg/summoner/userName=%EC%9A%A9%ED%98%B8%EC%95%BC"
								class="ranking-highest__name">용호야</a>
							<div class="ranking-highest__level">Lv.134</div>
								<div class="ranking-highest__tierrank ">
									<img
										src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
										alt=""><span> Challenger</span><b> 1,512 LP</b>
								</div>
								<div class="ranking-highest-winratio">
									<div class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 58%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">390</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">286</div>
										</div>
										<span class="winratio__text">58%</span>
									</div>
								</div></li>
							<li class="ranking-highest__item " id="summoner-78880193"><div
									class="ranking-highest__rank">4</div>
								<div class="ranking-highest__icon">
									<a href="//www.op.gg/summoner/userName=T1+Fisher"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3459.jpg?image=q_auto:best&amp;v=1518361200"
										class="ranking-highest__image"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"></a>
								</div>
								<a href="//www.op.gg/summoner/userName=T1+Fisher"
								class="ranking-highest__name">T1 Fisher</a>
							<div class="ranking-highest__level">Lv.135</div>
								<div class="ranking-highest__tierrank ">
									<img
										src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
										alt=""><span> Challenger</span><b> 1,413 LP</b>
								</div>
								<div class="ranking-highest-winratio">
									<div class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">686</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">524</div>
										</div>
										<span class="winratio__text">57%</span>
									</div>
								</div></li>
							<li class="ranking-highest__item " id="summoner-69060421"><div
									class="ranking-highest__rank">5</div>
								<div class="ranking-highest__icon">
									<a href="//www.op.gg/summoner/userName=T1+Zeus"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4449.jpg?image=q_auto:best&amp;v=1518361200"
										class="ranking-highest__image"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"></a>
								</div>
								<a href="//www.op.gg/summoner/userName=T1+Zeus"
								class="ranking-highest__name">T1 Zeus</a>
							<div class="ranking-highest__level">Lv.298</div>
								<div class="ranking-highest__tierrank ">
									<img
										src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&amp;v=1"
										alt=""><span> Challenger</span><b> 1,442 LP</b>
								</div>
								<div class="ranking-highest-winratio">
									<div class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">856</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">786</div>
										</div>
										<span class="winratio__text">52%</span>
									</div>
								</div></li>
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
							<tr class="ranking-table__row " id="summoner-83507930">
								<td class="ranking-table__cell ranking-table__cell--rank">6</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Gen+G+Khael"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4561.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Gen
											G Khael</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,438 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									143</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">826</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">696</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-55860385">
								<td class="ranking-table__cell ranking-table__cell--rank">7</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%9A%A9%ED%98%B8%EC%96%8D"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4521.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>용호얍</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,460 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									87</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 61%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">398</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">257</div>
										</div>
										<span class="winratio__text">61%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84749482">
								<td class="ranking-table__cell ranking-table__cell--rank">8</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=T1+%EC%A0%9C%EC%9A%B0%EC%8A%A4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4795.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>T1
											제우스</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,408 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									103</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">485</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">381</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-85364598">
								<td class="ranking-table__cell ranking-table__cell--rank">9</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=FPXzhaoAP4506303"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4653.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>FPXzhaoAP4506303</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,375 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									98</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 59%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">498</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">341</div>
										</div>
										<span class="winratio__text">59%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-11800783">
								<td class="ranking-table__cell ranking-table__cell--rank">10</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%B0%A4%EC%9D%B4%EC%8B%AB%EC%96%B4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4552.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>밤이싫어</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,410 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									508</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1516</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1436</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-26562566">
								<td class="ranking-table__cell ranking-table__cell--rank">11</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%9C%A4%EC%9A%A9%ED%98%B8"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4295.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>윤용호</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,349 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									108</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">382</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">294</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-28862717">
								<td class="ranking-table__cell ranking-table__cell--rank">12</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=ADD+on+win"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1211.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>ADD
											on win</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,366 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									170</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 59%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">260</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">184</div>
										</div>
										<span class="winratio__text">59%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-65721509">
								<td class="ranking-table__cell ranking-table__cell--rank">13</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%8B%9C%EA%B0%84%EB%B9%A0%EB%A5%B4%EB%8B%A4%EC%95%99"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3849.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>시간빠르다앙</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,414 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									422</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">466</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">387</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-13621964">
								<td class="ranking-table__cell ranking-table__cell--rank">14</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=SANDBOX+Croco"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4019.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>SANDBOX
											Croco</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,357 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									442</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">548</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">468</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-53900234">
								<td class="ranking-table__cell ranking-table__cell--rank">15</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EA%B5%84%EB%AE%AC%EC%A5%90"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4690.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>굄뮬쥐</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,341 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									261</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">557</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">470</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-12022069">
								<td class="ranking-table__cell ranking-table__cell--rank">16</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Chieftain00"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3879.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Chieftain00</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,338 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									216</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">319</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">237</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-65710258">
								<td class="ranking-table__cell ranking-table__cell--rank">17</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%AF%B8%EC%B9%9C%EB%93%AF%EC%9D%B4+%ED%8C%8C%EC%9D%B4%ED%8C%85"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4665.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>미친듯이
											파이팅</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,334 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									160</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 61%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">299</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">190</div>
										</div>
										<span class="winratio__text">61%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-66090406">
								<td class="ranking-table__cell ranking-table__cell--rank">18</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%AD%8C+%EB%B2%A0"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4659.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>쭌
											베</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,323 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									345</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">332</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">251</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84473246">
								<td class="ranking-table__cell ranking-table__cell--rank">19</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=yuioplmnbvcfgjhk"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4409.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>yuioplmnbvcfgjhk</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,307 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									184</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1251</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1123</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-85596903">
								<td class="ranking-table__cell ranking-table__cell--rank">20</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=V5zhao107736014"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4629.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>V5zhao107736014</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,286 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									91</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 58%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">494</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">352</div>
										</div>
										<span class="winratio__text">58%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-55131776">
								<td class="ranking-table__cell ranking-table__cell--rank">21</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=SANDBOX+OnFleek"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3951.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>SANDBOX
											OnFleek</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,295 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									320</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">774</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">713</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84486051">
								<td class="ranking-table__cell ranking-table__cell--rank">22</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=ashead+open"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4614.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>ashead
											open</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,289 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									184</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1225</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1128</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-65640959">
								<td class="ranking-table__cell ranking-table__cell--rank">23</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%8A%A4%EC%BB%AC%EC%A7%80"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>스컬지</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,356 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									268</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">694</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">603</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-75400415">
								<td class="ranking-table__cell ranking-table__cell--rank">24</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Pnpm"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon23.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Pnpm</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,281 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									194</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">282</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">212</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84018875">
								<td class="ranking-table__cell ranking-table__cell--rank">25</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Mango+Fish"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4026.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Mango
											Fish</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,242 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									115</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">638</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">506</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84473056">
								<td class="ranking-table__cell ranking-table__cell--rank">26</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Because+of+youu"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4585.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Because
											of youu</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,277 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									229</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1629</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1433</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-29341237">
								<td class="ranking-table__cell ranking-table__cell--rank">27</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=SANDBOX+FATE"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon743.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>SANDBOX
											FATE</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,269 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									284</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">474</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">391</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-79310984">
								<td class="ranking-table__cell ranking-table__cell--rank">28</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=srysmallChicken"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4491.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>srysmallChicken</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,250 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									196</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">485</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">401</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-80401147">
								<td class="ranking-table__cell ranking-table__cell--rank">29</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%82%98%EB%8A%94+%EC%A4%80%EC%9D%BC%ED%95%98%EB%8B%A4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3788.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>나는
											준일하다</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,240 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									242</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">427</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">356</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-85462241">
								<td class="ranking-table__cell ranking-table__cell--rank">30</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=clearlove9fans"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon7.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>clearlove9fans</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,211 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									88</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 60%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">425</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">287</div>
										</div>
										<span class="winratio__text">60%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-66413355">
								<td class="ranking-table__cell ranking-table__cell--rank">31</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%B2%84+%EB%8F%8C"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon8.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>버
											돌</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,209 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									263</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">336</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">297</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-85900766">
								<td class="ranking-table__cell ranking-table__cell--rank">32</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=KT+Bonnie"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4407.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>KT
											Bonnie</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,212 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									71</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 64%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">283</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">162</div>
										</div>
										<span class="winratio__text">64%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-62250923">
								<td class="ranking-table__cell ranking-table__cell--rank">33</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=i+no+hope"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3225.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>i
											no hope</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,168 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									474</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">874</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">818</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-77200702">
								<td class="ranking-table__cell ranking-table__cell--rank">34</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=UijU"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4803.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>UijU</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,209 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									295</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">672</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">608</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83606326">
								<td class="ranking-table__cell ranking-table__cell--rank">35</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%A9%A7%EB%8F%BC%EC%A7%80%EB%8F%84%EC%82%AC"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1161.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>멧돼지도사</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,195 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									158</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">680</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">598</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-56131290">
								<td class="ranking-table__cell ranking-table__cell--rank">36</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=HLE+%EB%AA%A8%EA%B1%B4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4832.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>HLE
											모건</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,187 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									278</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">383</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">321</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-17150723">
								<td class="ranking-table__cell ranking-table__cell--rank">37</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%86%8D%EC%8B%AC+%EB%A6%AC%EC%B9%98"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>농심
											리치</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,193 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									337</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">566</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">493</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-26152621">
								<td class="ranking-table__cell ranking-table__cell--rank">38</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Pz+ZZang"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon6.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Pz
											ZZang</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,193 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									180</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">261</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">201</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-31551938">
								<td class="ranking-table__cell ranking-table__cell--rank">39</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=deokdam"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>deokdam</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,187 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									306</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">365</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">277</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-3458580">
								<td class="ranking-table__cell ranking-table__cell--rank">40</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%AA%BC%EB%A0%99%EC%9D%B4%EB%8B%A4%EB%A7%90%EB%A1%9C%ED%95%98%EC%9E%90"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon588.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>쪼렙이다말로하자</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,185 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									371</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1034</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">951</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-85732978">
								<td class="ranking-table__cell ranking-table__cell--rank">41</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=DYN+Rlch"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4690.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>DYN
											Rlch</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,185 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									82</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">349</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">269</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-43850443">
								<td class="ranking-table__cell ranking-table__cell--rank">42</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=mirzz"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4817.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>mirzz</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,179 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									484</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">930</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">850</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84473359">
								<td class="ranking-table__cell ranking-table__cell--rank">43</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Strange2"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1630.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Strange2</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,156 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									168</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">972</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">840</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-79670696">
								<td class="ranking-table__cell ranking-table__cell--rank">44</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%9A%B0+%EC%A0%9C"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3864.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>우
											제</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,206 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									96</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">367</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">285</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-45631469">
								<td class="ranking-table__cell ranking-table__cell--rank">45</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=zzzusss"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>zzzusss</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,173 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									101</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">280</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">207</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-18971354">
								<td class="ranking-table__cell ranking-table__cell--rank">46</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%98%A4%EB%9A%9C%EA%B8%B03%EB%B6%84%EB%AF%B8%ED%8A%B8%EB%B3%BC"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon977.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>오뚜기3분미트볼</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,151 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									216</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">273</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">204</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-43862013">
								<td class="ranking-table__cell ranking-table__cell--rank">47</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=JUGKlNG"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3554.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>JUGKlNG</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,209 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									227</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 60%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">287</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">195</div>
										</div>
										<span class="winratio__text">60%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-82922688">
								<td class="ranking-table__cell ranking-table__cell--rank">48</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=River9"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1626.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>River9</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,150 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									185</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">703</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">630</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-2416501">
								<td class="ranking-table__cell ranking-table__cell--rank">49</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=HuyaTvJincanyi"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4022.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>HuyaTvJincanyi</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,150 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									179</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">493</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">377</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-76850898">
								<td class="ranking-table__cell ranking-table__cell--rank">50</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=FA+Mia"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4022.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>FA
											Mia</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,167 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									235</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">577</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">512</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83859857">
								<td class="ranking-table__cell ranking-table__cell--rank">51</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=FA+Envy"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3542.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>FA
											Envy</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,146 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									105</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">469</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">395</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-71310698">
								<td class="ranking-table__cell ranking-table__cell--rank">52</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%9B%90%EB%94%9C+%EC%99%95%EC%9E%90+%EC%9D%B4%EC%B1%84%ED%99%98"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4561.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>원딜
											왕자 이채환</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,145 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									127</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">376</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">294</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-81521099">
								<td class="ranking-table__cell ranking-table__cell--rank">53</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Bbvoy"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4765.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Bbvoy</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,139 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									169</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">516</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">440</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-43120962">
								<td class="ranking-table__cell ranking-table__cell--rank">54</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=SANDBOX+Kabbie"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4780.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>SANDBOX
											Kabbie</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,123 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									349</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">534</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">470</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-51651113">
								<td class="ranking-table__cell ranking-table__cell--rank">55</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=T1+Ellim"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4650.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>T1
											Ellim</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,133 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									213</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">316</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">250</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83635062">
								<td class="ranking-table__cell ranking-table__cell--rank">56</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=kelinn"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4375.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>kelinn</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,097 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									228</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">807</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">749</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-50970876">
								<td class="ranking-table__cell ranking-table__cell--rank">57</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%8B%A4%EC%97%86%EC%88%98%EC%A7%88"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4779.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>다없수질</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,131 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									363</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">528</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">452</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84630198">
								<td class="ranking-table__cell ranking-table__cell--rank">58</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=fat+sheep"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3797.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>fat
											sheep</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,127 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									196</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1243</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1074</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-3149868">
								<td class="ranking-table__cell ranking-table__cell--rank">59</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%8B%A8%EA%B5%B0%EC%9D%98%EC%B2%AD%EC%B6%98%EB%B6%80%EC%9E%AC"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4626.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>단군의청춘부재</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,123 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									328</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">608</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">569</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-82571497">
								<td class="ranking-table__cell ranking-table__cell--rank">60</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%ED%8C%8C%EC%9D%B4%ED%8C%85+%EC%9D%B8%EC%83%9D"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4781.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>파이팅
											인생</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,119 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									265</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">740</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">683</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-56561224">
								<td class="ranking-table__cell ranking-table__cell--rank">61</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=KTA+T0P"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4449.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>KTA
											T0P</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,112 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									463</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1143</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1080</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-47970503">
								<td class="ranking-table__cell ranking-table__cell--rank">62</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Gen+G+Dice"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4552.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Gen
											G Dice</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,078 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									276</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1548</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1462</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-72090746">
								<td class="ranking-table__cell ranking-table__cell--rank">63</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Ye+Zhuo+Yue"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Ye
											Zhuo Yue</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,057 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									242</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">996</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">929</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83377094">
								<td class="ranking-table__cell ranking-table__cell--rank">64</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=XIVA"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>XIVA</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,107 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									154</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">542</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">481</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-82746857">
								<td class="ranking-table__cell ranking-table__cell--rank">65</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=T1+Berserker"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon552.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>T1
											Berserker</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,105 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									252</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1001</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">973</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83587108">
								<td class="ranking-table__cell ranking-table__cell--rank">66</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%A7%A4%EC%9D%BC%EB%B0%B0%EA%B3%A0%ED%94%84%EB%8B%A4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4559.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>매일배고프다</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,105 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									172</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">559</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">497</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-80862522">
								<td class="ranking-table__cell ranking-table__cell--rank">67</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=40900202"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4787.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>40900202</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,103 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									363</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1133</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1022</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-16810685">
								<td class="ranking-table__cell ranking-table__cell--rank">68</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=ThallahT"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon551.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>ThallahT</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									998 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									445</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 50%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">840</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">830</div>
										</div>
										<span class="winratio__text">50%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-77070143">
								<td class="ranking-table__cell ranking-table__cell--rank">69</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%B0%A4%EC%9D%B4+%EC%96%B4%EB%96%BB%EA%B2%8C+%EC%A2%8B%EC%95%84"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1114.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>밤이
											어떻게 좋아</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,114 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									439</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1354</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1301</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-5290661">
								<td class="ranking-table__cell ranking-table__cell--rank">70</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%8F%99%ED%95%B4%EC%9A%B4%EC%88%98"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1044.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>동해운수</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,094 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									212</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">468</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">408</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-22611767">
								<td class="ranking-table__cell ranking-table__cell--rank">71</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%9D%BD%EC%94%B9%EB%A7%A8"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3854.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>읽씹맨</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,034 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									371</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">614</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">545</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-22231139">
								<td class="ranking-table__cell ranking-table__cell--rank">72</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Fanch"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4665.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Fanch</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,085 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									308</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">757</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">710</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-2481136">
								<td class="ranking-table__cell ranking-table__cell--rank">73</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%AF%B8%EC%B3%90%EB%86%88"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4658.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>미쳐놈</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,063 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									513</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1060</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">973</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83624221">
								<td class="ranking-table__cell ranking-table__cell--rank">74</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EA%B4%80%EC%83%81%EC%9D%84+%EB%B3%B8%EB%8B%A4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4794.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>관상을
											본다</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,083 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									95</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 60%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">427</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">283</div>
										</div>
										<span class="winratio__text">60%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83169334">
								<td class="ranking-table__cell ranking-table__cell--rank">75</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=FA+ian"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1340.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>FA
											ian</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,080 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									138</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">493</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">413</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-31100933">
								<td class="ranking-table__cell ranking-table__cell--rank">76</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Remika"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4817.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Remika</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,079 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									413</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">670</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">605</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-13762462">
								<td class="ranking-table__cell ranking-table__cell--rank">77</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=FA+Dove"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon6.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>FA
											Dove</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,079 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									380</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">620</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">572</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84477075">
								<td class="ranking-table__cell ranking-table__cell--rank">78</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=stableman1"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3838.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>stableman1</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,133 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									131</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">705</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">625</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83454081">
								<td class="ranking-table__cell ranking-table__cell--rank">79</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=shui+di+si+chuan"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4833.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>shui
											di si chuan</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,078 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									203</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">547</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">473</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-85614977">
								<td class="ranking-table__cell ranking-table__cell--rank">80</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=DWG+Chasy"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4832.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>DWG
											Chasy</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,078 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									98</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">477</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">353</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-63071630">
								<td class="ranking-table__cell ranking-table__cell--rank">81</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=KT+Rebel"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4216.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>KT
											Rebel</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,082 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									405</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">468</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">399</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-82913579">
								<td class="ranking-table__cell ranking-table__cell--rank">82</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=FA+zzuss"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>FA
											zzuss</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,063 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									138</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">385</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">321</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-68040462">
								<td class="ranking-table__cell ranking-table__cell--rank">83</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=SS00NG"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3582.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>SS00NG</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,061 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									221</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">878</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">732</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83663077">
								<td class="ranking-table__cell ranking-table__cell--rank">84</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EC%9A%B8%EB%B6%80%EC%A7%96%EB%8A%94%EB%A7%88%EC%98%A4%EC%B9%B4%EC%9D%B4"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon23.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>울부짖는마오카이</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,059 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									281</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1356</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1281</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-42055197">
								<td class="ranking-table__cell ranking-table__cell--rank">85</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%ED%98%84+%EC%A5%B0"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4657.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>현
											쥰</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,042 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									250</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1316</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1152</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-50260171">
								<td class="ranking-table__cell ranking-table__cell--rank">86</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Aprox"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4607.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Aprox</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,093 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									118</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">348</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">273</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-83955959">
								<td class="ranking-table__cell ranking-table__cell--rank">87</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Starryovo"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4463.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Starryovo</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									921 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									186</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">881</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">804</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-79280308">
								<td class="ranking-table__cell ranking-table__cell--rank">88</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Gen+G+Karis"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4653.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Gen
											G Karis</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,054 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									325</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">657</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">631</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-65821228">
								<td class="ranking-table__cell ranking-table__cell--rank">89</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%EB%A1%A4%EC%98%A4%EB%B8%8C%EB%A0%88%EC%A0%84%EB%93%9C1234"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon20.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>롤오브레전드1234</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,020 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									287</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">303</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">247</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84725977">
								<td class="ranking-table__cell ranking-table__cell--rank">90</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=Shadow+Patch"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon6.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>Shadow
											Patch</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,050 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									122</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 55%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">730</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">607</div>
										</div>
										<span class="winratio__text">55%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-79191094">
								<td class="ranking-table__cell ranking-table__cell--rank">91</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=%ED%98%BC%EC%9E%90+%EC%98%A8+%EC%84%B8%EC%83%81"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4831.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>혼자
											온 세상</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,049 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									209</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">607</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">539</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-73451014">
								<td class="ranking-table__cell ranking-table__cell--rank">92</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=KT+H4rp"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon7.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>KT
											H4rp</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,029 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									297</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">923</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">862</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84478103">
								<td class="ranking-table__cell ranking-table__cell--rank">93</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=xlzyx"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4568.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>xlzyx</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,034 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									172</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1098</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">1025</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-71270274">
								<td class="ranking-table__cell ranking-table__cell--rank">94</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=xxxxxxx1"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4784.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>xxxxxxx1</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,042 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									311</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">862</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">768</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-3084278">
								<td class="ranking-table__cell ranking-table__cell--rank">95</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=sheidodabuguo"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4779.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>sheidodabuguo</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,040 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									489</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 52%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">747</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">687</div>
										</div>
										<span class="winratio__text">52%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84077605">
								<td class="ranking-table__cell ranking-table__cell--rank">96</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=zyb"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon7.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>zyb</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,040 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									112</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 56%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">529</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">424</div>
										</div>
										<span class="winratio__text">56%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84614942">
								<td class="ranking-table__cell ranking-table__cell--rank">97</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=ZED99"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon4817.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>ZED99</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,040 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									110</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 57%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">518</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">397</div>
										</div>
										<span class="winratio__text">57%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-84293743">
								<td class="ranking-table__cell ranking-table__cell--rank">98</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=esortazione"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon23.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>esortazione</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,039 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									134</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 53%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">687</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">606</div>
										</div>
										<span class="winratio__text">53%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-17615858">
								<td class="ranking-table__cell ranking-table__cell--rank">99</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=sdasda173"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon1439.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>sdasda173</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,038 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									274</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 51%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">1007</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">956</div>
										</div>
										<span class="winratio__text">51%</span>
									</div></td>
							</tr>
							<tr class="ranking-table__row " id="summoner-57671404">
								<td class="ranking-table__cell ranking-table__cell--rank">100</td>
								<td
									class="select_summoner ranking-table__cell ranking-table__cell--summoner"><a
									href="//www.op.gg/summoner/userName=T1+Cuzz"><img
										src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3859.jpg?image=c_scale,q_auto,c_scale,w_38&amp;v=1518361200"
										onerror="this.src='//opgg-static.akamaized.net/images/profile_icons/profileIcondefault.jpg';"><span>T1
											Cuzz</span></a></td>
								<td class="ranking-table__cell ranking-table__cell--tier">
									Challenger</td>
								<td class="ranking-table__cell ranking-table__cell--lp">
									1,011 LP</td>
								<td class="ranking-table__cell ranking-table__cell--level">
									195</td>
								<td class="ranking-table__cell ranking-table__cell--winratio"><div
										class="winratio">
										<div class="winratio-graph">
											<div class="winratio-graph__fill winratio-graph__fill--left"
												style="width: 54%"></div>
											<div class="winratio-graph__text winratio-graph__text--left">432</div>
											<div class="winratio-graph__fill winratio-graph__fill--right"></div>
											<div class="winratio-graph__text winratio-graph__text--right">366</div>
										</div>
										<span class="winratio__text">54%</span>
									</div></td>
							</tr>
						</tbody>
					</table>
					<div class="ranking-pagination">
						<ul class="ranking-pagination__list">
							<li
								class="ranking-pagination__item ranking-pagination__item--arrow"><a
								href="#">◀</a></li>
							<li
								class="ranking-pagination__item ranking-pagination__item--disable"><a
								href="#">1</a></li>
							<li class="ranking-pagination__item "><a
								href="/ranking/ladder/page=2">2</a></li>
							<li class="ranking-pagination__item "><a
								href="/ranking/ladder/page=3">3</a></li>
							<li class="ranking-pagination__item "><a
								href="/ranking/ladder/page=4">4</a></li>
							<li class="ranking-pagination__item "><a
								href="/ranking/ladder/page=5">5</a></li>
							<li class="ranking-pagination__item "><a
								href="/ranking/ladder/page=6">6</a></li>
							<li class="ranking-pagination__item "><a
								href="/ranking/ladder/page=7">7</a></li>
							<li
								class="ranking-pagination__item ranking-pagination__item--arrow "><a
								href="/ranking/ladder/page=8">▶</a></li>
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