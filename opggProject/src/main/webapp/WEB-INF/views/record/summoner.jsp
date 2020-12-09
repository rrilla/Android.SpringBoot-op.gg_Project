<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/alert.jsp"%>
<link href="//opgg-static.akamaized.net/css3/sprite.css?t=1606991396"
	rel="stylesheet" type="text/css">
<link href="//opgg-static.akamaized.net/css3/summoner.css?t=1606991396"
	rel="stylesheet" type="text/css">
<style>
/* 소환사 프로필 스타일 */
.header {
	position: relative;
	width: 1000px;
	margin: 0 auto;
	padding: 20px 0 0 0;
}

.border_img {
	background-image:
		url(//opgg-static.akamaized.net/images/borders2/challenger.png);
	width: 120px;
	height: 120px;
	position: absolute;
	top: -10px;
	left: -10px;
}

.profile_img {
	width: 100px;
	height: 100px;
}

.summoner_level {
	background-image:
		url("https://opgg-static.akamaized.net/images/site/summoner/bg-levelbox.png");
	position: absolute;
	top: 100%;
	left: 50%;
	width: 44px;
	height: 24px;
	margin-top: -14px;
	margin-left: -22px;
	padding-top: 3px;
	box-sizing: border-box;
	font-size: 14px;
	text-align: center;
	color: #eabd56;
}
/* 소환사 이름과 랭킹 */
.summoner_rank {
	display: inline-block;
	position: relative;
	height: 50px;
	vertical-align: top;
	margin: 0 25px;
}

.name {
	font-size: 20px;
	font-weight: bold;
	color: #242929;
}

.rank>a {
	text-decoration: none;
	font-size: 11px;
	color: #555e5e;
}
/* 전적 갱신 버튼 스타일 */
.renewal {
	position: absolute;
	margin-top: 15px;
	left: 0;
	width: 100px;
}

.renewal>button {
	border: 1px solid #1a78ae;
	background-color: #1f8ecd;
	color: white;
	padding: 11px 14px 10px;
	border-radius: 2px;
}
/* 전적 내용 스타일 */
.container {
	border-top: 1px solid #c6cbcb;
	margin-top: 20px;
	width: 100%;
}

.content {
	width: 1000px;
	margin: 0 auto;
	font-size: 0;
	margin-top: 10px;
}
/* 왼쪽 서브 내용 */
.subContent {
	display: inline-block;
	width: 300px;
	font-size: 12px;
	vertical-align: top;
}

.info_wrap {
	border: 1px solid #cdd2d2;
	box-shadow: 0 1px #dcdfdf;
	background-color: #f2f2f2;
	border-radius: 2px;
	display: table;
	width: 100%;
	color: #879292;
	font-size: 12px;
}

.tier_wrap {
	width: 120px;
	height: 124px;
	display: table-cell;
	vertical-align: middle;
}

.tier_img {
	width: 104px;
	height: 104px;
}

.tier_info_wrap {
	display: table-cell;
	vertical-align: middle;
	line-height: 1.5;
}

.rank_type {
	font-size: 11px;
	color: #879292;
}

.rank_tier {
	font-size: 15px;
	font-weight: bold;
	color: #1f8ecd;
}
/* 오른쪽 전적 내용 */
.realContent {
	display: inline-block;
	width: 690px;
	margin-left: 10px;
	font-size: 12px;
	vertical-align: top;
}

.game_header {
	border: 1px solid #cdd2d2;
	box-shadow: 0 1px #dcdfdf;
	background-color: #f2f2f2;
	border-radius: 2px;
	height: 34px;
}

.game_header>ul>li {
	margin: 0 10px;
	font-size: 12px;
	line-height: 36px;
}

.game_header>ul>.active {
	border-bottom: 2px solid #1f8ecd;
}

.game_header>ul>.active>a {
	color: #1f8ecd;
	font-weight: bold;
}

.game_header>ul>li>a {
	text-decoration: none;
	color: #555e5e;
}
/* 소환사 최근 평균 전적 & 챔피언 */
.game_average {
	width: 100%;
	background-color: #ededed;
}

.box {
	border: 1px solid #cdd2d2;
	width: 688px;
	height: 170px;
	display: flex;
	padding-top: 10px;
}

.most_champ>div img {
	position: absolute;
	width: 34px;
	height: 34px;
	left: 0;
}

.most_champ>div>div {
	position: absolute;
	left: 50px;
	color: #333;
	font-size: 14px;
}
/* 게임 리스트 스타일 */
.game_content {
	table-layout: fixed;
	background-color: #a3cfec;
	border-color: #99b9cf;
	width: 689px;
	border: 1px solid #cdd2d2;
}

.game_content>div {
	display: table-cell;
	height: 96px;
	vertical-align: middle;
}
/* 랭크 종류, 승/패, 시간 */
.game_stats {
	width: 70px;
	text-align: center;
	font-size: 11px;
	color: #555;
	line-height: 16px;
}

.game_type {
	font-weight: bold;
}

.game_result {
	color: #1a78ae;
	font-weight: bold;
}

/* 인게임 챔프, 룬, 스펠 세팅 */
.game_setting {
	width: 100px;
	font-size: 0;
}

.game_champ_img {
	display: inline-block;
	width: 46px;
	height: 46px;
	vertical-align: middle;
	border-radius: 50%;
	overflow: hidden;
}

.summoner_spell {
	display: inline-block;
	vertical-align: middle;
	margin-left: 4px;
}

.spell {
	margin-top: 2px;
	border-radius: 3px;
	overflow: hidden;
}

.runes {
	display: inline-block;
	vertical-align: middle;
	margin-left: 4px;
}

.rune {
	width: 22px;
	height: 22px;
	margin-top: 2px;
}

.champ_name {
	margin-top: 8px;
	font-size: 11px;
	color: #555;
	text-align: center;
}
/* KAD 평점 */
.game_kda {
	font-size: 11px;
	text-align: center;
}

.kda {
	color: #879292;
	font-size: 15px;
	font-weight: bold;
}

.kill {
	color: #555e5e;
}

.death {
	color: #c6443e;
}

.assist {
	color: #555e5e;
}

.game_kda_ratio {
	color: #555e5e;
	font-size: 12px;
	font-weight: bold;
	margin-top: 6px;
}

.kda_ratio {
	color: #353a3a;
}
/* 인게임 상태 */
.stats {
	width: 90px;
	font-size: 11px;
	text-align: center;
	line-height: 18px;
	color: #555e5e;
}

.kill_concern {
	color: #c6443e;
}
/* 인게임 아이템 */
.item_list {
	width: 96px;
	margin: 0 auto;
}

.item {
	background-color: #99b9cf;
	display: inline-block;
	width: 22px;
	height: 22px;
	border-radius: 3px;
	margin-top: 2px;
	margin-right: 2px;
	overflow: hidden;
}

.item>img {
	width: 100%;
	height: 100%;
}

.trinket {
	margin-top: 7px;
	color: #353a3a;
	line-height: 13px;
	font-size: 11px;
	text-align: center;
}

.trinket img {
	vertical-align: middle;
}
/* 인게임 플레이어 */
.game_player {
	padding-left: 20px;
	width: 200px;
	font-size: 0;
}

.team {
	float: left;
	width: 50%;
}

.summoner_player {
	width: 80px;
	height: 18px;
	margin-left: 3px;
	text-align: left;
}

.summoner_player>div>img {
	width: 16px;
	height: 16px;
}

.summoner_champ_img {
	display: inline-block;
	vertical-align: middle;
	margin-right: 3px;
}

.summoner_name {
	display: inline-block;
	max-width: 60px;
	vertical-align: middle;
	font-size: 11px;
	color: #555;
	white-space: nowrap;
}

.summoner_name a {
	display: block;
	color: inherit;
	text-decoration: none;
	text-overflow: ellipsis;
	overflow: hidden;
	white-space: nowrap;
}
/* 게임 상세 버튼 */
.game_stats_button {
	border-color: #4aa1d2;
	background-color: #64b1e4;
	width: 42px;
	border: 1px solid #000;
	text-align: center;
	outline: 0;
}

.detail_button {
	background-color: #64b1e4;
	border: none;
}

.detail_button:focus {
	outline: none;
	border: none;
}
</style>

<div>
	<div class="header">
		<div style="position: relative; display: inline-block;">
			<div class="border_img"></div>
			<img class="profile_img"
				src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3478.jpg?image=q_auto:best&v=1518361200" />
			<span class="summoner_level">218</span>
		</div>
		<div class="summoner_rank">
			<span class="name">문주완</span>
			<div class="renewal">
				<button type="button">전적 갱신</button>
			</div>
		</div>
	</div>

	<div class="container">
		<div class="content">
			<div class="subContent">
				<div class="info_wrap">
					<div class="tier_wrap">
						<img class="tier_img"
							src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&v=1" />
					</div>
					<div class="tier_info_wrap">
						<div class="rank_type">솔로랭크</div>
						<div class="rank_tier">Challenger</div>
						<div class="tier_info">
							<span style="color: #555e5e; font-weight: bold;">0 LP</span> / <span>101승</span>
							<span>65패</span> <br> <span>56%</span>
						</div>
						<div>다이애나의 마법사들</div>
					</div>
				</div>
				<div class="info_wrap" style="margin-top: 20px;">
					<div class="tier_wrap">
						<img class="tier_img"
							src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&v=1" />
					</div>
					<div class="tier_info_wrap">
						<div class="rank_type">자유랭크</div>
						<div class="rank_tier">Challenger</div>
						<div class="tier_info">
							<span style="color: #555e5e; font-weight: bold;">0 LP</span> / <span>101승</span>
							<span>65패</span> <br> <span>56%</span>
						</div>
						<div>다이애나의 마법사들</div>
					</div>
				</div>
				<div
					style="widht: 100%; height: 100%; margin-top: 10px; border: 1px solid #cdd2d2; text-align: center;">
					<div
						style="font-size: 15px; border-bottom: 1px solid #cdd2d2; background-color: #f2f2f2;">숙련도</div>
					<div>
						<div style="padding: 10px;">
							<div
								style="width: 46px; height: 46px; display: inline-block; border-radius: 50%; overflow: hidden; vertical-align: middle;">
								<img
									src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_46&v=1606405946" />
							</div>
							<div
								style="padding-left: 7px; position: relative; display: inline-block; vertical-align: middle; font-size: 13px; color: #555e5e; font-weight: bold; height: 30px;">
								<span>제드</span> <span
									style="display: block; font-size: 12px; font-weight: normal;">1345686점</span>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="realContent">
				<div class="game_header">
					<ul style="display: flex; padding-left: 10px; height: 34px;">
						<li class="active" data-type="total"><a href=""
							onClick="typeChange()">전체</a></li>
						<li data-type="solo"><a href="" onClick="typeChange()">솔로랭크</a></li>
						<li data-type="free"><a href="" onClick="typeChange()">자유랭크</a></li>
					</ul>
				</div>
				<div style="position: relative;">
					<div style="text-align: center; margin-top: -1px;">
						<div class="box">
							<div>
								<span style="margin: 5px;">20전 14승 6패</span>
								<div>
									<canvas id="myChart" height="130px"></canvas>
								</div>
							</div>
							<div class="most_champ" style="width: 100%; position: relative;">
								<div>
									<img
										src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946"
										style="top: 13px;" />
									<div style="top: 13px;">그레이브즈</div>
									<div style="top: 30px; font-size: 12px;">숙련도</div>
								</div>
								<div>
									<img
										src="//opgg-static.akamaized.net/images/lol/champion/Kindred.png?image=c_scale,q_auto,w_46&v=1606405946"
										style="top: 63px;" />
									<div style="top: 63px;">킨드레드</div>
									<div style="top: 80px; font-size: 12px;">숙련도</div>
								</div>
								<div>
									<img
										src="//opgg-static.akamaized.net/images/lol/champion/Tristana.png?image=c_scale,q_auto,w_46&v=1606405946"
										style="top: 113px;" />
									<div style="top: 113px;">트리스타나</div>
									<div style="top: 130px; font-size: 12px;">숙련도</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="game_list" style="margin-top: 10px;">
					<div class="game_content">
						<div class="game_stats">
							<div class="game_type">자유 5:5 랭크</div>
							<div
								style="width: 27px; margin: 5px auto; height: 2px; background-color: #99b9cf;"></div>
							<div class="game_result">승리</div>
							<div>23분 0초</div>
						</div>
						<div class="game_setting">
							<div class="game_champ_img">
								<img
									src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_46&v=1606405946" />
							</div>
							<div class="summoner_spell">
								<div class="spell">
									<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_22&v=1606405946" />
								</div>
								<div class="spell">
									<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_22&v=1606405946" />
								</div>
							</div>
							<div class="runes">
								<div class="rune">
									<img style="background-color: #000; border-radius: 50%;"
										src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=c_scale,q_auto,w_22&v=1606405946" />
								</div>
								<div class="rune">
									<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=c_scale,q_auto,w_22&amp;" />
								</div>
							</div>
							<div class="champ_name">
								<span>제드</span>
							</div>
						</div>
						<div class="game_kda">
							<div class="kda">
								<span class="kill">16</span> / <span class="death">2</span> / <span
									class="assist">8</span>
							</div>
							<div class="game_kda_ratio">
								<span class="kda_ratio">12.00:1</span> 평점
							</div>
						</div>
						<div class="stats">
							<div class="level">레벨15</div>
							<div class="cs">
								<span>205 (8.9)</span> CS
							</div>
							<div class="kill_concern">킬관여 75%</div>
						</div>
						<div class="game_items" style="font-size: 0;">
							<div class="item_list">
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3364.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img
										src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="trinket">
									<img
										src="//opgg-static.akamaized.net/images/site/summoner/icon-ward-blue.png" />
									제어 와드 <span>3</span>
								</div>
							</div>
						</div>
						<div class="game_player">
							<div class="team">
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=준석이형님">준석이형님</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=부산IT교육센터">부산IT교육센터</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=구울과공허충">구울과공허충</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=냄세제로">냄세제로</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=문주완">문주완</a>
									</div>
								</div>
							</div>
							<div class="team">
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=준석이형님">준석이형님</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=부산IT교육센터">부산IT교육센터</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=구울과공허충">구울과공허충</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=냄세제로">냄세제로</a>
									</div>
								</div>
								<div class="summoner_player">
									<div
										style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img
											src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=문주완">문주완</a>
									</div>
								</div>
							</div>
						</div>
						<div class="game_stats_button">
							<input class="detail_button __spSite __spSite-194 Off"
								type="button" onClick="openButton1()" value="열기" />
						</div>
					</div>
				</div>
				<div class="GameDetail" id="detail" style="display: none;">
					<div class="MatchDetailLayout tabWrap _recognized">
						<div class="MatchDetailHeader">
							<ul class="tabHeaders">
								<li id="right_match_overview" class="tabHeader active"
									data-tab-show-class="MatchDetailContent-overview"
									data-category="Total"><a href="" onClick="changeTab()">종합</a></li>
								<li id="right_match_team" class="tabHeader"
									data-tab-show-class="MatchDetailContent-teamAnalysis"
									data-category="Team"><a href="" onClick="changeTab()">팀
										분석</a></li>
							</ul>
						</div>


						<!-- 탭에 있는 종합 부분 나타내는 곳 -->
						<div class="MatchDetailContent tabItems" id="totalDetail">
							<div class="Content tabItem MatchDetailContent-overview"
								data-tab-data-url="/summoner/matches/ajax/detail/gameId=4832725050&amp;summonerId=50581976"
								data-tab-spinner-height="400" data-tab-is-loaded-already="true"
								style="display: block;">
								<div class="GameDetailTableWrap">
									<table class="GameDetailTable Result-WIN">
										<colgroup>
											<col class="ChampionImage">
											<col class="SummonerSpell">
											<col class="KeystoneMastery">
											<col class="SummonerName">
											<col class="Tier">
											<col class="KDA">
											<col class="Damage">
											<col class="Ward">
											<col class="CS">
											<col class="Items">
										</colgroup>
										<thead class="Header">
											<tr class="Row">
												<th class="HeaderCell" colspan="4"><span
													class="GameResult"> 승리 </span> (블루팀)</th>
												<th class="HeaderCell">티어</th>
												<th class="HeaderCell">KDA</th>
												<th class="HeaderCell">피해량</th>
												<th class="HeaderCell">와드</th>
												<th class="HeaderCell">CS</th>
												<th class="HeaderCell">아이템</th>
											</tr>
										</thead>
										<tbody class="Content">
											<tr class="Row first  isRequester">
												<td class="ChampionImage Cell"><a
													href="/champion/velkoz/statistics" target="_blank">
														<div
															class="Image __sprite __spc32 __spc32-133 tip tpd-delegation-uid-1"
															title="">벨코즈</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerMana.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip tpd-delegation-uid-1" title=""> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8128.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%EC%A4%80%EC%84%9D%EC%9D%B4%ED%98%95%EB%8B%98"
													target="_blank" class="Link">준석이형님</a></td>

												<td class="Tier Cell tip" title="무작위 총력전<br>Gold 4<br>53 LP">
													Gold 4</td>

												<td class="KDA Cell"><span class="KDARatio green">3.33:1</span>

													<div class="KDA">
														<span class="Kill">5</span>/<span class="Death">9</span>/<span
															class="Assist">25</span> <span class="CKRate tip"
															title="킬관여율">(56%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 26,379<br>총 피해량: 96,365">
													<div class="ChampionDamage">26,379</div>
													<div class="Progress">
														<div class="Fill" style="width: 54%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip tpd-delegation-uid-1" title="">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">52</div>
													<div class="CSPerMinute">분당 1.8</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6653.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/4637.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3165.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/1052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
											<tr class="Row   ">
												<td class="ChampionImage Cell"><a
													href="/champion/fizz/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-30 tip"
															title="피즈">피즈</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerSnowball.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%ED%86%A0%EC%8B%A4%EC%9D%B4+%ED%94%BC%EC%A6%88"
													target="_blank" class="Link">토실이 피즈</a></td>

												<td class="Tier Cell tip tpd-delegation-uid-1" title="">
													Gold 4</td>

												<td class="KDA Cell"><span class="KDARatio normal">2.92:1</span>

													<div class="KDA">
														<span class="Kill">20</span>/<span class="Death">12</span>/<span
															class="Assist">15</span> <span class="CKRate tip"
															title="킬관여율">(65%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 43,254<br>총 피해량: 76,074">
													<div class="ChampionDamage">43,254</div>
													<div class="Progress">
														<div class="Fill" style="width: 88%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">36</div>
													<div class="CSPerMinute">분당 1.2</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3152.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3100.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3135.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
											<tr class="Row   ">
												<td class="ChampionImage Cell"><a
													href="/champion/karma/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-50 tip"
															title="카르마">카르마</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerMana.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8214.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8400.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%ED%86%A0%EC%8B%A4%EC%9D%B4+%ED%8B%B0%EB%AA%A8"
													target="_blank" class="Link">토실이 티모</a></td>

												<td class="Tier Cell">Level 239</td>

												<td class="KDA Cell"><span class="KDARatio blue">4.33:1</span>

													<div class="KDA">
														<span class="Kill">3</span>/<span class="Death">9</span>/<span
															class="Assist">36</span> <span class="CKRate tip"
															title="킬관여율">(72%)</span>
													</div></td>
												<td class="Damage Cell tip tpd-delegation-uid-1" title="">
													<div class="ChampionDamage">12,608</div>
													<div class="Progress">
														<div class="Fill" style="width: 26%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">15</div>
													<div class="CSPerMinute">분당 0.5</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3190.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3143.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3111.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6616.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3065.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3504.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
											<tr class="Row   ">
												<td class="ChampionImage Cell"><a
													href="/champion/varus/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-130 tip"
															title="바루스">바루스</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerBarrier.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8128.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=MayLeaf"
													target="_blank" class="Link">MayLeaf</a></td>

												<td class="Tier Cell tip" title="무작위 총력전<br>Gold 2<br>55 LP">
													Gold 2</td>

												<td class="KDA Cell"><span class="KDARatio green">3.00:1</span>

													<div class="KDA">
														<span class="Kill">7</span>/<span class="Death">11</span>/<span
															class="Assist">26</span> <span class="CKRate tip"
															title="킬관여율">(61%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 32,399<br>총 피해량: 147,254">
													<div class="ChampionDamage">32,399</div>
													<div class="Progress">
														<div class="Fill" style="width: 66%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">115</div>
													<div class="CSPerMinute">분당 3.9</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3042.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6673.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3140.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3006.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3085.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3031.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<div class="Image noItem"></div>
													</div>
												</td>
											</tr>
											<tr class="Row  last ">
												<td class="ChampionImage Cell"><a
													href="/champion/lucian/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-66 tip"
															title="루시안">루시안</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerBarrier.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8005.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8100.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=Rmx+Mylips"
													target="_blank" class="Link">Rmx Mylips</a></td>

												<td class="Tier Cell tip"
													title="무작위 총력전<br>Bronze 1<br>34 LP">Bronze 1</td>

												<td class="KDA Cell"><span class="KDARatio blue">4.88:1</span>

													<div class="KDA">
														<span class="Kill">19</span>/<span class="Death">8</span>/<span
															class="Assist">20</span> <span class="CKRate tip"
															title="킬관여율">(72%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 40,592<br>총 피해량: 165,086">
													<div class="ChampionDamage">40,592</div>
													<div class="Progress">
														<div class="Fill" style="width: 83%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">127</div>
													<div class="CSPerMinute">분당 4.3</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6673.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3071.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3072.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3006.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3153.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6694.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
										</tbody>
									</table>
									<div class="Summary">
										<div class="Team Team-100 Result-WIN">
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-baron-b.png"
													class="Image tip" title="바론"> 0
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-dragon-b.png"
													class="Image tip" title="드래곤"> 0
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-b.png"
													class="Image tip" title="타워"> 4
											</div>
										</div>
										<div class="summary-graph">
											<div class="total--container">
												<div class="text graph--title">Total Kill</div>
												<div class="text graph--data graph--data__left">54</div>
												<div class="graph--container">
													<div class="graph win--team" style="flex: 54"></div>
													<div class="graph lose--team" style="flex: 49"></div>
												</div>
												<div class="text graph--data graph--data__right">49</div>
											</div>
											<div class="total--container">
												<div class="text graph--title">Total Gold</div>
												<div class="text graph--data graph--data__left">94590</div>
												<div class="graph--container">
													<div class="graph win--team" style="flex: 94590"></div>
													<div class="graph lose--team" style="flex: 96510"></div>
												</div>
												<div class="text graph--data graph--data__right">96510</div>
											</div>
										</div>
										<div class="Team Team-200 Result-LOSE">
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-baron-r.png"
													class="Image tip" title="바론"> 0
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-dragon-r.png"
													class="Image tip" title="드래곤"> 0
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"
													class="Image tip" title="타워"> 2
											</div>
										</div>
									</div>

									<table class="GameDetailTable Result-LOSE">
										<colgroup>
											<col class="ChampionImage">
											<col class="SummonerSpell">
											<col class="KeystoneMastery">
											<col class="SummonerName">
											<col class="Tier">
											<col class="KDA">
											<col class="Damage">
											<col class="Ward">
											<col class="CS">
											<col class="Items">
										</colgroup>
										<thead class="Header">
											<tr class="Row">
												<th class="HeaderCell" colspan="4"><span
													class="GameResult"> 패배 </span> (레드팀)</th>
												<th class="HeaderCell">티어</th>
												<th class="HeaderCell">KDA</th>
												<th class="HeaderCell">피해량</th>
												<th class="HeaderCell">와드</th>
												<th class="HeaderCell">CS</th>
												<th class="HeaderCell">아이템</th>
											</tr>
										</thead>
										<tbody class="Content">
											<tr class="Row first  ">
												<td class="ChampionImage Cell"><a
													href="/champion/zed/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-147 tip"
															title="제드">제드</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerSnowball.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%EA%B3%B0%EB%8F%8C%EC%9D%B4%EB%B6%80%EC%9E%A5"
													target="_blank" class="Link">곰돌이부장</a></td>

												<td class="Tier Cell tip"
													title="무작위 총력전<br>Silver 2<br>100 LP">Silver 2</td>

												<td class="KDA Cell"><span class="KDARatio normal">2.00:1</span>

													<div class="KDA">
														<span class="Kill">8</span>/<span class="Death">14</span>/<span
															class="Assist">20</span> <span class="CKRate tip"
															title="킬관여율">(57%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 26,821<br>총 피해량: 88,026">
													<div class="ChampionDamage">26,821</div>
													<div class="Progress">
														<div class="Fill" style="width: 55%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">61</div>
													<div class="CSPerMinute">분당 2.1</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3142.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6694.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3111.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6691.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3179.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6609.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
												</td>
											</tr>
											<tr class="Row   ">
												<td class="ChampionImage Cell"><a
													href="/champion/morgana/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-76 tip"
															title="모르가나">모르가나</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerExhaust.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8128.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%EB%8F%84%EB%8B%B7%EA%B0%80%EA%B8%B0%EB%93%9C%EB%A6%AC%EA%B3%A0%EB%8B%A4"
													target="_blank" class="Link">도닷가기드리고다</a></td>

												<td class="Tier Cell tip"
													title="무작위 총력전<br>Bronze 1<br>49 LP">Bronze 1</td>

												<td class="KDA Cell"><span class="KDARatio normal">2.33:1</span>

													<div class="KDA">
														<span class="Kill">3</span>/<span class="Death">12</span>/<span
															class="Assist">25</span> <span class="CKRate tip"
															title="킬관여율">(57%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 22,399<br>총 피해량: 103,022">
													<div class="ChampionDamage">22,399</div>
													<div class="Progress">
														<div class="Fill" style="width: 46%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip tpd-delegation-uid-1" title="">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">80</div>
													<div class="CSPerMinute">분당 2.7</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6653.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3165.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3102.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip tpd-delegation-uid-1">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
											<tr class="Row   ">
												<td class="ChampionImage Cell"><a
													href="/champion/zoe/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-150 tip"
															title="조이">조이</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerSnowball.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%EB%B9%BC%EC%BD%A900"
													target="_blank" class="Link">빼콩00</a></td>

												<td class="Tier Cell">Level 255</td>

												<td class="KDA Cell"><span class="KDARatio green">3.33:1</span>

													<div class="KDA">
														<span class="Kill">7</span>/<span class="Death">9</span>/<span
															class="Assist">23</span> <span class="CKRate tip"
															title="킬관여율">(61%)</span>
													</div></td>
												<td class="Damage Cell tip tpd-delegation-uid-1" title="">
													<div class="ChampionDamage">49,201</div>
													<div class="Progress">
														<div class="Fill" style="width: 100%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip tpd-delegation-uid-1" title="">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">88</div>
													<div class="CSPerMinute">분당 3</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3135.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/4628.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6655.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
											<tr class="Row   ">
												<td class="ChampionImage Cell"><a
													href="/champion/pyke/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-89 tip"
															title="파이크">파이크</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerSnowball.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=Larcoid"
													target="_blank" class="Link">Larcoid</a></td>

												<td class="Tier Cell tip" title="무작위 총력전<br>Gold 4<br>20 LP">
													Gold 4</td>

												<td class="KDA Cell"><span class="KDARatio green">3.75:1</span>

													<div class="KDA">
														<span class="Kill">23</span>/<span class="Death">8</span>/<span
															class="Assist">7</span> <span class="CKRate tip"
															title="킬관여율">(61%)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: 28,838<br>총 피해량: 47,216">
													<div class="ChampionDamage">28,838</div>
													<div class="Progress">
														<div class="Fill" style="width: 59%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">23</div>
													<div class="CSPerMinute">분당 0.8</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3065.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3222.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6693.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6333.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3053.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3814.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
											<tr class="Row  last ">
												<td class="ChampionImage Cell"><a
													href="/champion/swain/statistics" target="_blank">
														<div class="Image __sprite __spc32 __spc32-114 tip"
															title="스웨인">스웨인</div>
														<div class="Level">18</div>
												</a></td>
												<td class="SummonerSpell Cell"><img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerSnowball.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell"><img
													src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"> <img
													src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="SummonerName Cell"><a
													href="//www.op.gg/summoner/userName=%EB%A7%88%EB%9D%BC%ED%86%A0"
													target="_blank" class="Link">마라토</a></td>

												<td class="Tier Cell tip"
													title="무작위 총력전<br>Platinum 4<br>14 LP">Platinum 4</td>

												<td class="KDA Cell"><span class="KDARatio green">3.18:1</span>

													<div class="KDA">
														<span class="Kill">8</span>/<span class="Death">11</span>/<span
															class="Assist">27</span> <span class="CKRate tip"
															title="킬관여율">(71%)</span>
													</div></td>
												<td class="Damage Cell tip tpd-delegation-uid-1" title="">
													<div class="ChampionDamage">36,700</div>
													<div class="Progress">
														<div class="Fill" style="width: 75%;"></div>
													</div>
												</td>
												<td class="Ward Cell tip"
													title="제어 와드 0<br>와드 설치: 0<br>와드 제거: 0">
													<div class="Buy">
														<span class="SightWard">0</span>
													</div>
													<div class="Stats">
														<span> 0</span> / <span> 0</span>
													</div>
												</td>
												<td class="CS Cell">
													<div class="CS">110</div>
													<div class="CSPerMinute">분당 3.7</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3040.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/6653.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3165.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/3102.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
													<div class="Item">
														<img
															src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
															class="Image tip">
													</div>
												</td>
											</tr>
										</tbody>
									</table>
								</div>
							</div>

							<div class="Content tabItem MatchDetailContent-teamAnalysis"
								data-tab-data-url="/summoner/matches/ajax/detail/teamAnalysis/gameId=4832725050&amp;summonerId=50581976&amp;moreLoad=1"
								data-tab-spinner-height="400" data-tab-spinner-class="Progress"
								style="display: none;"></div>
							<div class="Content tabItem MatchDetailContent-builds"
								data-tab-data-url="/summoner/matches/ajax/detail/builds/gameId=4832725050&amp;summonerId=50581976&amp;moreLoad=1"
								data-tab-spinner-height="400" data-tab-spinner-class="Progress"
								style="display: none;"></div>
							<div class="Content tabItem MatchDetailContent-gold"
								data-tab-data-url="/summoner/matches/ajax/detail/gold/gameId=4832725050&amp;summonerId=50581976&amp;moreLoad=1"
								data-tab-spinner-height="400" data-tab-spinner-class="Progress"
								style="display: none;"></div>
						</div>
						
						<!-- 탭에 있는 팀 분석부분을 나타낸다 -->
						<div class="tabWrap _recognized"
							style="display: none; border: 1px solid #cdd2d2;" id="analysis">
							<div class="MatchTeamAnalysisHeader">
								<ul class="tabHeaders">
									<li class="tabHeader active"
										data-tab-show-class="TeamAnalysis-MatchAnalysis" onClick="teamButton()"><a
										href="">경기 분석</a></li>
									<li class="tabHeader"
										data-tab-show-class="TeamAnalysis-TeamGoldKill" onClick="teamButton()"><a
										href="">골드 &amp; 킬</a></li>
									<li class="tabHeader"
										data-tab-show-class="TeamAnalysis-TeamTimeLine" onClick="teamButton()"><a
										href="">타임라인</a></li>
								</ul>
							</div>

							<div class="tabItems">
							
								<!-- 팀 분석 내부에 경기분석 탭 부분 -->
								<div id="right_match_team_analysis"
									class="tabItem TeamAnalysis-MatchAnalysis">
									<div class="MatchDetailMatchAnalysis">
										<div class="MatchDetailTeamLegend">
											<ul>
												<li><span>승리팀</span></li>
												<li><span>패배팀</span></li>
											</ul>
										</div>
										<ul>
											<li class="MatchAnalysisListItem">
												<div class="MatchAnalysisListItemContent">
													<h4>챔피언 처치</h4>
													<div class="MatchAnalysisTable">
														<div class="Team Result-WIN">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 31.25%;"></div>
																		<span>5</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 18.75%;"></div>
																		<span>3</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 100%;"></div>
																		<span>16</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 25%;"></div>
																		<span>4</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 25%;"></div>
																		<span>4</span>
																	</div>
																</li>
															</ul>
														</div>
														<div class="GraphWrap">
															<div>
																<div class="Graph" id="MatchAnalysis-4830260153-kills"
																	style="width: 90px; height: 90px;"
																	data-highcharts-chart="1">
																	<div class="highcharts-container" id="highcharts-3"
																		style="position: relative; overflow: hidden; width: 90px; height: 90px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																		<svg version="1.1"
																			style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
																			xmlns="http://www.w3.org/2000/svg" width="90"
																			height="90">
																					<desc>Created with Highcharts 4.2.3</desc>
																					<defs>
																					<clipPath id="highcharts-4">
																					<rect x="0" y="0" width="90" height="90"></rect></clipPath></defs>
																					<g class="highcharts-series-group" zIndex="3">
																					<g class="highcharts-series highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)">
																					<path fill="#c6443e"
																				d="M 44.99185307185219 5.000000829655484 A 40 40 0 0 1 67.01443256178928 78.39707710238176 L 64.26262849156562 74.22244246458403 A 35 35 0 0 0 44.99287143787067 10.000000725948553 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path>
																					<path fill="#1a78ae"
																				d="M 66.98102448303771 78.41907483273731 A 40 40 0 1 1 44.94444080247714 5.000038585323978 L 44.95138570216749 10.00003376215848 A 35 35 0 1 0 64.233396422658 74.24169047864515 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path></g>
																					<g class="highcharts-markers highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)"></g></g>
																					<g class="highcharts-tooltip" zIndex="8"
																				style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																				transform="translate(0,-9999)">
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.049999999999999996"
																				stroke-width="5" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.09999999999999999"
																				stroke-width="3" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black" stroke-opacity="0.15"
																				stroke-width="1" transform="translate(1, 1)"></path>
																					<path fill="rgba(249, 249, 249, .85)"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																					<text x="8" zIndex="1"
																				style="font-size:12px;color:#333333;fill:#333333;"
																				y="20"></text></g></svg>
																	</div>
																</div>
																<div class="Values">
																	<div class="Value Result-WIN">32</div>
																	<div class="Value Result-LOSE">22</div>
																</div>
															</div>
														</div>


														<div class="Team Result-LOSE">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 50%;"></div>
																		<span>8</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 18.75%;"></div>
																		<span>3</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 31.25%;"></div>
																		<span>5</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 18.75%;"></div>
																		<span>3</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 18.75%;"></div>
																		<span>3</span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li class="MatchAnalysisListItem">
												<div class="MatchAnalysisListItemContent">
													<h4>골드 획득량</h4>
													<div class="MatchAnalysisTable">

														<div class="Team Result-WIN">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 58.044876180052%;"></div>
																		<span>8,485</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 49.569024490354%;"></div>
																		<span>7,246</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 100%;"></div>
																		<span>14,618</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 62.026268983445%;"></div>
																		<span>9,067</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 55.493227527706%;"></div>
																		<span>8,112</span>
																	</div>
																</li>
															</ul>
														</div>
														<div class="GraphWrap">
															<div>
																<div class="Graph"
																	id="MatchAnalysis-4830260153-goldEarned"
																	style="width: 90px; height: 90px;"
																	data-highcharts-chart="2">
																	<div class="highcharts-container" id="highcharts-6"
																		style="position: relative; overflow: hidden; width: 90px; height: 90px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																		<svg version="1.1"
																			style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
																			xmlns="http://www.w3.org/2000/svg" width="90"
																			height="90">
																					<desc>Created with Highcharts 4.2.3</desc>
																					<defs>
																					<clipPath id="highcharts-7">
																					<rect x="0" y="0" width="90" height="90"></rect></clipPath></defs>
																					<g class="highcharts-series-group" zIndex="3">
																					<g class="highcharts-series highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)">
																					<path fill="#c6443e"
																				d="M 44.99185307185219 5.000000829655484 A 40 40 0 0 1 55.08193265275709 83.70858604993562 L 53.82169107116245 78.87001279369366 A 35 35 0 0 0 44.99287143787067 10.000000725948553 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path>
																					<path fill="#1a78ae"
																				d="M 55.04321903219268 83.71864862661664 A 40 40 0 1 1 44.94444080247714 5.000038585323978 L 44.95138570216749 10.00003376215848 A 35 35 0 1 0 53.78781665316859 78.87881754828956 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path></g>
																					<g class="highcharts-markers highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)"></g></g>
																					<g class="highcharts-tooltip" zIndex="8"
																				style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																				transform="translate(0,-9999)">
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.049999999999999996"
																				stroke-width="5" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.09999999999999999"
																				stroke-width="3" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black" stroke-opacity="0.15"
																				stroke-width="1" transform="translate(1, 1)"></path>
																					<path fill="rgba(249, 249, 249, .85)"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																					<text x="8" zIndex="1"
																				style="font-size:12px;color:#333333;fill:#333333;"
																				y="20"></text></g></svg>
																	</div>
																</div>
																<div class="Values">
																	<div class="Value Result-WIN">47,528</div>
																	<div class="Value Result-LOSE">40,415</div>
																</div>
															</div>
														</div>


														<div class="Team Result-LOSE">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 61.006977698728%;"></div>
																		<span>8,918</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 51.149268025722%;"></div>
																		<span>7,477</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 59.946641127377%;"></div>
																		<span>8,763</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 58.181693802162%;"></div>
																		<span>8,505</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 46.189629224244%;"></div>
																		<span>6,752</span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li class="MatchAnalysisListItem">
												<div class="MatchAnalysisListItemContent">
													<h4>챔피언에게 가한 피해량</h4>
													<div class="MatchAnalysisTable">




														<div class="Team Result-WIN">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 33.927491485501%;"></div>
																		<span>10,659</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 28.538689244676%;"></div>
																		<span>8,966</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 100%;"></div>
																		<span>31,417</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 56.205239201706%;"></div>
																		<span>17,658</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 39.303561765923%;"></div>
																		<span>12,348</span>
																	</div>
																</li>
															</ul>
														</div>
														<div class="GraphWrap">
															<div>
																<div class="Graph"
																	id="MatchAnalysis-4830260153-totalDamageDealtToChampions"
																	style="width: 90px; height: 90px;"
																	data-highcharts-chart="3">
																	<div class="highcharts-container" id="highcharts-9"
																		style="position: relative; overflow: hidden; width: 90px; height: 90px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																		<svg version="1.1"
																			style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
																			xmlns="http://www.w3.org/2000/svg" width="90"
																			height="90">
																					<desc>Created with Highcharts 4.2.3</desc>
																					<defs>
																					<clipPath id="highcharts-10">
																					<rect x="0" y="0" width="90" height="90"></rect></clipPath></defs>
																					<g class="highcharts-series-group" zIndex="3">
																					<g class="highcharts-series highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)">
																					<path fill="#c6443e"
																				d="M 44.99185307185219 5.000000829655484 A 40 40 0 0 1 67.38046114163505 78.15290272491632 L 64.58290349893068 74.00878988430178 A 35 35 0 0 0 44.99287143787067 10.000000725948553 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path>
																					<path fill="#1a78ae"
																				d="M 67.34729705420598 78.17526660587788 A 40 40 0 1 1 44.94444080247714 5.000038585323978 L 44.95138570216749 10.00003376215848 A 35 35 0 1 0 64.55388492243023 74.02835828014315 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path></g>
																					<g class="highcharts-markers highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)"></g></g>
																					<g class="highcharts-tooltip" zIndex="8"
																				style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																				transform="translate(0,-9999)">
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.049999999999999996"
																				stroke-width="5" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.09999999999999999"
																				stroke-width="3" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black" stroke-opacity="0.15"
																				stroke-width="1" transform="translate(1, 1)"></path>
																					<path fill="rgba(249, 249, 249, .85)"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																					<text x="8" zIndex="1"
																				style="font-size:12px;color:#333333;fill:#333333;"
																				y="20"></text></g></svg>
																	</div>
																</div>
																<div class="Values">
																	<div class="Value Result-WIN">81,048</div>
																	<div class="Value Result-LOSE">55,308</div>
																</div>
															</div>
														</div>


														<div class="Team Result-LOSE">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 58.617945698189%;"></div>
																		<span>18,416</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 29.273959957985%;"></div>
																		<span>9,197</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 38.052646656269%;"></div>
																		<span>11,955</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 28.856988254767%;"></div>
																		<span>9,066</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 21.243275933412%;"></div>
																		<span>6,674</span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li class="MatchAnalysisListItem">
												<div class="MatchAnalysisListItemContent">
													<h4>와드 설치</h4>
													<div class="MatchAnalysisTable">




														<div class="Team Result-WIN">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 34.782608695652%;"></div>
																		<span>8</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 43.478260869565%;"></div>
																		<span>10</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 47.826086956522%;"></div>
																		<span>11</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 13.04347826087%;"></div>
																		<span>3</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 100%;"></div>
																		<span>23</span>
																	</div>
																</li>
															</ul>
														</div>
														<div class="GraphWrap">
															<div>
																<div class="Graph"
																	id="MatchAnalysis-4830260153-wardsPlaced"
																	style="width: 90px; height: 90px;"
																	data-highcharts-chart="4">
																	<div class="highcharts-container" id="highcharts-12"
																		style="position: relative; overflow: hidden; width: 90px; height: 90px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																		<svg version="1.1"
																			style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
																			xmlns="http://www.w3.org/2000/svg" width="90"
																			height="90">
																					<desc>Created with Highcharts 4.2.3</desc>
																					<defs>
																					<clipPath id="highcharts-13">
																					<rect x="0" y="0" width="90" height="90"></rect></clipPath></defs>
																					<g class="highcharts-series-group" zIndex="3">
																					<g class="highcharts-series highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)">
																					<path fill="#c6443e"
																				d="M 44.99185307185219 5.000000829655484 A 40 40 0 0 1 65.42103730648921 79.39449425892138 L 62.86840764317805 75.09518247655622 A 35 35 0 0 0 44.99287143787067 10.000000725948553 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path>
																					<path fill="#1a78ae"
																				d="M 65.38663260744491 79.41489809557868 A 40 40 0 1 1 44.94444080247714 5.000038585323978 L 44.95138570216749 10.00003376215848 A 35 35 0 1 0 62.838303531514285 75.11303583363133 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path></g>
																					<g class="highcharts-markers highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)"></g></g>
																					<g class="highcharts-tooltip" zIndex="8"
																				style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																				transform="translate(0,-9999)">
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.049999999999999996"
																				stroke-width="5" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.09999999999999999"
																				stroke-width="3" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black" stroke-opacity="0.15"
																				stroke-width="1" transform="translate(1, 1)"></path>
																					<path fill="rgba(249, 249, 249, .85)"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																					<text x="8" zIndex="1"
																				style="font-size:12px;color:#333333;fill:#333333;"
																				y="20"></text></g></svg>
																	</div>
																</div>
																<div class="Values">
																	<div class="Value Result-WIN">55</div>
																	<div class="Value Result-LOSE">39</div>
																</div>
															</div>
														</div>


														<div class="Team Result-LOSE">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 52.173913043478%;"></div>
																		<span>12</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 21.739130434783%;"></div>
																		<span>5</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 30.434782608696%;"></div>
																		<span>7</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 30.434782608696%;"></div>
																		<span>7</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 34.782608695652%;"></div>
																		<span>8</span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li class="MatchAnalysisListItem">
												<div class="MatchAnalysisListItemContent">
													<h4>받은 피해량</h4>
													<div class="MatchAnalysisTable">




														<div class="Team Result-WIN">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 83.883824464702%;"></div>
																		<span>19,784</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 97.875768496926%;"></div>
																		<span>23,084</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 61.416154335383%;"></div>
																		<span>14,485</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 56.25609497562%;"></div>
																		<span>13,268</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 44.748781004876%;"></div>
																		<span>10,554</span>
																	</div>
																</li>
															</ul>
														</div>
														<div class="GraphWrap">
															<div>
																<div class="Graph"
																	id="MatchAnalysis-4830260153-totalDamageTaken"
																	style="width: 90px; height: 90px;"
																	data-highcharts-chart="5">
																	<div class="highcharts-container" id="highcharts-15"
																		style="position: relative; overflow: hidden; width: 90px; height: 90px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																		<svg version="1.1"
																			style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
																			xmlns="http://www.w3.org/2000/svg" width="90"
																			height="90">
																					<desc>Created with Highcharts 4.2.3</desc>
																					<defs>
																					<clipPath id="highcharts-16">
																					<rect x="0" y="0" width="90" height="90"></rect></clipPath></defs>
																					<g class="highcharts-series-group" zIndex="3">
																					<g class="highcharts-series highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)">
																					<path fill="#c6443e"
																				d="M 44.99185307185219 5.000000829655484 A 40 40 0 1 1 33.01865975241704 83.16343126438775 L 34.5163272833649 78.39300235633928 A 35 35 0 1 0 44.99287143787067 10.000000725948553 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path>
																					<path fill="#1a78ae"
																				d="M 32.98050231818284 83.15143084442302 A 40 40 0 0 1 44.94444080247714 5.000038585323978 L 44.95138570216749 10.00003376215848 A 35 35 0 0 0 34.48293952840999 78.38250198887013 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path></g>
																					<g class="highcharts-markers highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)"></g></g>
																					<g class="highcharts-tooltip" zIndex="8"
																				style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																				transform="translate(0,-9999)">
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.049999999999999996"
																				stroke-width="5" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.09999999999999999"
																				stroke-width="3" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black" stroke-opacity="0.15"
																				stroke-width="1" transform="translate(1, 1)"></path>
																					<path fill="rgba(249, 249, 249, .85)"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																					<text x="8" zIndex="1"
																				style="font-size:12px;color:#333333;fill:#333333;"
																				y="20"></text></g></svg>
																	</div>
																</div>
																<div class="Values">
																	<div class="Value Result-WIN">81,175</div>
																	<div class="Value Result-LOSE">98,663</div>
																</div>
															</div>
														</div>



														<div class="Team Result-LOSE">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 82.891668433326%;"></div>
																		<span>19,550</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 100%;"></div>
																		<span>23,585</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 85.02861988552%;"></div>
																		<span>20,054</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 59.168963324147%;"></div>
																		<span>13,955</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 91.24019503922%;"></div>
																		<span>21,519</span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
											<li class="MatchAnalysisListItem">
												<div class="MatchAnalysisListItemContent">
													<h4>CS</h4>
													<div class="MatchAnalysisTable">




														<div class="Team Result-WIN">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 65.853658536585%;"></div>
																		<span>135</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 49.268292682927%;"></div>
																		<span>101</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 100%;"></div>
																		<span>205</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 70.243902439024%;"></div>
																		<span>144</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 13.170731707317%;"></div>
																		<span>27</span>
																	</div>
																</li>
															</ul>
														</div>
														<div class="GraphWrap">
															<div>
																<div class="Graph" id="MatchAnalysis-4830260153-cs"
																	style="width: 90px; height: 90px;"
																	data-highcharts-chart="6">
																	<div class="highcharts-container" id="highcharts-18"
																		style="position: relative; overflow: hidden; width: 90px; height: 90px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
																		<svg version="1.1"
																			style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
																			xmlns="http://www.w3.org/2000/svg" width="90"
																			height="90">
																					<desc>Created with Highcharts 4.2.3</desc>
																					<defs>
																					<clipPath id="highcharts-19">
																					<rect x="0" y="0" width="90" height="90"></rect></clipPath></defs>
																					<g class="highcharts-series-group" zIndex="3">
																					<g class="highcharts-series highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)">
																					<path fill="#c6443e"
																				d="M 44.99185307185219 5.000000829655484 A 40 40 0 0 1 48.18846682058638 84.87271848437248 L 47.78990846801308 79.88862867382593 A 35 35 0 0 0 44.99287143787067 10.000000725948553 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path>
																					<path fill="#1a78ae"
																				d="M 48.148592514514185 84.87588701430408 A 40 40 0 1 1 44.94444080247714 5.000038585323978 L 44.95138570216749 10.00003376215848 A 35 35 0 1 0 47.75501845019991 79.89140113751608 Z"
																				stroke-linejoin="round" transform="translate(0,0)"></path></g>
																					<g class="highcharts-markers highcharts-series-0"
																				zIndex="0.1" transform="translate(0,0) scale(1 1)"></g></g>
																					<g class="highcharts-tooltip" zIndex="8"
																				style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																				transform="translate(0,-9999)">
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.049999999999999996"
																				stroke-width="5" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black"
																				stroke-opacity="0.09999999999999999"
																				stroke-width="3" transform="translate(1, 1)"></path>
																					<path fill="none"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																				isShadow="true" stroke="black" stroke-opacity="0.15"
																				stroke-width="1" transform="translate(1, 1)"></path>
																					<path fill="rgba(249, 249, 249, .85)"
																				d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																					<text x="8" zIndex="1"
																				style="font-size:12px;color:#333333;fill:#333333;"
																				y="20"></text></g></svg>
																	</div>
																</div>
																<div class="Values">
																	<div class="Value Result-WIN">612</div>
																	<div class="Value Result-LOSE">582</div>
																</div>
															</div>
														</div>


														<div class="Team Result-LOSE">
															<ul>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 69.268292682927%;"></div>
																		<span>142</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 50.731707317073%;"></div>
																		<span>104</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 71.219512195122%;"></div>
																		<span>146</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 77.073170731707%;"></div>
																		<span>158</span>
																	</div>
																</li>
																<li>
																	<div class="ChampionImage">
																		<img
																			src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"
																			alt="">
																	</div>
																	<div class="Progress">
																		<div class="Bar" style="width: 15.609756097561%;"></div>
																		<span>32</span>
																	</div>
																</li>
															</ul>
														</div>
													</div>
												</div>
											</li>
										</ul>
									</div>
								</div>
								
								<!-- 팀 분석 내부에 골드 & 킬 부분 -->
								<div id="right_match_team_goldkill"
									class="tabItem TeamAnalysis-TeamGoldKill"
									style="display: none;">
									<div class="TeamAnalysisGraph tabWrap _recognized">
										<div class="TeamAnalysisGraphTab">
											<ul class="tabHeaders">
												<li id="right_match_team_goldkill_gold"
													class="tabHeader active"
													data-tab-show-class="TeamAnalysisGraph-TeamGold"><a
													href="">팀별 골드 획득량</a></li>
												<li id="right_match_team_goldkill_gold_adv"
													class="tabHeader"
													data-tab-show-class="TeamAnalysisGraph-TeamGoldDiff"><a
													href="">팀별 골드 획득량 차이</a></li>
												<li id="right_match_team_goldkill_kill_diff"
													class="tabHeader"
													data-tab-show-class="TeamAnalysisGraph-TeamKillDiff"><a
													href="">팀별 누적 킬 차이</a></li>
											</ul>
										</div>
										<div class="MatchDetailTeamLegend">
											<ul>
												<li><span>승리팀</span></li>
												<li><span>패배팀</span></li>
											</ul>
										</div>
										<div class="tabItems">
											<div class="tabItem TeamAnalysisGraph-TeamGold"
												style="display: block;">
												<div id="GraphTeamGoldGain-4830260153"
													data-highcharts-chart="7">
													<div class="highcharts-container" id="highcharts-21"
														style="position: relative; overflow: hidden; width: 690px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
														<svg version="1.1"
															style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
															xmlns="http://www.w3.org/2000/svg" width="690"
															height="400">
																	<desc>Created with Highcharts 4.2.3</desc>
																	<defs>
																	<clipPath id="highcharts-22">
																	<rect x="0" y="0" width="634" height="337"></rect></clipPath></defs>
																	<g class="highcharts-grid" zIndex="1"></g>
																	<g class="highcharts-grid" zIndex="1">
																	<path fill="none" d="M 46 347.5 L 680 347.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 46 280.5 L 680 280.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 46 212.5 L 680 212.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 46 145.5 L 680 145.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 46 77.5 L 680 77.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 46 9.5 L 680 9.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path></g>
																	<g class="highcharts-axis" zIndex="2">
																	<path fill="none" d="M 71.5 347 L 71.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 98.5 347 L 98.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 124.5 347 L 124.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 151.5 347 L 151.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 177.5 347 L 177.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 204.5 347 L 204.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 230.5 347 L 230.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 256.5 347 L 256.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 283.5 347 L 283.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 309.5 347 L 309.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 336.5 347 L 336.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 362.5 347 L 362.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 388.5 347 L 388.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 415.5 347 L 415.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 441.5 347 L 441.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 468.5 347 L 468.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 494.5 347 L 494.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 521.5 347 L 521.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 547.5 347 L 547.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 573.5 347 L 573.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 600.5 347 L 600.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 626.5 347 L 626.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 653.5 347 L 653.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 679.5 347 L 679.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 45.5 347 L 45.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 46 347.5 L 680 347.5"
																stroke="#C0D0E0" stroke-width="1" zIndex="7"></path></g>
																	<g class="highcharts-axis" zIndex="2"></g>
																	<g class="highcharts-series-group" zIndex="3">
																	<g class="highcharts-series highcharts-series-0"
																zIndex="0.1" transform="translate(46,10) scale(1 1)"
																clip-path="url(#highcharts-22)">
																	<path fill="none"
																d="M 13.208333333333334 320.15 C 13.208333333333334 320.15 29.05833333333333 320.15 39.625 320.15 C 50.19166666666667 320.15 55.475 320.15 66.04166666666667 317.77078 C 76.60833333333332 315.39156 81.89166666666668 309.63829599999997 92.45833333333333 303.82572 C 103.025 298.01314399999995 108.30833333333332 293.296492 118.875 288.7079 C 129.44166666666666 284.11930800000005 134.725 284.864752 145.29166666666669 280.88276 C 155.85833333333335 276.900768 161.14166666666668 272.762408 171.70833333333334 268.79794 C 182.275 264.833472 187.55833333333334 265.43468000000007 198.12500000000003 261.06042 C 208.6916666666667 256.68616000000003 213.975 251.889976 224.54166666666669 246.92664 C 235.10833333333335 241.963304 240.3916666666667 241.603388 250.95833333333334 236.24374 C 261.525 230.884092 266.80833333333334 225.53927199999998 277.375 220.1284 C 287.9416666666667 214.717528 293.225 214.81054000000003 303.7916666666667 209.18938 C 314.3583333333333 203.56822 319.6416666666667 197.49278399999997 330.2083333333333 192.02259999999998 C 340.775 186.552416 346.0583333333333 187.04982800000002 356.625 181.83846 C 367.1916666666667 176.627092 372.475 171.679932 383.0416666666667 165.96576 C 393.6083333333333 160.251588 398.8916666666667 160.50770799999995 409.4583333333333 153.2676 C 420.025 146.02749199999997 425.3083333333333 138.640452 435.875 129.76522 C 446.4416666666667 120.88998799999999 451.725 115.40093200000001 462.2916666666667 108.89143999999999 C 472.8583333333333 102.38194800000001 478.1416666666667 101.20514399999999 488.7083333333333 97.21776 C 499.275 93.23037599999998 504.5583333333333 96.79448799999997 515.125 88.95451999999997 C 525.6916666666667 81.11455199999997 530.975 65.98594800000004 541.5416666666667 58.017920000000004 C 552.1083333333333 50.04989200000005 557.3916666666667 52.77420000000001 567.9583333333334 49.11437999999998 C 578.525 45.45456 583.8083333333334 46.20269999999999 594.3750000000001 39.718819999999994 C 604.9416666666668 33.234939999999995 620.7916666666667 16.694979999999987 620.7916666666667 16.694979999999987"
																stroke="#1a78ae" stroke-width="2" zIndex="1"
																stroke-linejoin="round" stroke-linecap="round"></path>
																	<path fill="none"
																d="M 3.208333333333334 320.15 L 13.208333333333334 320.15 C 13.208333333333334 320.15 29.05833333333333 320.15 39.625 320.15 C 50.19166666666667 320.15 55.475 320.15 66.04166666666667 317.77078 C 76.60833333333332 315.39156 81.89166666666668 309.63829599999997 92.45833333333333 303.82572 C 103.025 298.01314399999995 108.30833333333332 293.296492 118.875 288.7079 C 129.44166666666666 284.11930800000005 134.725 284.864752 145.29166666666669 280.88276 C 155.85833333333335 276.900768 161.14166666666668 272.762408 171.70833333333334 268.79794 C 182.275 264.833472 187.55833333333334 265.43468000000007 198.12500000000003 261.06042 C 208.6916666666667 256.68616000000003 213.975 251.889976 224.54166666666669 246.92664 C 235.10833333333335 241.963304 240.3916666666667 241.603388 250.95833333333334 236.24374 C 261.525 230.884092 266.80833333333334 225.53927199999998 277.375 220.1284 C 287.9416666666667 214.717528 293.225 214.81054000000003 303.7916666666667 209.18938 C 314.3583333333333 203.56822 319.6416666666667 197.49278399999997 330.2083333333333 192.02259999999998 C 340.775 186.552416 346.0583333333333 187.04982800000002 356.625 181.83846 C 367.1916666666667 176.627092 372.475 171.679932 383.0416666666667 165.96576 C 393.6083333333333 160.251588 398.8916666666667 160.50770799999995 409.4583333333333 153.2676 C 420.025 146.02749199999997 425.3083333333333 138.640452 435.875 129.76522 C 446.4416666666667 120.88998799999999 451.725 115.40093200000001 462.2916666666667 108.89143999999999 C 472.8583333333333 102.38194800000001 478.1416666666667 101.20514399999999 488.7083333333333 97.21776 C 499.275 93.23037599999998 504.5583333333333 96.79448799999997 515.125 88.95451999999997 C 525.6916666666667 81.11455199999997 530.975 65.98594800000004 541.5416666666667 58.017920000000004 C 552.1083333333333 50.04989200000005 557.3916666666667 52.77420000000001 567.9583333333334 49.11437999999998 C 578.525 45.45456 583.8083333333334 46.20269999999999 594.3750000000001 39.718819999999994 C 604.9416666666668 33.234939999999995 620.7916666666667 16.694979999999987 620.7916666666667 16.694979999999987 L 630.7916666666667 16.694979999999987"
																stroke-linejoin="round" visibility="visible"
																stroke="rgba(192,192,192,0.0001)" stroke-width="22"
																zIndex="2" class=" highcharts-tracker" style=""></path></g>
																	<g
																class="highcharts-markers highcharts-series-0 highcharts-tracker"
																zIndex="0.1" transform="translate(46,10) scale(1 1)"
																clip-path="url(#highcharts-23)" style=""></g>
																	<g class="highcharts-series highcharts-series-1"
																zIndex="0.1" transform="translate(46,10) scale(1 1)"
																clip-path="url(#highcharts-22)">
																	<path fill="none"
																d="M 13.208333333333334 320.15 C 13.208333333333334 320.15 29.05833333333333 320.15 39.625 320.15 C 50.19166666666667 320.15 55.475 319.891184 66.04166666666667 317.29224 C 76.60833333333332 314.69329600000003 81.89166666666668 310.51854 92.45833333333333 307.15528 C 103.025 303.79202 108.30833333333332 304.24359999999996 118.875 300.47594 C 129.44166666666666 296.70828 134.725 292.915008 145.29166666666669 288.31698 C 155.85833333333335 283.71895200000006 161.14166666666668 282.730868 171.70833333333334 277.4858 C 182.275 272.240732 187.55833333333334 266.905348 198.12500000000003 262.09164 C 208.6916666666667 257.277932 213.975 257.08247200000005 224.54166666666669 253.41726 C 235.10833333333335 249.752048 240.3916666666667 247.68152 250.95833333333334 243.76558 C 261.525 239.84964 266.80833333333334 237.853252 277.375 233.83756 C 287.9416666666667 229.82186799999997 293.225 228.239316 303.7916666666667 223.68712 C 314.3583333333333 219.13492399999998 319.6416666666667 216.03317599999997 330.2083333333333 211.07657999999998 C 340.775 206.119984 346.0583333333333 204.55360799999997 356.625 198.90413999999998 C 367.1916666666667 193.25467199999997 372.475 188.97881600000002 383.0416666666667 182.82924 C 393.6083333333333 176.67966400000003 398.8916666666667 172.92548399999998 409.4583333333333 168.15626 C 420.025 163.387036 425.3083333333333 163.389732 435.875 158.98311999999999 C 446.4416666666667 154.576508 451.725 151.35344000000003 462.2916666666667 146.1232 C 472.8583333333333 140.89296000000002 478.1416666666667 138.76986 488.7083333333333 132.83192 C 499.275 126.89397999999997 504.5583333333333 121.90638 515.125 116.43349999999998 C 525.6916666666667 110.96061999999998 530.975 111.01588800000002 541.5416666666667 105.46751999999998 C 552.1083333333333 99.91915200000001 557.3916666666667 93.72644000000001 567.9583333333334 88.69165999999998 C 578.525 83.65688 583.8083333333334 85.10463199999997 594.3750000000001 80.29361999999998 C 604.9416666666668 75.48260799999997 620.7916666666667 64.63659999999999 620.7916666666667 64.63659999999999"
																stroke="#c6443e" stroke-width="2" zIndex="1"
																stroke-linejoin="round" stroke-linecap="round"></path>
																	<path fill="none"
																d="M 3.208333333333334 320.15 L 13.208333333333334 320.15 C 13.208333333333334 320.15 29.05833333333333 320.15 39.625 320.15 C 50.19166666666667 320.15 55.475 319.891184 66.04166666666667 317.29224 C 76.60833333333332 314.69329600000003 81.89166666666668 310.51854 92.45833333333333 307.15528 C 103.025 303.79202 108.30833333333332 304.24359999999996 118.875 300.47594 C 129.44166666666666 296.70828 134.725 292.915008 145.29166666666669 288.31698 C 155.85833333333335 283.71895200000006 161.14166666666668 282.730868 171.70833333333334 277.4858 C 182.275 272.240732 187.55833333333334 266.905348 198.12500000000003 262.09164 C 208.6916666666667 257.277932 213.975 257.08247200000005 224.54166666666669 253.41726 C 235.10833333333335 249.752048 240.3916666666667 247.68152 250.95833333333334 243.76558 C 261.525 239.84964 266.80833333333334 237.853252 277.375 233.83756 C 287.9416666666667 229.82186799999997 293.225 228.239316 303.7916666666667 223.68712 C 314.3583333333333 219.13492399999998 319.6416666666667 216.03317599999997 330.2083333333333 211.07657999999998 C 340.775 206.119984 346.0583333333333 204.55360799999997 356.625 198.90413999999998 C 367.1916666666667 193.25467199999997 372.475 188.97881600000002 383.0416666666667 182.82924 C 393.6083333333333 176.67966400000003 398.8916666666667 172.92548399999998 409.4583333333333 168.15626 C 420.025 163.387036 425.3083333333333 163.389732 435.875 158.98311999999999 C 446.4416666666667 154.576508 451.725 151.35344000000003 462.2916666666667 146.1232 C 472.8583333333333 140.89296000000002 478.1416666666667 138.76986 488.7083333333333 132.83192 C 499.275 126.89397999999997 504.5583333333333 121.90638 515.125 116.43349999999998 C 525.6916666666667 110.96061999999998 530.975 111.01588800000002 541.5416666666667 105.46751999999998 C 552.1083333333333 99.91915200000001 557.3916666666667 93.72644000000001 567.9583333333334 88.69165999999998 C 578.525 83.65688 583.8083333333334 85.10463199999997 594.3750000000001 80.29361999999998 C 604.9416666666668 75.48260799999997 620.7916666666667 64.63659999999999 620.7916666666667 64.63659999999999 L 630.7916666666667 64.63659999999999"
																stroke-linejoin="round" visibility="visible"
																stroke="rgba(192,192,192,0.0001)" stroke-width="22"
																zIndex="2" class=" highcharts-tracker" style=""></path></g>
																	<g
																class="highcharts-markers highcharts-series-1 highcharts-tracker"
																zIndex="0.1" transform="translate(46,10) scale(1 1)"
																clip-path="url(#highcharts-23)" style=""></g></g>
																	<g
																class="highcharts-axis-labels highcharts-xaxis-labels"
																zIndex="7">
																	<text x="61.80105819768401"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 61.80105819768401 363)"
																y="363" opacity="1">
																	<tspan>0분</tspan></text>
																	<text x="88.21772486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 88.21772486435069 363)"
																y="363" opacity="1">
																	<tspan>1분</tspan></text>
																	<text x="114.63439153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 114.63439153101734 363)"
																y="363" opacity="1">
																	<tspan>2분</tspan></text>
																	<text x="141.05105819768403"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 141.05105819768403 363)"
																y="363" opacity="1">
																	<tspan>3분</tspan></text>
																	<text x="167.46772486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 167.46772486435069 363)"
																y="363" opacity="1">
																	<tspan>4분</tspan></text>
																	<text x="193.88439153101737"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 193.88439153101737 363)"
																y="363" opacity="1">
																	<tspan>5분</tspan></text>
																	<text x="220.30105819768403"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 220.30105819768403 363)"
																y="363" opacity="1">
																	<tspan>6분</tspan></text>
																	<text x="246.71772486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 246.71772486435069 363)"
																y="363" opacity="1">
																	<tspan>7분</tspan></text>
																	<text x="273.13439153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 273.13439153101734 363)"
																y="363" opacity="1">
																	<tspan>8분</tspan></text>
																	<text x="299.55105819768403"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 299.55105819768403 363)"
																y="363" opacity="1">
																	<tspan>9분</tspan></text>
																	<text x="325.96772486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 325.96772486435066 363)"
																y="363" opacity="1">
																	<tspan>10분</tspan></text>
																	<text x="352.38439153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 352.38439153101734 363)"
																y="363" opacity="1">
																	<tspan>11분</tspan></text>
																	<text x="378.80105819768403"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 378.80105819768403 363)"
																y="363" opacity="1">
																	<tspan>12분</tspan></text>
																	<text x="405.21772486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 405.21772486435066 363)"
																y="363" opacity="1">
																	<tspan>13분</tspan></text>
																	<text x="431.63439153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 431.63439153101734 363)"
																y="363" opacity="1">
																	<tspan>14분</tspan></text>
																	<text x="458.05105819768403"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 458.05105819768403 363)"
																y="363" opacity="1">
																	<tspan>15분</tspan></text>
																	<text x="484.46772486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 484.46772486435066 363)"
																y="363" opacity="1">
																	<tspan>16분</tspan></text>
																	<text x="510.88439153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 510.88439153101734 363)"
																y="363" opacity="1">
																	<tspan>17분</tspan></text>
																	<text x="537.301058197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 537.301058197684 363)"
																y="363" opacity="1">
																	<tspan>18분</tspan></text>
																	<text x="563.7177248643507"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 563.7177248643507 363)"
																y="363" opacity="1">
																	<tspan>19분</tspan></text>
																	<text x="590.1343915310174"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 590.1343915310174 363)"
																y="363" opacity="1">
																	<tspan>20분</tspan></text>
																	<text x="616.551058197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 616.551058197684 363)"
																y="363" opacity="1">
																	<tspan>21분</tspan></text>
																	<text x="642.9677248643507"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 642.9677248643507 363)"
																y="363" opacity="1">
																	<tspan>22분</tspan></text>
																	<text x="669.3843915310174"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 669.3843915310174 363)"
																y="363" opacity="1">
																	<tspan>23분</tspan></text></g>
																	<g
																class="highcharts-axis-labels highcharts-yaxis-labels"
																zIndex="7">
																	<text x="31"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="350"
																opacity="1">0k</text>
																	<text x="31"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="282"
																opacity="1">10k</text>
																	<text x="31"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="215"
																opacity="1">20k</text>
																	<text x="31"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="147"
																opacity="1">30k</text>
																	<text x="31"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="80"
																opacity="1">40k</text>
																	<text x="31"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="13"
																opacity="1">50k</text></g>
																	<g class="highcharts-tooltip" zIndex="8"
																style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																transform="translate(0,-9999)">
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black"
																stroke-opacity="0.049999999999999996" stroke-width="5"
																transform="translate(1, 1)"></path>
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black"
																stroke-opacity="0.09999999999999999" stroke-width="3"
																transform="translate(1, 1)"></path>
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black" stroke-opacity="0.15"
																stroke-width="1" transform="translate(1, 1)"></path>
																	<path fill="rgba(249, 249, 249, .85)"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																	<text x="8" zIndex="1"
																style="font-size:12px;color:#333333;fill:#333333;"
																y="20"></text></g></svg>
													</div>
												</div>
											</div>
											<div class="tabItem TeamAnalysisGraph-TeamGoldDiff"
												style="display: none;">
												<div id="GraphTeamGoldGainDiff-4830260153"
													data-highcharts-chart="8">
													<div class="highcharts-container" id="highcharts-25"
														style="position: relative; overflow: hidden; width: 690px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
														<svg version="1.1"
															style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
															xmlns="http://www.w3.org/2000/svg" width="690"
															height="400">
																	<desc>Created with Highcharts 4.2.3</desc>
																	<defs>
																	<clipPath id="highcharts-26">
																	<rect x="0" y="0" width="641" height="337"></rect></clipPath></defs>
																	<g class="highcharts-grid" zIndex="1"></g>
																	<g class="highcharts-grid" zIndex="1">
																	<path fill="none" d="M 39 347.5 L 680 347.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 263.5 L 680 263.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 179.5 L 680 179.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 94.5 L 680 94.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 9.5 L 680 9.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path></g>
																	<g class="highcharts-axis" zIndex="2">
																	<path fill="none" d="M 65.5 347 L 65.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 91.5 347 L 91.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 118.5 347 L 118.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 145.5 347 L 145.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 172.5 347 L 172.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 198.5 347 L 198.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 225.5 347 L 225.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 252.5 347 L 252.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 278.5 347 L 278.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 305.5 347 L 305.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 332.5 347 L 332.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 359.5 347 L 359.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 385.5 347 L 385.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 412.5 347 L 412.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 439.5 347 L 439.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 465.5 347 L 465.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 492.5 347 L 492.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 519.5 347 L 519.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 545.5 347 L 545.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 572.5 347 L 572.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 599.5 347 L 599.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 626.5 347 L 626.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 652.5 347 L 652.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 679.5 347 L 679.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 38.5 347 L 38.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 39 347.5 L 680 347.5"
																stroke="#C0D0E0" stroke-width="1" zIndex="7"></path></g>
																	<g class="highcharts-axis" zIndex="2"></g>
																	<g class="highcharts-series-group" zIndex="3">
																	<g class="highcharts-series highcharts-series-0"
																zIndex="0.1" transform="translate(39,10) scale(1 1)"
																clip-path="url(#highcharts-26)">
																	<path fill="none"
																d="M 13.354166666666666 337 L 40.0625 337 L 66.77083333333333 334.009125 L 93.47916666666667 316.19025 L 120.1875 263.44975 L 146.89583333333331 290.53612499999997 L 173.60416666666666 282.700875 L 200.31249999999997 330.554875 L 227.02083333333331 296.433625 L 253.72916666666666 289.9885 L 280.4375 251.31775 L 307.1458333333333 246.38912499999998 L 333.8541666666667 217.912625 L 360.5625 230.3395 L 387.2708333333333 231.60325 L 413.9791666666667 243.945875 L 440.6875 154.388125 L 467.3958333333333 104.30149999999998 L 494.1041666666667 114.41149999999999 L 520.8125 165.256375 L 547.5208333333333 40.44 L 574.2291666666666 89.642 L 600.9374999999999 83.40749999999997 L 627.6458333333333 37.364874999999984"
																stroke="#cdd2d2" stroke-width="2" zIndex="1"
																stroke-linejoin="round" stroke-linecap="round"></path>
																	<path fill="none"
																d="M 3.354166666666666 337 L 13.354166666666666 337 L 40.0625 337 L 66.77083333333333 334.009125 L 93.47916666666667 316.19025 L 120.1875 263.44975 L 146.89583333333331 290.53612499999997 L 173.60416666666666 282.700875 L 200.31249999999997 330.554875 L 227.02083333333331 296.433625 L 253.72916666666666 289.9885 L 280.4375 251.31775 L 307.1458333333333 246.38912499999998 L 333.8541666666667 217.912625 L 360.5625 230.3395 L 387.2708333333333 231.60325 L 413.9791666666667 243.945875 L 440.6875 154.388125 L 467.3958333333333 104.30149999999998 L 494.1041666666667 114.41149999999999 L 520.8125 165.256375 L 547.5208333333333 40.44 L 574.2291666666666 89.642 L 600.9374999999999 83.40749999999997 L 627.6458333333333 37.364874999999984 L 637.6458333333333 37.364874999999984"
																stroke-linejoin="round" visibility="visible"
																stroke="rgba(192,192,192,0.0001)" stroke-width="22"
																zIndex="2" class=" highcharts-tracker" style=""></path></g>
																	<g
																class="highcharts-markers highcharts-series-0 highcharts-tracker"
																zIndex="0.1" transform="translate(39,10) scale(1 1)"
																clip-path="url(#highcharts-27)" style="">
																	<path fill="#1a78ae"
																d="M 627 33.364874999999984 C 632.328 33.364874999999984 632.328 41.364874999999984 627 41.364874999999984 C 621.672 41.364874999999984 621.672 33.364874999999984 627 33.364874999999984 Z"></path>
																	<path fill="#1a78ae"
																d="M 600 79.40749999999997 C 605.328 79.40749999999997 605.328 87.40749999999997 600 87.40749999999997 C 594.672 87.40749999999997 594.672 79.40749999999997 600 79.40749999999997 Z"></path>
																	<path fill="#1a78ae"
																d="M 574 85.642 C 579.328 85.642 579.328 93.642 574 93.642 C 568.672 93.642 568.672 85.642 574 85.642 Z"></path>
																	<path fill="#1a78ae"
																d="M 547 36.44 C 552.328 36.44 552.328 44.44 547 44.44 C 541.672 44.44 541.672 36.44 547 36.44 Z"></path>
																	<path fill="#1a78ae"
																d="M 520 161.256375 C 525.328 161.256375 525.328 169.256375 520 169.256375 C 514.672 169.256375 514.672 161.256375 520 161.256375 Z"></path>
																	<path fill="#1a78ae"
																d="M 494 110.41149999999999 C 499.328 110.41149999999999 499.328 118.41149999999999 494 118.41149999999999 C 488.672 118.41149999999999 488.672 110.41149999999999 494 110.41149999999999 Z"></path>
																	<path fill="#1a78ae"
																d="M 467 100.30149999999998 C 472.328 100.30149999999998 472.328 108.30149999999998 467 108.30149999999998 C 461.672 108.30149999999998 461.672 100.30149999999998 467 100.30149999999998 Z"></path>
																	<path fill="#1a78ae"
																d="M 440 150.388125 C 445.328 150.388125 445.328 158.388125 440 158.388125 C 434.672 158.388125 434.672 150.388125 440 150.388125 Z"></path>
																	<path fill="#1a78ae"
																d="M 413 239.945875 C 418.328 239.945875 418.328 247.945875 413 247.945875 C 407.672 247.945875 407.672 239.945875 413 239.945875 Z"></path>
																	<path fill="#1a78ae"
																d="M 387 227.60325 C 392.328 227.60325 392.328 235.60325 387 235.60325 C 381.672 235.60325 381.672 227.60325 387 227.60325 Z"></path>
																	<path fill="#1a78ae"
																d="M 360 226.3395 C 365.328 226.3395 365.328 234.3395 360 234.3395 C 354.672 234.3395 354.672 226.3395 360 226.3395 Z"></path>
																	<path fill="#1a78ae"
																d="M 333 213.912625 C 338.328 213.912625 338.328 221.912625 333 221.912625 C 327.672 221.912625 327.672 213.912625 333 213.912625 Z"></path>
																	<path fill="#1a78ae"
																d="M 307 242.38912499999998 C 312.328 242.38912499999998 312.328 250.38912499999998 307 250.38912499999998 C 301.672 250.38912499999998 301.672 242.38912499999998 307 242.38912499999998 Z"></path>
																	<path fill="#1a78ae"
																d="M 280 247.31775 C 285.328 247.31775 285.328 255.31775 280 255.31775 C 274.672 255.31775 274.672 247.31775 280 247.31775 Z"></path>
																	<path fill="#1a78ae"
																d="M 253 285.9885 C 258.328 285.9885 258.328 293.9885 253 293.9885 C 247.672 293.9885 247.672 285.9885 253 285.9885 Z"></path>
																	<path fill="#1a78ae"
																d="M 227 292.433625 C 232.328 292.433625 232.328 300.433625 227 300.433625 C 221.672 300.433625 221.672 292.433625 227 292.433625 Z"></path>
																	<path fill="#1a78ae"
																d="M 200 326.554875 C 205.328 326.554875 205.328 334.554875 200 334.554875 C 194.672 334.554875 194.672 326.554875 200 326.554875 Z"></path>
																	<path fill="#1a78ae"
																d="M 173 278.700875 C 178.328 278.700875 178.328 286.700875 173 286.700875 C 167.672 286.700875 167.672 278.700875 173 278.700875 Z"></path>
																	<path fill="#1a78ae"
																d="M 146 286.53612499999997 C 151.328 286.53612499999997 151.328 294.53612499999997 146 294.53612499999997 C 140.672 294.53612499999997 140.672 286.53612499999997 146 286.53612499999997 Z"></path>
																	<path fill="#1a78ae"
																d="M 120 259.44975 C 125.328 259.44975 125.328 267.44975 120 267.44975 C 114.672 267.44975 114.672 259.44975 120 259.44975 Z"></path>
																	<path fill="#1a78ae"
																d="M 93 312.19025 C 98.328 312.19025 98.328 320.19025 93 320.19025 C 87.672 320.19025 87.672 312.19025 93 312.19025 Z"></path>
																	<path fill="#c6443e"
																d="M 66 330.009125 C 71.328 330.009125 71.328 338.009125 66 338.009125 C 60.672 338.009125 60.672 330.009125 66 330.009125 Z"></path>
																	<path fill="#000000"
																d="M 40 333 C 45.328 333 45.328 341 40 341 C 34.672 341 34.672 333 40 333 Z"></path>
																	<path fill="#000000"
																d="M 13 333 C 18.328 333 18.328 341 13 341 C 7.672 341 7.672 333 13 333 Z"></path></g></g>
																	<g
																class="highcharts-axis-labels highcharts-xaxis-labels"
																zIndex="7">
																	<text x="54.946891531017336"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 54.946891531017336 363)"
																y="363" opacity="1">
																	<tspan>0분</tspan></text>
																	<text x="81.65522486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 81.65522486435066 363)"
																y="363" opacity="1">
																	<tspan>1분</tspan></text>
																	<text x="108.363558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 108.363558197684 363)"
																y="363" opacity="1">
																	<tspan>2분</tspan></text>
																	<text x="135.07189153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 135.07189153101734 363)"
																y="363" opacity="1">
																	<tspan>3분</tspan></text>
																	<text x="161.78022486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 161.78022486435069 363)"
																y="363" opacity="1">
																	<tspan>4분</tspan></text>
																	<text x="188.488558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 188.488558197684 363)"
																y="363" opacity="1">
																	<tspan>5분</tspan></text>
																	<text x="215.19689153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 215.19689153101734 363)"
																y="363" opacity="1">
																	<tspan>6분</tspan></text>
																	<text x="241.90522486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 241.90522486435069 363)"
																y="363" opacity="1">
																	<tspan>7분</tspan></text>
																	<text x="268.613558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 268.613558197684 363)"
																y="363" opacity="1">
																	<tspan>8분</tspan></text>
																	<text x="295.3218915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 295.3218915310173 363)"
																y="363" opacity="1">
																	<tspan>9분</tspan></text>
																	<text x="322.03022486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 322.03022486435066 363)"
																y="363" opacity="1">
																	<tspan>10분</tspan></text>
																	<text x="348.738558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 348.738558197684 363)"
																y="363" opacity="1">
																	<tspan>11분</tspan></text>
																	<text x="375.4468915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 375.4468915310173 363)"
																y="363" opacity="1">
																	<tspan>12분</tspan></text>
																	<text x="402.15522486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 402.15522486435066 363)"
																y="363" opacity="1">
																	<tspan>13분</tspan></text>
																	<text x="428.863558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 428.863558197684 363)"
																y="363" opacity="1">
																	<tspan>14분</tspan></text>
																	<text x="455.5718915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 455.5718915310173 363)"
																y="363" opacity="1">
																	<tspan>15분</tspan></text>
																	<text x="482.28022486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 482.28022486435066 363)"
																y="363" opacity="1">
																	<tspan>16분</tspan></text>
																	<text x="508.988558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 508.988558197684 363)"
																y="363" opacity="1">
																	<tspan>17분</tspan></text>
																	<text x="535.6968915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 535.6968915310173 363)"
																y="363" opacity="1">
																	<tspan>18분</tspan></text>
																	<text x="562.4052248643507"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 562.4052248643507 363)"
																y="363" opacity="1">
																	<tspan>19분</tspan></text>
																	<text x="589.1135581976839"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 589.1135581976839 363)"
																y="363" opacity="1">
																	<tspan>20분</tspan></text>
																	<text x="615.8218915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 615.8218915310173 363)"
																y="363" opacity="1">
																	<tspan>21분</tspan></text>
																	<text x="642.5302248643507"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 642.5302248643507 363)"
																y="363" opacity="1">
																	<tspan>22분</tspan></text>
																	<text x="669.2385581976839"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 669.2385581976839 363)"
																y="363" opacity="1">
																	<tspan>23분</tspan></text></g>
																	<g
																class="highcharts-axis-labels highcharts-yaxis-labels"
																zIndex="7">
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="350"
																opacity="1">0k</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="265"
																opacity="1">2k</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="181"
																opacity="1">4k</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="97"
																opacity="1">6k</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="13"
																opacity="1">8k</text></g>
																	<g class="highcharts-tooltip" zIndex="8"
																style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																transform="translate(0,-9999)">
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black"
																stroke-opacity="0.049999999999999996" stroke-width="5"
																transform="translate(1, 1)"></path>
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black"
																stroke-opacity="0.09999999999999999" stroke-width="3"
																transform="translate(1, 1)"></path>
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black" stroke-opacity="0.15"
																stroke-width="1" transform="translate(1, 1)"></path>
																	<path fill="rgba(249, 249, 249, .85)"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																	<text x="8" zIndex="1"
																style="font-size:12px;color:#333333;fill:#333333;"
																y="20"></text></g></svg>
													</div>
												</div>
											</div>
											<div class="tabItem TeamAnalysisGraph-TeamKillDiff"
												style="display: none;">
												<div id="GraphTeamChampionKillDiff-4830260153"
													data-highcharts-chart="9">
													<div class="highcharts-container" id="highcharts-29"
														style="position: relative; overflow: hidden; width: 690px; height: 400px; text-align: left; line-height: normal; z-index: 0; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);">
														<svg version="1.1"
															style="font-family: &amp; amp; amp; quot; Lucida Grande&amp;amp; amp; quot; , &amp; amp; amp; quot; Lucida Sans Unicode&amp;amp; amp; quot; , Arial , Helvetica, sans-serif; font-size: 12px;"
															xmlns="http://www.w3.org/2000/svg" width="690"
															height="400">
																	<desc>Created with Highcharts 4.2.3</desc>
																	<defs>
																	<clipPath id="highcharts-30">
																	<rect x="0" y="0" width="641" height="337"></rect></clipPath></defs>
																	<g class="highcharts-grid" zIndex="1"></g>
																	<g class="highcharts-grid" zIndex="1">
																	<path fill="none" d="M 39 347.5 L 680 347.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 291.5 L 680 291.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 235.5 L 680 235.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 179.5 L 680 179.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 122.5 L 680 122.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 66.5 L 680 66.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path>
																	<path fill="none" d="M 39 9.5 L 680 9.5"
																stroke="#D8D8D8" stroke-width="1" zIndex="1" opacity="1"></path></g>
																	<g class="highcharts-axis" zIndex="2">
																	<path fill="none" d="M 65.5 347 L 65.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 91.5 347 L 91.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 118.5 347 L 118.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 145.5 347 L 145.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 172.5 347 L 172.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 198.5 347 L 198.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 225.5 347 L 225.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 252.5 347 L 252.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 278.5 347 L 278.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 305.5 347 L 305.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 332.5 347 L 332.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 359.5 347 L 359.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 385.5 347 L 385.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 412.5 347 L 412.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 439.5 347 L 439.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 465.5 347 L 465.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 492.5 347 L 492.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 519.5 347 L 519.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 545.5 347 L 545.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 572.5 347 L 572.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 599.5 347 L 599.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 626.5 347 L 626.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 652.5 347 L 652.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 679.5 347 L 679.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 38.5 347 L 38.5 357"
																stroke="#C0D0E0" stroke-width="1" opacity="1"></path>
																	<path fill="none" d="M 39 347.5 L 680 347.5"
																stroke="#C0D0E0" stroke-width="1" zIndex="7"></path></g>
																	<g class="highcharts-axis" zIndex="2"></g>
																	<g class="highcharts-series-group" zIndex="3">
																	<g class="highcharts-series highcharts-series-0"
																zIndex="0.1" transform="translate(39,10) scale(1 1)"
																clip-path="url(#highcharts-30)">
																	<path fill="none"
																d="M 13.354166666666666 337 L 40.0625 337 L 66.77083333333333 337 L 93.47916666666667 308.9166666666667 L 120.1875 252.75 L 146.89583333333331 280.8333333333333 L 173.60416666666666 280.8333333333333 L 200.31249999999997 337 L 227.02083333333331 308.9166666666667 L 253.72916666666666 308.9166666666667 L 280.4375 280.8333333333333 L 307.1458333333333 308.9166666666667 L 333.8541666666667 280.8333333333333 L 360.5625 280.8333333333333 L 387.2708333333333 337 L 413.9791666666667 337 L 440.6875 252.75 L 467.3958333333333 224.66666666666669 L 494.1041666666667 224.66666666666669 L 520.8125 252.75 L 547.5208333333333 112.33333333333334 L 574.2291666666666 168.5 L 600.9374999999999 140.41666666666669 L 627.6458333333333 56.166666666666686"
																stroke="#cdd2d2" stroke-width="2" zIndex="1"
																stroke-linejoin="round" stroke-linecap="round"></path>
																	<path fill="none"
																d="M 3.354166666666666 337 L 13.354166666666666 337 L 40.0625 337 L 66.77083333333333 337 L 93.47916666666667 308.9166666666667 L 120.1875 252.75 L 146.89583333333331 280.8333333333333 L 173.60416666666666 280.8333333333333 L 200.31249999999997 337 L 227.02083333333331 308.9166666666667 L 253.72916666666666 308.9166666666667 L 280.4375 280.8333333333333 L 307.1458333333333 308.9166666666667 L 333.8541666666667 280.8333333333333 L 360.5625 280.8333333333333 L 387.2708333333333 337 L 413.9791666666667 337 L 440.6875 252.75 L 467.3958333333333 224.66666666666669 L 494.1041666666667 224.66666666666669 L 520.8125 252.75 L 547.5208333333333 112.33333333333334 L 574.2291666666666 168.5 L 600.9374999999999 140.41666666666669 L 627.6458333333333 56.166666666666686 L 637.6458333333333 56.166666666666686"
																stroke-linejoin="round" visibility="visible"
																stroke="rgba(192,192,192,0.0001)" stroke-width="22"
																zIndex="2" class=" highcharts-tracker" style=""></path></g>
																	<g
																class="highcharts-markers highcharts-series-0 highcharts-tracker"
																zIndex="0.1" transform="translate(39,10) scale(1 1)"
																clip-path="url(#highcharts-31)" style="">
																	<path fill="#1a78ae"
																d="M 627 52.166666666666686 C 632.328 52.166666666666686 632.328 60.166666666666686 627 60.166666666666686 C 621.672 60.166666666666686 621.672 52.166666666666686 627 52.166666666666686 Z"></path>
																	<path fill="#1a78ae"
																d="M 600 136.41666666666669 C 605.328 136.41666666666669 605.328 144.41666666666669 600 144.41666666666669 C 594.672 144.41666666666669 594.672 136.41666666666669 600 136.41666666666669 Z"></path>
																	<path fill="#1a78ae"
																d="M 574 164.5 C 579.328 164.5 579.328 172.5 574 172.5 C 568.672 172.5 568.672 164.5 574 164.5 Z"></path>
																	<path fill="#1a78ae"
																d="M 547 108.33333333333334 C 552.328 108.33333333333334 552.328 116.33333333333334 547 116.33333333333334 C 541.672 116.33333333333334 541.672 108.33333333333334 547 108.33333333333334 Z"></path>
																	<path fill="#1a78ae"
																d="M 520 248.75 C 525.328 248.75 525.328 256.75 520 256.75 C 514.672 256.75 514.672 248.75 520 248.75 Z"></path>
																	<path fill="#1a78ae"
																d="M 494 220.66666666666669 C 499.328 220.66666666666669 499.328 228.66666666666669 494 228.66666666666669 C 488.672 228.66666666666669 488.672 220.66666666666669 494 220.66666666666669 Z"></path>
																	<path fill="#1a78ae"
																d="M 467 220.66666666666669 C 472.328 220.66666666666669 472.328 228.66666666666669 467 228.66666666666669 C 461.672 228.66666666666669 461.672 220.66666666666669 467 220.66666666666669 Z"></path>
																	<path fill="#1a78ae"
																d="M 440 248.75 C 445.328 248.75 445.328 256.75 440 256.75 C 434.672 256.75 434.672 248.75 440 248.75 Z"></path>
																	<path fill="#000000"
																d="M 413 333 C 418.328 333 418.328 341 413 341 C 407.672 341 407.672 333 413 333 Z"></path>
																	<path fill="#000000"
																d="M 387 333 C 392.328 333 392.328 341 387 341 C 381.672 341 381.672 333 387 333 Z"></path>
																	<path fill="#1a78ae"
																d="M 360 276.8333333333333 C 365.328 276.8333333333333 365.328 284.8333333333333 360 284.8333333333333 C 354.672 284.8333333333333 354.672 276.8333333333333 360 276.8333333333333 Z"></path>
																	<path fill="#1a78ae"
																d="M 333 276.8333333333333 C 338.328 276.8333333333333 338.328 284.8333333333333 333 284.8333333333333 C 327.672 284.8333333333333 327.672 276.8333333333333 333 276.8333333333333 Z"></path>
																	<path fill="#1a78ae"
																d="M 307 304.9166666666667 C 312.328 304.9166666666667 312.328 312.9166666666667 307 312.9166666666667 C 301.672 312.9166666666667 301.672 304.9166666666667 307 304.9166666666667 Z"></path>
																	<path fill="#1a78ae"
																d="M 280 276.8333333333333 C 285.328 276.8333333333333 285.328 284.8333333333333 280 284.8333333333333 C 274.672 284.8333333333333 274.672 276.8333333333333 280 276.8333333333333 Z"></path>
																	<path fill="#1a78ae"
																d="M 253 304.9166666666667 C 258.328 304.9166666666667 258.328 312.9166666666667 253 312.9166666666667 C 247.672 312.9166666666667 247.672 304.9166666666667 253 304.9166666666667 Z"></path>
																	<path fill="#1a78ae"
																d="M 227 304.9166666666667 C 232.328 304.9166666666667 232.328 312.9166666666667 227 312.9166666666667 C 221.672 312.9166666666667 221.672 304.9166666666667 227 304.9166666666667 Z"></path>
																	<path fill="#000000"
																d="M 200 333 C 205.328 333 205.328 341 200 341 C 194.672 341 194.672 333 200 333 Z"></path>
																	<path fill="#1a78ae"
																d="M 173 276.8333333333333 C 178.328 276.8333333333333 178.328 284.8333333333333 173 284.8333333333333 C 167.672 284.8333333333333 167.672 276.8333333333333 173 276.8333333333333 Z"></path>
																	<path fill="#1a78ae"
																d="M 146 276.8333333333333 C 151.328 276.8333333333333 151.328 284.8333333333333 146 284.8333333333333 C 140.672 284.8333333333333 140.672 276.8333333333333 146 276.8333333333333 Z"></path>
																	<path fill="#1a78ae"
																d="M 120 248.75 C 125.328 248.75 125.328 256.75 120 256.75 C 114.672 256.75 114.672 248.75 120 248.75 Z"></path>
																	<path fill="#1a78ae"
																d="M 93 304.9166666666667 C 98.328 304.9166666666667 98.328 312.9166666666667 93 312.9166666666667 C 87.672 312.9166666666667 87.672 304.9166666666667 93 304.9166666666667 Z"></path>
																	<path fill="#000000"
																d="M 66 333 C 71.328 333 71.328 341 66 341 C 60.672 341 60.672 333 66 333 Z"></path>
																	<path fill="#000000"
																d="M 40 333 C 45.328 333 45.328 341 40 341 C 34.672 341 34.672 333 40 333 Z"></path>
																	<path fill="#000000"
																d="M 13 333 C 18.328 333 18.328 341 13 341 C 7.672 341 7.672 333 13 333 Z"></path></g></g>
																	<g
																class="highcharts-axis-labels highcharts-xaxis-labels"
																zIndex="7">
																	<text x="54.946891531017336"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 54.946891531017336 363)"
																y="363" opacity="1">
																	<tspan>0분</tspan></text>
																	<text x="81.65522486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 81.65522486435066 363)"
																y="363" opacity="1">
																	<tspan>1분</tspan></text>
																	<text x="108.363558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 108.363558197684 363)"
																y="363" opacity="1">
																	<tspan>2분</tspan></text>
																	<text x="135.07189153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 135.07189153101734 363)"
																y="363" opacity="1">
																	<tspan>3분</tspan></text>
																	<text x="161.78022486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 161.78022486435069 363)"
																y="363" opacity="1">
																	<tspan>4분</tspan></text>
																	<text x="188.488558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 188.488558197684 363)"
																y="363" opacity="1">
																	<tspan>5분</tspan></text>
																	<text x="215.19689153101734"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 215.19689153101734 363)"
																y="363" opacity="1">
																	<tspan>6분</tspan></text>
																	<text x="241.90522486435069"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 241.90522486435069 363)"
																y="363" opacity="1">
																	<tspan>7분</tspan></text>
																	<text x="268.613558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 268.613558197684 363)"
																y="363" opacity="1">
																	<tspan>8분</tspan></text>
																	<text x="295.3218915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 295.3218915310173 363)"
																y="363" opacity="1">
																	<tspan>9분</tspan></text>
																	<text x="322.03022486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 322.03022486435066 363)"
																y="363" opacity="1">
																	<tspan>10분</tspan></text>
																	<text x="348.738558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 348.738558197684 363)"
																y="363" opacity="1">
																	<tspan>11분</tspan></text>
																	<text x="375.4468915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 375.4468915310173 363)"
																y="363" opacity="1">
																	<tspan>12분</tspan></text>
																	<text x="402.15522486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 402.15522486435066 363)"
																y="363" opacity="1">
																	<tspan>13분</tspan></text>
																	<text x="428.863558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 428.863558197684 363)"
																y="363" opacity="1">
																	<tspan>14분</tspan></text>
																	<text x="455.5718915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 455.5718915310173 363)"
																y="363" opacity="1">
																	<tspan>15분</tspan></text>
																	<text x="482.28022486435066"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 482.28022486435066 363)"
																y="363" opacity="1">
																	<tspan>16분</tspan></text>
																	<text x="508.988558197684"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 508.988558197684 363)"
																y="363" opacity="1">
																	<tspan>17분</tspan></text>
																	<text x="535.6968915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 535.6968915310173 363)"
																y="363" opacity="1">
																	<tspan>18분</tspan></text>
																	<text x="562.4052248643507"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 562.4052248643507 363)"
																y="363" opacity="1">
																	<tspan>19분</tspan></text>
																	<text x="589.1135581976839"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 589.1135581976839 363)"
																y="363" opacity="1">
																	<tspan>20분</tspan></text>
																	<text x="615.8218915310173"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 615.8218915310173 363)"
																y="363" opacity="1">
																	<tspan>21분</tspan></text>
																	<text x="642.5302248643507"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 642.5302248643507 363)"
																y="363" opacity="1">
																	<tspan>22분</tspan></text>
																	<text x="669.2385581976839"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:400px;text-overflow:ellipsis;"
																text-anchor="end"
																transform="translate(0,0) rotate(-45 669.2385581976839 363)"
																y="363" opacity="1">
																	<tspan>23분</tspan></text></g>
																	<g
																class="highcharts-axis-labels highcharts-yaxis-labels"
																zIndex="7">
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="350"
																opacity="1">0</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="293"
																opacity="1">2</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="237"
																opacity="1">4</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="181"
																opacity="1">6</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="125"
																opacity="1">8</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="69"
																opacity="1">10</text>
																	<text x="24"
																style="color:#606060;cursor:default;font-size:11px;fill:#606060;width:218px;text-overflow:clip;"
																text-anchor="end" transform="translate(0,0)" y="13"
																opacity="1">12</text></g>
																	<g class="highcharts-tooltip" zIndex="8"
																style="cursor:default;padding:0;pointer-events:none;white-space:nowrap;"
																transform="translate(0,-9999)">
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black"
																stroke-opacity="0.049999999999999996" stroke-width="5"
																transform="translate(1, 1)"></path>
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black"
																stroke-opacity="0.09999999999999999" stroke-width="3"
																transform="translate(1, 1)"></path>
																	<path fill="none"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"
																isShadow="true" stroke="black" stroke-opacity="0.15"
																stroke-width="1" transform="translate(1, 1)"></path>
																	<path fill="rgba(249, 249, 249, .85)"
																d="M 3.5 0.5 L 13.5 0.5 C 16.5 0.5 16.5 0.5 16.5 3.5 L 16.5 13.5 C 16.5 16.5 16.5 16.5 13.5 16.5 L 3.5 16.5 C 0.5 16.5 0.5 16.5 0.5 13.5 L 0.5 3.5 C 0.5 0.5 0.5 0.5 3.5 0.5"></path>
																	<text x="8" zIndex="1"
																style="font-size:12px;color:#333333;fill:#333333;"
																y="20"></text></g></svg>
													</div>
												</div>
											</div>
										</div>
									</div>
								</div>
								
								<!-- 팀 분석 내부에 타임라인 부분 -->
								<div id="right_match_team_timeline"
									class="tabItem TeamAnalysis-TeamTimeLine"
									style="display: none;">
									<div class="TeamAnalysisTimeline">
										<div class="TimelineFilter">
											<div class="MatchDetailTeamLegend">
												<ul>
													<li><span>승리팀</span></li>
													<li><span>패배팀</span></li>
												</ul>
											</div>
											<ul>
												<li><label> <input type="checkbox" value="Kill"
														class="jcf-ignore"
														onchange="$.OP.GG.matches.setTimelineFilter(this);"><i></i><span>킬</span>
												</label></li>
												<li><label> <input type="checkbox"
														value="Building" class="jcf-ignore"
														onchange="$.OP.GG.matches.setTimelineFilter(this);"><i></i><span>타워</span>
												</label></li>
												<li><label> <input type="checkbox" value="Ward"
														class="jcf-ignore"
														onchange="$.OP.GG.matches.setTimelineFilter(this);"><i></i><span>와드</span>
												</label></li>
											</ul>
										</div>
										<div class="TeamAnalysisTimelineList">
											<ul>
												<li class="Result-WIN Type-Ward">
													<div class="Time">0분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">0분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">2분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">2분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
													<div class="ExtraEvent">
														<div class="Message">First Blood</div>
														<div class="Time">02:53</div>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">3분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">3분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">3분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">3분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">4분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">4분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">4분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">5분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-infernal-b.png"><span>화염의
															드래곤</span>
													</div>
													<div class="ExtraEvent">
														<div class="Message">Dragon Slain</div>
														<div class="Time">06:25</div>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">6분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">7분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">8분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">9분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">10분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-riftherald-r.png"><span>협곡의
															전령</span>
													</div>
													<div class="ExtraEvent">
														<div class="Message">Riftherald</div>
														<div class="Time">10:07</div>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">10분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">10분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">10분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">10분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">11분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">12분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/site/summoner/minion_100.png"><span>승리팀
															미니언</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
													<div class="ExtraEvent">
														<div class="Message">First Tower Destroyed</div>
														<div class="Time">13:23</div>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">13분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-cloud-r.png"><span>바람의
															드래곤</span>
													</div>
													<div class="ExtraEvent">
														<div class="Message">Dragon Slain</div>
														<div class="Time">14:11</div>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">14분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Building">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-b.png"><span>승리팀
															타워</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">15분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/site/summoner/minion_100.png"><span>승리팀
															미니언</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">16분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Building">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/site/summoner/minion_200.png"><span>패배팀
															미니언</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-b.png"><span>승리팀
															타워</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">17분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">18분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-riftherald-b.png"><span>협곡의
															전령</span>
													</div>
													<div class="ExtraEvent">
														<div class="Message">Riftherald</div>
														<div class="Time">19:10</div>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Building">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-b.png"><span>승리팀
															타워</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/site/summoner/minion_100.png"><span>승리팀
															미니언</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															억제기</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">19분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3371_YellowBlueTrinket.png"><span>망원형
															개조</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">20분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>투명
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">21분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/XinZhao.png?image=q_auto:best&amp;v=1606405946"><span>깔
															찬</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span>Unknown
															와드</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=q_auto:best&amp;v=1606405946"><span>ZED99</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Lucian.png?image=q_auto:best&amp;v=1606405946"><span>2021괴물신인</span>
													</div>
												</li>
												<li class="Result-LOSE Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Teemo.png?image=q_auto:best&amp;v=1606405946"><span>RadRoach</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Jinx.png?image=q_auto:best&amp;v=1606405946"><span>응가누</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Sylas.png?image=q_auto:best&amp;v=1606405946"><span>간디질라고</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Building">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Destroyed</b><img
															src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"><span>패배팀
															타워</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/LeeSin.png?image=q_auto:best&amp;v=1606405946"><span>EXIT없는내매력</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/2055_Jammer.png"><span>제어
															와드</span>
													</div>
												</li>
												<li class="Result-WIN Type-Kill">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Darius.png?image=q_auto:best&amp;v=1606405946"><span>엔터키뽑고함요</span><b>Killed</b><img
															src="//opgg-static.akamaized.net/images/lol/champion/Blitzcrank.png?image=q_auto:best&amp;v=1606405946"><span>진하요미</span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
												<li class="Result-WIN Type-Ward">
													<div class="Time">22분</div>
													<div class="Message">
														<img
															src="//opgg-static.akamaized.net/images/lol/champion/Seraphine.png?image=q_auto:best&amp;v=1606405946"><span>킥
															쨩</span><b>Placed</b><img
															src="//opgg-static.akamaized.net/images/items/3350_GreaterYellowTrinket.png"><span></span>
													</div>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>
	/* 팀 분석 내부 탭 마다 바뀌는 내용 스타일 */
	function teamButton() {
		event.preventDefault();
		const teamLinkTag = event.target.parentNode.parentNode.childNodes;
		const teamLinkData = event.target.parentNode.dataset.tabShowClass;
		const teamHeader = event.target.parentNode;
		/* 탭 링크마다 변하는 내용 태그가져와서 변수에 담기 */
		const analysis = document.querySelector("#right_match_team_analysis");
		const goldKill = document.querySelector("#right_match_team_goldkill");
		const timeLine = document.querySelector("#right_match_team_timeline");
		/* 가져온 태그 스타일 초기화 시키기 */
		analysis.style.display = "none";
		goldKill.style.display = "none";
		timeLine.style.display = "none";

		for(let i=1; i<6; i+=2) {
			if(teamLinkTag[i].dataset.tabShowClass === teamLinkData) {
				teamHeader.classList.add("active");
				if(teamLinkData === "TeamAnalysis-MatchAnalysis") {
					analysis.style.display = "block";
				} else if(teamLinkData === "TeamAnalysis-TeamGoldKill") {
					goldKill.style.display = "block";
				} else {
					timeLine.style.display = "block";
				}
			} else {
				teamLinkTag[i].classList.remove("active");
			}
		}
	}
</script>
<script>
	/* 종합 또는 팀 분석 선택시 바뀌는 스타일 */
	function changeTab() {
		event.preventDefault();
		const tabTag = event.target.parentNode.parentNode.childNodes;
		const tabData = event.target.parentNode.dataset.category;
		const tabDetail = document.querySelector("#totalDetail");
		const analysis = document.querySelector("#analysis");

		for (let i = 1; i < 4; i += 2) {
			if (tabTag[i].dataset.category === tabData) {
				tabTag[i].classList.add("active");
			} else {
				tabTag[i].classList.remove("active");
			}
		}

		if (tabData === "Team") {
			tabDetail.style.display = "none";
			analysis.style.display = "block";
		} else {
			tabDetail.style.display = "block";
			analysis.style.display = "none";
		}
	}

	function openButton1() {
		const detail = document.querySelector("#detail");
		const button = document.querySelector(".detail_button");
		const type = detail.style.display;

		if (type === "none") {
			detail.style.display = "block";
			button.classList.remove("Off")
			button.classList.remove("__spSite-194");
			button.classList.add("__spSite-193")
			button.classList.add("On");
		} else {
			detail.style.display = "none";
			button.classList.remove("__spSite-193");
			button.classList.remove("On");
			button.classList.add("__spSite-194");
			button.classList.add("Off");
		}
	}
</script>

<!-- 원형 차트 나타내는 자바스크립트 -->
<script>
	const ctx = document.getElementById('myChart').getContext('2d');
	Chart.plugins
			.register({
				beforeDraw : function(chart) {
					if (chart.config.options.elements.center) {
						var ctx = chart.chart.ctx;
						var centerConfig = chart.config.options.elements.center;
						var fontSize = centerConfig.fontSize || '50';
						var fontStyle = centerConfig.fontStyle || 'Arial';
						var txt = centerConfig.text;
						var color = centerConfig.color || '#555';
						var sidePadding = centerConfig.sidePadding || 20;
						var sidePaddingCalculated = (sidePadding / 100)
								* (chart.innerRadius * 2)
						ctx.font = fontSize + "px " + fontStyle;
						var stringWidth = ctx.measureText(txt).width;
						var elementWidth = (chart.innerRadius * 2)
								- sidePaddingCalculated;
						var widthRatio = elementWidth / stringWidth;
						var newFontSize = Math.floor(30 * widthRatio);
						var elementHeight = (chart.innerRadius * 0.7);
						var fontSizeToUse = Math
								.min(newFontSize, elementHeight);
						ctx.textAlign = 'center';
						ctx.textBaseline = 'middle';
						var centerX = ((chart.chartArea.left + chart.chartArea.right) / 2);
						var centerY = ((chart.chartArea.top + chart.chartArea.bottom) / 2);
						ctx.font = fontSizeToUse + "px " + fontStyle;
						ctx.fillStyle = color;
						ctx.fillText(txt, centerX, centerY);
					}
				}
			});

	const chart = new Chart(ctx, {
		// The type of chart we want to create
		type : 'doughnut',
		// The data for our dataset
		data : {
			datasets : [ {
				backgroundColor : [ "rgb(238, 90, 82)", "rgb(31, 142, 205)" ],
				data : [ 50, 100 ],
				borderWidth : 0,
			} ]
		},
		// Configuration options go here
		options : {
			cutoutPercentage : 70,
			elements : {
				center : {
					text : "70%",
				}
			}
		}
	});
	/* 주소 변경 */
	function typeChange() {
		event.preventDefault();
		const typeTag = event.target.parentNode.parentNode.childNodes;
		const data = event.target.parentNode.dataset.type;

		for (let i = 0; i < typeTag.length; i++) {
			if (i % 2 !== 1)
				continue;
			if (typeTag[i].dataset.type === data) {
				typeTag[i].classList.add("active");
			} else {
				typeTag[i].classList.remove("active");
			}
		}
	}
</script>

<%@ include file="../includes/footer.jsp"%>