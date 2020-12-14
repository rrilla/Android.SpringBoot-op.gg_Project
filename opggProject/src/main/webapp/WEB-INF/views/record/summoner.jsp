<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp"%>
<%@ include file="../includes/alert.jsp"%>
<link href="//opgg-static.akamaized.net/css3/sprite.css?t=1606991396" rel="stylesheet" type="text/css">
<link href="//opgg-static.akamaized.net/css3/summoner.css?t=1606991396" rel="stylesheet" type="text/css">
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

.most_champ > div img {
	position: absolute;
	width: 34px;
	height: 34px;
	left: 0;
}
.most_champ > div > div {
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
}
.game_content > div {
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
.item > img {
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
.summoner_player > div > img {
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
	width: 41px;
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
			<span class="name">${gameMyInfo.username}</span>
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
						<div class="rank_tier">${gameMyInfo.soloRank.tier} ${gameMyInfo.soloRank.rank}</div>
						<div class="tier_info">
							<span style="color: #555e5e; font-weight: bold;">${gameMyInfo.point} LP</span> / <span>${gameMyInfo.soloRank.win}승</span>
							<span>${gameMyInfo.soloRank.loss}패</span> <br> <span>56%</span>
						</div>
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
				<div style="widht: 100%; height: 100%; margin-top: 10px; border: 1px solid #cdd2d2; text-align: center;">
					<div style="font-size: 15px; border-bottom: 1px solid #cdd2d2; background-color: #f2f2f2;">숙련도</div>
					<div>
						<div style="padding: 10px;">
							<div style="width: 46px; height: 46px; display: inline-block; border-radius: 50%; overflow: hidden; vertical-align: middle;">
								<img src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_46&v=1606405946" />
							</div>
							<div style="padding-left: 7px; position:relative; display: inline-block; vertical-align: middle; font-size: 13px; color: #555e5e; font-weight: bold; height: 30px;">
								<span>제드</span>
								<span style="display: block; font-size: 12px; font-weight: normal;">1345686점</span>
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
									<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" style="top: 13px;" />
									<div style="top: 13px;">그레이브즈</div>
									<div style="top: 30px; font-size: 12px;">숙련도</div>
								</div>
								<div>
									<img src="//opgg-static.akamaized.net/images/lol/champion/Kindred.png?image=c_scale,q_auto,w_46&v=1606405946" style="top:63px;" />
									<div style="top: 63px;">킨드레드</div>
									<div style="top: 80px; font-size: 12px;">숙련도</div>
								</div>
								<div>
									<img src="//opgg-static.akamaized.net/images/lol/champion/Tristana.png?image=c_scale,q_auto,w_46&v=1606405946" style="top:113px;" />
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
							<div style="width: 27px; margin: 5px auto; height: 2px; background-color: #99b9cf;"></div>
							<div class="game_result">승리</div>
							<div>23분 0초</div>
						</div>
						<div class="game_setting">
							<div class="game_champ_img">
								<img src="//opgg-static.akamaized.net/images/lol/champion/Zed.png?image=c_scale,q_auto,w_46&v=1606405946" />
							</div>
							<div class="summoner_spell">
								<div class="spell">
									<img src="//opgg-static.akamaized.net/images/lol/spell/SummonerDot.png?image=c_scale,q_auto,w_22&v=1606405946" />
								</div>
								<div class="spell">
									<img src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=c_scale,q_auto,w_22&v=1606405946" />
								</div>
							</div>
							<div class="runes">
								<div class="rune">
									<img style="background-color: #000; border-radius: 50%;" src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=c_scale,q_auto,w_22&v=1606405946" />
								</div>
								<div class="rune">
									<img src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=c_scale,q_auto,w_22&amp;" />
								</div>
							</div>
							<div class="champ_name">
								<span>제드</span>
							</div>
						</div>
						<div class="game_kda">
							<div class="kda">
								<span class="kill">16</span> /
								<span class="death">2</span> /
								<span class="assist">8</span>
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
							<div class="kill_concern">
								킬관여 75%
							</div>
						</div>
						<div class="game_items" style="font-size: 0;">
							<div class="item_list">
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3364.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="item">
									<img src="//opgg-static.akamaized.net/images/lol/item/3067.png?image=q_auto:best&v=1606405946" />
								</div>
								<div class="trinket">
									<img src="//opgg-static.akamaized.net/images/site/summoner/icon-ward-blue.png" />
									제어 와드 <span>3</span>
								</div>
							</div>
						</div>
						<div class="game_player">
							<div class="team">
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=준석이형님">준석이형님</a>	
									</div>
								</div>		
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=부산IT교육센터">부산IT교육센터</a>	
									</div>
								</div>	
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=구울과공허충">구울과공허충</a>	
									</div>
								</div>	
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=냄세제로">냄세제로</a>	
									</div>
								</div>	
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=문주완">문주완</a>	
									</div>
								</div>			
							</div>
							<div class="team">
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=준석이형님">준석이형님</a>	
									</div>
								</div>		
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=부산IT교육센터">부산IT교육센터</a>	
									</div>
								</div>	
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=구울과공허충">구울과공허충</a>	
									</div>
								</div>	
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=냄세제로">냄세제로</a>	
									</div>
								</div>	
								<div class="summoner_player">
									<div style="display: inline-block; vertical-align: middle; margin-right: 3px;">
										<img src="//opgg-static.akamaized.net/images/lol/champion/Graves.png?image=c_scale,q_auto,w_46&v=1606405946" />
									</div>
									<div class="summoner_name">
										<a href="/summoner?username=문주완">문주완</a>	
									</div>
								</div>	
							</div>
						</div>
						<div class="game_stats_button">
							<input class="detail_button __spSite __spSite-194 Off" type="button" onClick="openButton1()" value="열기" /> 
						</div>		
					</div>
				</div>
				<div class="GameDetail" id="detail" style="display:none;">
		<div class="MatchDetailLayout tabWrap _recognized">
			<div class="MatchDetailHeader">
				<ul class="tabHeaders">
					<li id="right_match_overview" class="tabHeader active"
						data-tab-show-class="MatchDetailContent-overview"
						data-category="Total"><a href="">종합</a></li>
					<li id="right_match_team" class="tabHeader"
						data-tab-show-class="MatchDetailContent-teamAnalysis"
						data-category="Team"><a href="">팀 분석</a></li>
					<li id="right_match_build" class="tabHeader"
						data-tab-show-class="MatchDetailContent-builds"
						data-category="Build"><a href="">빌드</a></li>
					<li id="right_match_etc" class="tabHeader"
						data-tab-show-class="MatchDetailContent-gold" data-category="ETC">
						<a href="">etc</a>
					</li>
				</ul>
			</div>
			<div class="MatchDetailContent tabItems">

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
											<div class="Image __sprite __spc32 __spc32-133 tip tpd-delegation-uid-1"
											title="">벨코즈</div>
											<div class="Level">18</div>
									</a></td>
									<td class="SummonerSpell Cell"><img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerMana.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip tpd-delegation-uid-1" title=""> <img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8128.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>어둠의 수확</b><br><span>체력이 50%보다 낮은 챔피언에게 피해를 입히면 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'>적응형 피해</lol-uikit-tooltipped-keyword>를 추가로 입히고 해당 챔피언의 영혼을 수확해 어둠의 수확 효과의 피해량이 영구적으로 5만큼 증가합니다.<br><br>어둠의 수확 피해량: 20~60 (레벨에 비례) (+영혼당 피해량 5) (+추가 공격력의 0.25) (+주문력의 0.15)<br>재사용 대기시간: 45초 (처치 관여 시 1.5초로 초기화)</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>정밀</b><br><span>공격 강화 및 지속적 피해</span>">
									</td>
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
												class="Image tip"
												title="<b style='color: #00cfbc'>리안드리의 고뇌</b><br><span>전투 중 충전하여 큰 지속 피해를 입힙니다. 유지력이 강한 적에게 효과적입니다.</span><br><span><mainText><stats>주문력 <attention> 80</attention><br>마나 <attention> 600</attention><br>스킬 가속 <attention> 20</attention></stats><br><li><passive>고통:</passive> 스킬로 피해를 입히면 4초 동안 적을 불태워 매초 <magicDamage>15+주문력의 2.5%+최대 체력의 1%에 해당하는 마법 피해</magicDamage>를 입힙니다. 적은 불타는 동안 매초 <scaleMR>마법 저항력이 5%</scaleMR>씩 감소합니다. (최대 <scaleMR>15%</scaleMR> 감소)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 스킬 가속 <attention> 5</attention></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (1200)</span>"
												alt="리안드리의 고뇌">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>마법사의 신발</b><br><span>이동 속도와 마법 피해량이 증가합니다.</span><br><span><mainText><stats>마법 관통력 <attention> 18</attention><br>이동 속도 <attention> 45</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (800)</span>"
												alt="마법사의 신발">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/4637.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>악마의 포옹</b><br><span><mainText><stats>주문력 <attention> 70</attention><br>체력 <attention> 350</attention></stats><br><li><passive>아자카나의 응시:</passive> 스킬 피해를 입히면 4초 동안 적을 불태워 매초 <magicDamage>최대 체력의 1.2%에 해당하는 마법 피해</magicDamage>를 입힙니다. 대상이 챔피언일 경우 <scaleArmor>10의 방어력</scaleArmor>과 <scaleMR>마법 저항력</scaleMR>(+추가로 피해를 입은 챔피언 하나당 방어력 및 <scaleMR>마법 저항력</scaleMR> <scaleArmor>2.5</scaleArmor>)을 얻습니다. </mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3000 (815)</span>"
												alt="악마의 포옹">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3165.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>모렐로노미콘</b><br><span>마법 피해량이 증가합니다.</span><br><span><mainText><stats>주문력 <attention> 70</attention><br>체력 <attention> 250</attention></stats><br><li><passive>괴로움:</passive> 적 챔피언에게 마법 피해를 입히면 2초 동안 <status>40%의 고통스러운 상처</status> 를 남깁니다. 대상의 체력이 50% 이하라면 <status>고통스러운 상처의 효과가 60%</status>로 증가합니다.<br><br><rules><status>고통스러운 상처</status>는 치유 및 회복 효과를 감소시킵니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (450)</span>"
												alt="모렐로노미콘">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>라바돈의 죽음모자</b><br><span>주문력이 대폭 상승합니다.</span><br><span><mainText><stats>주문력 <attention> 120</attention></stats><br><li><passive>신비한 작품:</passive> 총 <scaleAP>주문력이 35%</scaleAP> 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3800 (1300)</span>"
												alt="라바돈의 죽음모자">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/1052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>증폭의 고서</b><br><span>주문력이 약간 상승합니다.</span><br><span><mainText><stats>주문력 <attention> 20</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>435 (435)</span>"
												alt="증폭의 고서">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
										</div>
									</td>
								</tr>
								<tr class="Row   ">
									<td class="ChampionImage Cell"><a
										href="/champion/fizz/statistics" target="_blank">
											<div class="Image __sprite __spc32 __spc32-30 tip" title="피즈">피즈</div>
											<div class="Level">18</div>
									</a></td>
									<td class="SummonerSpell Cell"><img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerSnowball.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>표식</b><br><span>적을 향해 직선으로 눈덩이를 던집니다. 눈덩이가 적을 맞히면 표식이 남아 절대 시야가 생기고, 표식이 붙은 대상을 향해 챔피언이 빠르게 이동할 수 있습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>감전</b><br><span>3초 동안 같은 챔피언에게 <b>개별</b> 공격 또는 스킬을 3회 적중시키면 추가 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'><font color='#48C4B7'>적응형 피해</font></lol-uikit-tooltipped-keyword>를 입힙니다.<br><br>피해량: 30~180 (+추가 공격력의 0.4, +주문력의 0.25)<br><br>재사용 대기시간: 25~20초<br><br><hr><i>'우리는 그들을 천둥군주라고 부른다. 그들의 번개를 입에 올리는 것은 재앙을 부르는 길이기 때문이다.'</i></span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>정밀</b><br><span>공격 강화 및 지속적 피해</span>">
									</td>
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
												class="Image tip"
												title="<b style='color: #00cfbc'>마법공학 로켓 벨트</b><br><span>사용시 앞으로 돌진하며 강력한 폭발을 일으키는 탄환을 발사합니다.</span><br><span><mainText><stats>주문력 <attention> 80</attention><br>체력 <attention> 250</attention><br>스킬 가속 <attention> 15</attention></stats><br><br> <active>사용 시 -</active> <active>마공학 탄환:</active> 지정 방향으로 돌진하며 부채꼴 모양으로 <magicDamage>200~300(레벨에 비례)+주문력의 15%에 해당하는 마법 피해</magicDamage>를 입히는 마법 탄환을 발사합니다. 그리고 2초 동안 적 챔피언 방향으로 이동할 때 <speed>이동 속도가 50%</speed> 상승합니다. (재사용 대기시간 40초)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 마법 관통력 <attention> 5</attention><br><br><rules>초음속 돌진으로 지형은 통과할 수 없습니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3200 (900)</span>"
												alt="마법공학 로켓 벨트">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>존야의 모래시계</b><br><span>사용하면 아무런 행동도 취할 수 없는 대신 공격도 받지 않는 무적 상태가 됩니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>방어력 <attention> 45</attention><br>스킬 가속 <attention> 10</attention></stats><br><br> <active>사용 시 -</active> <active>경직:</active> 2.5초 동안 <status>무적</status> 및 <status>대상으로 지정할 수 없는 상태</status>가 되지만, 그동안 아무런 행동도 할 수 없습니다. (재사용 대기시간 120초)</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (50)</span>"
												alt="존야의 모래시계">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title=""
												alt="라바돈의 죽음모자">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3100.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>리치베인</b><br><span>스킬 공격 다음 공격에 추가 피해가 적용됩니다.</span><br><span><mainText><stats>주문력 <attention> 80</attention><br>이동 속도 <attention> 10%</attention></stats><br><li><passive>주문 검:</passive> 스킬을 사용하고 나면 다음 기본 공격 시 <magicDamage>기본 공격력의 150%+주문력의 60%에 해당하는 마법 피해</magicDamage>를 추가로 입힙니다. (재사용 대기시간 2.5초)</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3000 (600)</span>"
												alt="리치베인">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title=""
												alt="마법사의 신발">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3135.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>공허의 지팡이</b><br><span>마법 피해량이 증가합니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>마법 관통력 <attention> 40%</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (400)</span>"
												alt="공허의 지팡이">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
										</div>
									</td>
								</tr>
								<tr class="Row   ">
									<td class="ChampionImage Cell"><a href="/champion/karma/statistics" target="_blank">
											<div class="Image __sprite __spc32 __spc32-50 tip" title="카르마">카르마</div>
											<div class="Level">18</div>
									</a></td>
									<td class="SummonerSpell Cell"><img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerMana.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>총명</b><br><span>최대 마나량의 50%를 회복합니다. 주변 아군도 최대 마나량의 25%가 회복됩니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8214.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>콩콩이 소환</b><br><span>적 챔피언을 기본 공격 또는 스킬로 공격하면 콩콩이를 보내 레벨에 따라 10~40(+<scaleAP>주문력의 0.1</scaleAP>)(+<scaleAD>추가 공격력의 0.15</scaleAD>)만큼 피해를 입힙니다.<br><br>아군에게 스킬로 강화 효과 또는 보호막을 적용하면 콩콩이를 보내 레벨에 따라 35~80(+<scaleAP>주문력의 0.25</scaleAP>)(+<scaleAD>추가 공격력의 0.4</scaleAD>)만큼 피해를 흡수하는 보호막을 씌웁니다.<br><br>콩콩이는 자신에게 돌아오기 전까지 다른 대상에게 보낼 수 없습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8400.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>결의</b><br><span>내구력 및 군중 제어</span>">
									</td>
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
												class="Image tip"
												title="<b style='color: #00cfbc'>강철의 솔라리 펜던트</b><br><span>사용하면 주변 아군을 적의 공격에서 방어해 줍니다.</span><br><span><mainText><stats>체력 <attention> 200</attention><br>스킬 가속 <attention> 20</attention><br>방어력 <attention> 30</attention><br>마법 저항력 <attention> 30</attention></stats><br><br> <active>사용 시 -</active> <active>헌신:</active> 주변 아군들에게 <shield>250~420(아군 레벨에 비례)의 피해를 흡수하는 보호막</shield>을 부여합니다. 보호막 피해 흡수량은 2.5초에 걸쳐 점차 감소합니다. (재사용 대기시간 90초) <br><li><passive>전념:</passive> 주변 아군들에게 <scaleArmor>5의 방어력</scaleArmor>과 <scaleMR>마법 저항력</scaleMR>을 부여합니다. <br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 <passive>전념</passive>으로  방어력 및  마법 저항력 <attention>2</attention> 증가<br><br><rules>레벨 비례 효과는 아군의 레벨에 따라 상승합니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2700 (400)</span>"
												alt="강철의 솔라리 펜던트">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3143.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>란두인의 예언</b><br><span>방어력이 대폭 강화됩니다. 사용하면 주변 적들이 둔화에 걸립니다.</span><br><span><mainText><stats>체력 <attention> 250</attention><br>방어력 <attention> 80</attention><br>스킬 가속 <attention> 10</attention></stats><br><br> <active>사용 시:</active> <active>억제:</active> 근처 적들을 잠깐 <status>둔화</status>하고 4초 동안 <scaleAD>공격력</scaleAD>을 10%, 치명타 피해량을 20% 감소시킵니다. (재사용 대기시간 60초)<br><li><passive>견고:</passive> 기본 공격으로 받는 피해량이 최대 체력의 0.5%까지 감소합니다. 이 수치는 피해량의 40%를 넘을 수 없습니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2700 (600)</span>"
												alt="란두인의 예언">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3111.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>헤르메스의 발걸음</b><br><span>이동 속도가 증가하고, 방해 효과의 지속시간이 줄어듭니다.</span><br><span><mainText><stats>마법 저항력 <attention> 25</attention><br>이동 속도 <attention> 45</attention><br>강인함 <attention> 30%</attention></stats><br><br><rules>강인함이 증가해 <status>기절</status>, <status>둔화</status>, <status>도발</status>, <status>공포</status>, <status>침묵</status>, <status>실명</status>, <status>변이</status> 및 <status>이동 불가</status> 효과의 지속시간이 감소합니다. <status>공중에 뜨거나</status> <status>제압</status> 당했을 때는 효과가 없습니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (350)</span>"
												alt="헤르메스의 발걸음">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6616.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>흐르는 물의 지팡이</b><br><span>체력 회복 및 보호막 스킬이 군중 제어 효과의 지속시간을 줄이고 이동 속도를 상승시킵니다.</span><br><span><mainText><stats>주문력 <attention> 60</attention><br>체력 회복 및 보호막 <attention> 10%</attention><br>기본 마나 재생 <attention> 100%</attention></stats><br><li><passive>급류:</passive> 아군의 체력을 회복시키거나 보호막을 씌우면 3초 동안 자신과 대상의 <speed>이동 속도가 15%</speed>, <scaleAP>주문력이 20~40 (아군 )</scaleAP> 증가합니다.<br><br><rules>레벨 비례 효과는 아군의 레벨에 따라 상승합니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2300 (650)</span>"
												alt="흐르는 물의 지팡이">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3065.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>정령의 형상</b><br><span>체력이 오르며 치유 효과가 커집니다.</span><br><span><mainText><stats>체력 <attention> 450</attention><br>마법 저항력 <attention> 40</attention><br>스킬 가속 <attention> 10</attention><br>기본 체력 재생 <attention> 100%</attention></stats><br><li><passive>무한한 활력:</passive> 자신이 받는 모든 체력 회복 및 보호막 효과가 25% 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2900 (850)</span>"
												alt="정령의 형상">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3504.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>불타는 향로</b><br><span>다른 유닛에게 보호막과 치유 효과를 쓰면 잠깐 동안 대상과 자신의 공격 속도가 상승합니다. 또한 이 상태에서 기본 공격이 적중하면 추가 마법 피해를 입힙니다.</span><br><span><mainText><stats>주문력 <attention> 60</attention><br>체력 회복 및 보호막 <attention> 10%</attention><br>기본 마나 재생 <attention> 100%</attention></stats><br><li><passive>축성:</passive> 아군을 치유하거나 보호막을 씌워주면 6초 동안 자신과 대상 아군의 공격 속도가 <attackSpeed>10%~30% (아군 레벨에 비례)</attackSpeed> 상승하고 <magicDamage>5~20(아군 레벨에 비례)의 마법 피해</magicDamage>(<OnHit>적중 시</OnHit> )를 입힙니다. <br><br><rules>레벨 비례 효과는 아군의 레벨에 따라 상승합니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2300 (650)</span>"
												alt="불타는 향로">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
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
										class="Image tip"
										title="<b style='color: #ffc659'>방어막</b><br><span>2초 동안 방어막으로 감싸 피해를 115~455(챔피언 레벨에 따라 변동)만큼 흡수합니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8128.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>어둠의 수확</b><br><span>체력이 50%보다 낮은 챔피언에게 피해를 입히면 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'>적응형 피해</lol-uikit-tooltipped-keyword>를 추가로 입히고 해당 챔피언의 영혼을 수확해 어둠의 수확 효과의 피해량이 영구적으로 5만큼 증가합니다.<br><br>어둠의 수확 피해량: 20~60 (레벨에 비례) (+영혼당 피해량 5) (+추가 공격력의 0.25) (+주문력의 0.15)<br>재사용 대기시간: 45초 (처치 관여 시 1.5초로 초기화)</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>정밀</b><br><span>공격 강화 및 지속적 피해</span>">
									</td>
									<td class="SummonerName Cell"><a
										href="//www.op.gg/summoner/userName=MayLeaf" target="_blank"
										class="Link">MayLeaf</a></td>

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
												class="Image tip"
												title="<b style='color: #00cfbc'>무라마나</b><br><span><mainText><stats>공격력 <attention> 35</attention><br>마나 <attention> 860</attention><br>스킬 가속 <attention> 15</attention></stats><br><li><passive>경탄:</passive> <scaleAD>공격력을 최대 마나의 2%</scaleAD>만큼 추가로 얻습니다. <li><passive>충격:</passive> 챔피언에게 스킬 또는 기본 공격(<OnHit>적중 시</OnHit> )을 가하면 <physicalDamage>(최대 마나의 4%)에 해당하는 물리 피해</physicalDamage>를 추가로 입힙니다. </mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2600 (2600)</span>"
												alt="무라마나">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6673.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>불멸의 철갑궁</b><br><span><mainText><stats>공격력 <attention> 50</attention><br>공격 속도 <attention> 15%</attention><br>치명타 확률 <attention> 20%</attention><br>생명력 흡수 <attention> 12%</attention></stats><br><li><passive>생명선:</passive> 피해를 받아 체력이 30% 이하가 될 경우 3초 동안 <shield>250~700의 피해를 흡수하는 보호막</shield>을 얻습니다. 또한 8초 동안 <lifeSteal>생명력 흡수가 15%</lifeSteal> 증가합니다. (재사용 대기시간 90초)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 공격력 <attention> 5</attention> 및 체력 <attention> 50</attention></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (600)</span>"
												alt="불멸의 철갑궁">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3140.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title="" alt="수은 장식띠">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3006.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>광전사의 군화</b><br><span>이동 속도와 공격 속도가 상승합니다.</span><br><span><mainText><stats>공격 속도 <attention> 35%</attention><br>이동 속도 <attention> 45</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (500)</span>"
												alt="광전사의 군화">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3085.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title=""
												alt="루난의 허리케인">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3031.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>무한의 대검</b><br><span>치명타 확률이 대폭 증가합니다.</span><br><span><mainText><stats>공격력 <attention> 70</attention><br>치명타 확률 <attention> 20%</attention></stats><br><li><passive>완벽:</passive> 치명타 확률 20%당 치명타 피해량이 8% 증가합니다.<br></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (625)</span>"
												alt="무한의 대검">
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
										class="Image tip"
										title="<b style='color: #ffc659'>방어막</b><br><span>2초 동안 방어막으로 감싸 피해를 115~455(챔피언 레벨에 따라 변동)만큼 흡수합니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8005.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>집중 공격</b><br><span>적 챔피언에게 연속으로 3회 기본 공격을 가하면 레벨에 따라 40 ~ 180의 추가 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'><font color='#48C4B7'>적응형 피해</font></lol-uikit-tooltipped-keyword>를 입히고 적의 약점을 노출시킵니다. 약점이 노출된 적은 6초 동안 모든 상대에게서 8 ~ 12%의 추가 피해를 받습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8100.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>지배</b><br><span>강력한 피해와 빠른 접근</span>">
									</td>
									<td class="SummonerName Cell"><a
										href="//www.op.gg/summoner/userName=Rmx+Mylips"
										target="_blank" class="Link">Rmx Mylips</a></td>

									<td class="Tier Cell tip" title="무작위 총력전<br>Bronze 1<br>34 LP">
										Bronze 1</td>

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
												class="Image tip tpd-delegation-uid-1" title=""
												alt="불멸의 철갑궁">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3071.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>칠흑의 양날 도끼</b><br><span>적 챔피언에게 물리 피해를 입히면 적의 방어력이 감소합니다.</span><br><span><mainText><stats>공격력 <attention> 40</attention><br>체력 <attention> 300</attention><br>스킬 가속 <attention> 25</attention></stats><br><li><passive>깎아내기:</passive> 챔피언에게 물리 피해를 가하면 6초 동안 <scaleArmor>방어력을 4% 감소</scaleArmor>시키는 중첩을 1회 적용합니다. (최대 <scaleArmor>방어력 24% 감소</scaleArmor>)<li><passive>도살자:</passive> <passive>깎아내기</passive> 중첩이 최대인 적에게 스킬이나 기본 공격으로 피해(<OnHit>적중 시</OnHit> )를 입히면 <physicalDamage>잃은 체력의 5%에 해당하는 물리 피해</physicalDamage>를 추가로 입힙니다. <br><br><rules>지속 피해는 40%의 <passive>도살자</passive> 피해를 입힙니다. (재사용 대기시간 0.5초)</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3300 (1050)</span>"
												alt="칠흑의 양날 도끼">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3072.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>피바라기</b><br><span>공격력 및 생명력 흡수가 증가하며, 생명력 흡수가 최대 체력 이상으로 가능해집니다.</span><br><span><mainText><stats>공격력 <attention> 55</attention><br>치명타 확률 <attention> 20%</attention><br>생명력 흡수 <attention> 20%</attention></stats><br><li><passive>영액의 보호막:</passive> 기본 공격으로 최대 체력 이상 생명력 흡수가 가능합니다. 체력 회복 초과분은 <shield>50~350(레벨에 비례)의 피해를 흡수하는 보호막</shield>으로 전환되며 25초간 피해를 주거나 입지 않으면 서서히 사라집니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (600)</span>"
												alt="피바라기">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3006.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>광전사의 군화</b><br><span>이동 속도와 공격 속도가 상승합니다.</span><br><span><mainText><stats>공격 속도 <attention> 35%</attention><br>이동 속도 <attention> 45</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (500)</span>"
												alt="광전사의 군화">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3153.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>몰락한 왕의 검</b><br><span>상대의 체력에 비례하여 피해를 입히고, 상대의 이동 속도를 훔칠 수 있습니다.</span><br><span><mainText><stats>공격력 <attention> 40</attention><br>공격 속도 <attention> 25%</attention><br>생명력 흡수 <attention> 12%</attention></stats><br><li><passive>안개의 검:</passive> 기본 공격 시 근접 챔피언의 경우 대상 현재 체력의 10% | 원거리 챔피언의 경우 6%에 해당하는 <physicalDamage>물리 피해</physicalDamage>(<OnHit>적중 시</OnHit> )를 입힙니다. <li><passive>흡수:</passive> 챔피언에게 3회 기본 공격을 가하면 <magicDamage>40~150(레벨에 비례)의 마법 피해</magicDamage>를 입히고 2초 동안 이동 속도를 25% 훔칩니다. (재사용 대기시간 20초)<br><br><rules><passive>안개의 검</passive>은 몬스터 및 미니언에게 최대 60의 피해를 입힙니다.<br>아이템 성능은 근접 챔피언의 경우 , 원거리 챔피언의 경우 로 적용됩니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3200 (425)</span>"
												alt="몰락한 왕의 검">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6694.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>세릴다의 원한</b><br><span><mainText><stats>공격력 <attention> 45</attention><br>방어구 관통력 <attention> 30%</attention><br>스킬 가속 <attention> 20</attention></stats><br><li><passive>매서운 추위:</passive> 스킬로 적에게 피해를 입히면 1초 동안 30% <status>둔화</status>시킵니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (850)</span>"
												alt="세릴다의 원한">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
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
										class="Image tip"
										title="<b style='color: #ffc659'>표식</b><br><span>적을 향해 직선으로 눈덩이를 던집니다. 눈덩이가 적을 맞히면 표식이 남아 절대 시야가 생기고, 표식이 붙은 대상을 향해 챔피언이 빠르게 이동할 수 있습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>감전</b><br><span>3초 동안 같은 챔피언에게 <b>개별</b> 공격 또는 스킬을 3회 적중시키면 추가 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'><font color='#48C4B7'>적응형 피해</font></lol-uikit-tooltipped-keyword>를 입힙니다.<br><br>피해량: 30~180 (+추가 공격력의 0.4, +주문력의 0.25)<br><br>재사용 대기시간: 25~20초<br><br><hr><i>'우리는 그들을 천둥군주라고 부른다. 그들의 번개를 입에 올리는 것은 재앙을 부르는 길이기 때문이다.'</i></span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>마법</b><br><span>스킬 및 광역 효과 강화</span>">
									</td>
									<td class="SummonerName Cell"><a
										href="//www.op.gg/summoner/userName=%EA%B3%B0%EB%8F%8C%EC%9D%B4%EB%B6%80%EC%9E%A5"
										target="_blank" class="Link">곰돌이부장</a></td>

									<td class="Tier Cell tip" title="무작위 총력전<br>Silver 2<br>100 LP">
										Silver 2</td>

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
												class="Image tip"
												title="<b style='color: #00cfbc'>요우무의 유령검</b><br><span>사용하면 이동 속도가 대폭 상승합니다.</span><br><span><mainText><stats>공격력 <attention> 60</attention><br>물리 관통력 <attention> 18</attention></stats><br><br> <active>사용 시 -</active> <active>출몰:</active> 6초 동안 <speed>이동 속도가 20%</speed> 상승하고 <status>유령</status> 상태가 됩니다. (재사용 대기시간 45초)<br><li><passive>방랑하는 칼날:</passive> 전투에서 벗어나 있을 때 <speed>이동 속도가 40</speed> 상승합니다.<br><br><rules><status>유령</status> 상태인 유닛은 다른 유닛과 충돌하지 않습니다.</rules>.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3000 (1025)</span>"
												alt="요우무의 유령검">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6694.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>세릴다의 원한</b><br><span><mainText><stats>공격력 <attention> 45</attention><br>방어구 관통력 <attention> 30%</attention><br>스킬 가속 <attention> 20</attention></stats><br><li><passive>매서운 추위:</passive> 스킬로 적에게 피해를 입히면 1초 동안 30% <status>둔화</status>시킵니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (850)</span>"
												alt="세릴다의 원한">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3111.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>헤르메스의 발걸음</b><br><span>이동 속도가 증가하고, 방해 효과의 지속시간이 줄어듭니다.</span><br><span><mainText><stats>마법 저항력 <attention> 25</attention><br>이동 속도 <attention> 45</attention><br>강인함 <attention> 30%</attention></stats><br><br><rules>강인함이 증가해 <status>기절</status>, <status>둔화</status>, <status>도발</status>, <status>공포</status>, <status>침묵</status>, <status>실명</status>, <status>변이</status> 및 <status>이동 불가</status> 효과의 지속시간이 감소합니다. <status>공중에 뜨거나</status> <status>제압</status> 당했을 때는 효과가 없습니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (350)</span>"
												alt="헤르메스의 발걸음">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6691.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>드락사르의 황혼검</b><br><span><mainText><stats>공격력 <attention> 55</attention><br>물리 관통력 <attention> 18</attention><br>스킬 가속 <attention> 20</attention></stats><br><li><passive>밤의 추적자:</passive> 챔피언에게 기본 공격 시 <physicalDamage>100+추가 공격력의 30%에 해당하는 물리 피해</physicalDamage>를 추가로 입히고 0.25초 동안 99% <status>둔화</status>시킵니다. (재사용 대기시간 15초) 피해를 입힌 챔피언이 3초 내에 처치되면 재사용 대기시간이 초기화되며 1.5초 동안 <keywordStealth>투명</keywordStealth> 상태가 됩니다.<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 스킬 가속 <attention> 5</attention><br></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3200 (1000)</span>"
												alt="드락사르의 황혼검">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3179.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>그림자 검</b><br><span>주기적으로 덫 및 와드를 감지할 수 있습니다.</span><br><span><mainText><stats>공격력 <attention> 55</attention><br>물리 관통력 <attention> 12</attention><br>스킬 가속 <attention> 15</attention></stats><br><li><passive>암전:</passive> 적 와드에 발각되면 8초간 암전을 일으켜 근처의 투명한 덫과 와드를 드러내고, 추가로 와드를 무력화시킵니다. (재사용 대기시간 45초) 모습이 드러난 덫은 기본 공격 시 즉시 파괴되며 와드는 세 배의 피해를 입습니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2800 (600)</span>"
												alt="그림자 검">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6609.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title=""
												alt="화공 펑크 사슬검">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title="" alt="포로 간식">
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
										class="Image tip"
										title="<b style='color: #ffc659'>탈진</b><br><span>적 챔피언을 지치게 만들어 3초 동안 이동 속도를 30% 느리게 하고 이 동안 가하는 피해량을 40% 낮춥니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8128.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>어둠의 수확</b><br><span>체력이 50%보다 낮은 챔피언에게 피해를 입히면 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'>적응형 피해</lol-uikit-tooltipped-keyword>를 추가로 입히고 해당 챔피언의 영혼을 수확해 어둠의 수확 효과의 피해량이 영구적으로 5만큼 증가합니다.<br><br>어둠의 수확 피해량: 20~60 (레벨에 비례) (+영혼당 피해량 5) (+추가 공격력의 0.25) (+주문력의 0.15)<br>재사용 대기시간: 45초 (처치 관여 시 1.5초로 초기화)</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>마법</b><br><span>스킬 및 광역 효과 강화</span>">
									</td>
									<td class="SummonerName Cell"><a
										href="//www.op.gg/summoner/userName=%EB%8F%84%EB%8B%B7%EA%B0%80%EA%B8%B0%EB%93%9C%EB%A6%AC%EA%B3%A0%EB%8B%A4"
										target="_blank" class="Link">도닷가기드리고다</a></td>

									<td class="Tier Cell tip" title="무작위 총력전<br>Bronze 1<br>49 LP">
										Bronze 1</td>

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
												class="Image tip"
												title="<b style='color: #00cfbc'>존야의 모래시계</b><br><span>사용하면 아무런 행동도 취할 수 없는 대신 공격도 받지 않는 무적 상태가 됩니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>방어력 <attention> 45</attention><br>스킬 가속 <attention> 10</attention></stats><br><br> <active>사용 시 -</active> <active>경직:</active> 2.5초 동안 <status>무적</status> 및 <status>대상으로 지정할 수 없는 상태</status>가 되지만, 그동안 아무런 행동도 할 수 없습니다. (재사용 대기시간 120초)</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (50)</span>"
												alt="존야의 모래시계">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6653.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>리안드리의 고뇌</b><br><span>전투 중 충전하여 큰 지속 피해를 입힙니다. 유지력이 강한 적에게 효과적입니다.</span><br><span><mainText><stats>주문력 <attention> 80</attention><br>마나 <attention> 600</attention><br>스킬 가속 <attention> 20</attention></stats><br><li><passive>고통:</passive> 스킬로 피해를 입히면 4초 동안 적을 불태워 매초 <magicDamage>15+주문력의 2.5%+최대 체력의 1%에 해당하는 마법 피해</magicDamage>를 입힙니다. 적은 불타는 동안 매초 <scaleMR>마법 저항력이 5%</scaleMR>씩 감소합니다. (최대 <scaleMR>15%</scaleMR> 감소)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 스킬 가속 <attention> 5</attention></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (1200)</span>"
												alt="리안드리의 고뇌">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>마법사의 신발</b><br><span>이동 속도와 마법 피해량이 증가합니다.</span><br><span><mainText><stats>마법 관통력 <attention> 18</attention><br>이동 속도 <attention> 45</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (800)</span>"
												alt="마법사의 신발">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3165.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>모렐로노미콘</b><br><span>마법 피해량이 증가합니다.</span><br><span><mainText><stats>주문력 <attention> 70</attention><br>체력 <attention> 250</attention></stats><br><li><passive>괴로움:</passive> 적 챔피언에게 마법 피해를 입히면 2초 동안 <status>40%의 고통스러운 상처</status> 를 남깁니다. 대상의 체력이 50% 이하라면 <status>고통스러운 상처의 효과가 60%</status>로 증가합니다.<br><br><rules><status>고통스러운 상처</status>는 치유 및 회복 효과를 감소시킵니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (450)</span>"
												alt="모렐로노미콘">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>라바돈의 죽음모자</b><br><span>주문력이 대폭 상승합니다.</span><br><span><mainText><stats>주문력 <attention> 120</attention></stats><br><li><passive>신비한 작품:</passive> 총 <scaleAP>주문력이 35%</scaleAP> 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3800 (1300)</span>"
												alt="라바돈의 죽음모자">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3102.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip tpd-delegation-uid-1" title="" alt="밴시의 장막">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
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
										class="Image tip"
										title="<b style='color: #ffc659'>표식</b><br><span>적을 향해 직선으로 눈덩이를 던집니다. 눈덩이가 적을 맞히면 표식이 남아 절대 시야가 생기고, 표식이 붙은 대상을 향해 챔피언이 빠르게 이동할 수 있습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>감전</b><br><span>3초 동안 같은 챔피언에게 <b>개별</b> 공격 또는 스킬을 3회 적중시키면 추가 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'><font color='#48C4B7'>적응형 피해</font></lol-uikit-tooltipped-keyword>를 입힙니다.<br><br>피해량: 30~180 (+추가 공격력의 0.4, +주문력의 0.25)<br><br>재사용 대기시간: 25~20초<br><br><hr><i>'우리는 그들을 천둥군주라고 부른다. 그들의 번개를 입에 올리는 것은 재앙을 부르는 길이기 때문이다.'</i></span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>마법</b><br><span>스킬 및 광역 효과 강화</span>">
									</td>
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
												class="Image tip"
												title="<b style='color: #00cfbc'>공허의 지팡이</b><br><span>마법 피해량이 증가합니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>마법 관통력 <attention> 40%</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (400)</span>"
												alt="공허의 지팡이">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/4628.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>지평선의 초점</b><br><span>챔피언을 이동 불가 상태로 만들면 벼락이 떨어집니다.</span><br><span><mainText><stats>주문력 <attention> 100</attention></stats><br><li><passive>초강력 사격:</passive> 750 거리 이상에서 대상을 지정하지 않는 스킬로 챔피언에게 피해를 입히거나 <status>이동 불가</status> 상태로 만들면 대상의 <keywordStealth>위치를 드러내고</keywordStealth> 6초 동안 자신이 입히는 피해를 10% 증가시킵니다. <br><br><rules><passive>초강력 사격</passive>을 발동하는 스킬 역시 피해량이 증가합니다. 소환물이나 이동 불가 효과가 없는 덫은 이 효과를 발동시키지 않습니다. 범위 지정 스킬은 처음에만 이 효과를 발동시키고, 거리는 사용 시 위치 기준으로 계산됩니다. </rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3000 (700)</span>"
												alt="지평선의 초점">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>존야의 모래시계</b><br><span>사용하면 아무런 행동도 취할 수 없는 대신 공격도 받지 않는 무적 상태가 됩니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>방어력 <attention> 45</attention><br>스킬 가속 <attention> 10</attention></stats><br><br> <active>사용 시 -</active> <active>경직:</active> 2.5초 동안 <status>무적</status> 및 <status>대상으로 지정할 수 없는 상태</status>가 되지만, 그동안 아무런 행동도 할 수 없습니다. (재사용 대기시간 120초)</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (50)</span>"
												alt="존야의 모래시계">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3020.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>마법사의 신발</b><br><span>이동 속도와 마법 피해량이 증가합니다.</span><br><span><mainText><stats>마법 관통력 <attention> 18</attention><br>이동 속도 <attention> 45</attention></stats></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>1100 (800)</span>"
												alt="마법사의 신발">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6655.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>루덴의 폭풍</b><br><span>폭발적인 피해를 입힙니다. 유지력이 약한 적에게 효과적입니다.</span><br><span><mainText><stats>주문력 <attention> 80</attention><br>마법 관통력 <attention> 10</attention><br>마나 <attention> 600</attention><br>스킬 가속 <attention> 10</attention></stats><br><li><passive>메아리:</passive> 스킬로 피해를 입히면 대상과 주변 3명의 적에게 <magicDamage>100+주문력의 15%에 해당하는 마법 피해</magicDamage>를 추가로 입히고 2초 동안 <speed>이동 속도가 15%</speed> 상승합니다. (재사용 대기시간 10초)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 마법 관통력 <attention> 5</attention> </mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (1250)</span>"
												alt="루덴의 폭풍">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>라바돈의 죽음모자</b><br><span>주문력이 대폭 상승합니다.</span><br><span><mainText><stats>주문력 <attention> 120</attention></stats><br><li><passive>신비한 작품:</passive> 총 <scaleAP>주문력이 35%</scaleAP> 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3800 (1300)</span>"
												alt="라바돈의 죽음모자">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
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
										class="Image tip"
										title="<b style='color: #ffc659'>표식</b><br><span>적을 향해 직선으로 눈덩이를 던집니다. 눈덩이가 적을 맞히면 표식이 남아 절대 시야가 생기고, 표식이 붙은 대상을 향해 챔피언이 빠르게 이동할 수 있습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>감전</b><br><span>3초 동안 같은 챔피언에게 <b>개별</b> 공격 또는 스킬을 3회 적중시키면 추가 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'><font color='#48C4B7'>적응형 피해</font></lol-uikit-tooltipped-keyword>를 입힙니다.<br><br>피해량: 30~180 (+추가 공격력의 0.4, +주문력의 0.25)<br><br>재사용 대기시간: 25~20초<br><br><hr><i>'우리는 그들을 천둥군주라고 부른다. 그들의 번개를 입에 올리는 것은 재앙을 부르는 길이기 때문이다.'</i></span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8200.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>마법</b><br><span>스킬 및 광역 효과 강화</span>">
									</td>
									<td class="SummonerName Cell"><a
										href="//www.op.gg/summoner/userName=Larcoid" target="_blank"
										class="Link">Larcoid</a></td>

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
												class="Image tip"
												title="<b style='color: #00cfbc'>정령의 형상</b><br><span>체력이 오르며 치유 효과가 커집니다.</span><br><span><mainText><stats>체력 <attention> 450</attention><br>마법 저항력 <attention> 40</attention><br>스킬 가속 <attention> 10</attention><br>기본 체력 재생 <attention> 100%</attention></stats><br><li><passive>무한한 활력:</passive> 자신이 받는 모든 체력 회복 및 보호막 효과가 25% 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2900 (850)</span>"
												alt="정령의 형상">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3222.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>미카엘의 축복</b><br><span>사용하면 아군 챔피언 하나에게 걸린 방해 효과를 모두 제거해 줍니다.</span><br><span><mainText><stats>체력 회복 및 보호막 <attention> 20%</attention><br>마법 저항력 <attention> 50</attention><br>스킬 가속 <attention> 15</attention><br>기본 마나 재생 <attention> 100%</attention></stats><br><br> <active>사용 시 -</active> <active>정화:</active> 아군 챔피언에게 걸린 모든 군중 제어 효과(<status>공중에 띄우기</status> 및 <status>제압</status> 제외)를 제거하고 <healing>체력을 100~200 (아군 레벨에 비례)</healing> 회복합니다. (재사용 대기시간 120초)</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2300 (600)</span>"
												alt="미카엘의 축복">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6693.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>자객의 발톱</b><br><span><mainText><stats>공격력 <attention> 60</attention><br>물리 관통력 <attention> 21</attention><br>스킬 가속 <attention> 10</attention></stats><br><br> <active>사용 시 -</active> <active>모래 일격:</active> 지정한 적을 관통해 돌진하며 <physicalDamage>100+추가 공격력의 30%에 해당하는 물리 피해</physicalDamage>를 입히고 3초 동안 대상에게 입히는 피해량이 15% 증가합니다. (재사용 대기시간 60초)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 물리 관통력 <attention> 5</attention></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3200 (1000)</span>"
												alt="자객의 발톱">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6333.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>죽음의 무도</b><br><span><mainText><stats>공격력 <attention> 50</attention><br>방어력 <attention> 40</attention><br>스킬 가속 <attention> 15</attention></stats><br><li><passive>고통 무시:</passive> 자신이 받은 물리 피해의 35%(원거리 챔피언의 경우 15%)를 3초 동안 나누어 입습니다.<li><passive>반항:</passive> 챔피언 처치 관여 시 <passive>고통 무시</passive>의 지속 피해 효과가 사라지고 2초 동안 <speed>이동 속도가 30%</speed> 상승하며 <healing>최대 체력의 10%</healing>만큼 회복합니다.<br></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3100 (325)</span>"
												alt="죽음의 무도">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3053.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>스테락의 도전</b><br><span>대량의 피해를 보호막으로 막아줍니다.</span><br><span><mainText><stats>공격력 <attention> 50</attention><br>체력 <attention> 400</attention></stats><br><li><passive>피의 갈망:</passive> 챔피언에게 피해를 입히거나 받으면 중첩을 1회 얻어 6초 동안 <healing>최대 체력의 2% | 원거리 챔피언의 경우 최대 체력의 1.2%</healing>만큼 회복합니다. <li><passive>생명선:</passive> 체력이 30% 밑으로 떨어질 만큼 피해를 입으면 5초 동안 <shield>200+<passive>피의 갈망</passive> 중첩당 (최대 체력의 8% | 원거리 챔피언의 경우 4.8%)에 해당하는 피해를 흡수하는 보호막</shield>을 얻습니다. (재사용 대기시간 60초)<br><br><rules><attention>피의 갈망</attention>은 챔피언당 하나씩 최대 5회까지 중첩되며  원거리 챔피언의 경우 회복량 및 추가 보호막 흡수량이 60%로 감소합니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3100 (725)</span>"
												alt="스테락의 도전">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3814.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>밤의 끝자락</b><br><span>주기적으로 적 스킬 공격을 막아줍니다.</span><br><span><mainText><stats>공격력 <attention> 50</attention><br>물리 관통력 <attention> 10</attention><br>체력 <attention> 325</attention></stats><br><li><passive>무효화:</passive> 적의 다음 스킬을 막아 주는 주문 방어막을 생성합니다. (재사용 대기시간 40초)<br><br><rules>효과가 다시 활성화되기 전에 피해를 입으면 재사용 대기시간이 초기화됩니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2900 (1050)</span>"
												alt="밤의 끝자락">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
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
										class="Image tip"
										title="<b style='color: #ffc659'>표식</b><br><span>적을 향해 직선으로 눈덩이를 던집니다. 눈덩이가 적을 맞히면 표식이 남아 절대 시야가 생기고, 표식이 붙은 대상을 향해 챔피언이 빠르게 이동할 수 있습니다.</span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>점멸</b><br><span>커서 방향으로 챔피언이 짧은 거리를 순간이동합니다.</span>">
									</td>
									<td class="Rune Cell"><img
										src="//opgg-static.akamaized.net/images/lol/perk/8112.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>감전</b><br><span>3초 동안 같은 챔피언에게 <b>개별</b> 공격 또는 스킬을 3회 적중시키면 추가 <lol-uikit-tooltipped-keyword key='LinkTooltip_Description_AdaptiveDmg'><font color='#48C4B7'>적응형 피해</font></lol-uikit-tooltipped-keyword>를 입힙니다.<br><br>피해량: 30~180 (+추가 공격력의 0.4, +주문력의 0.25)<br><br>재사용 대기시간: 25~20초<br><br><hr><i>'우리는 그들을 천둥군주라고 부른다. 그들의 번개를 입에 올리는 것은 재앙을 부르는 길이기 때문이다.'</i></span>">
										<img
										src="//opgg-static.akamaized.net/images/lol/perkStyle/8000.png?image=q_auto:best&amp;v=1606405946"
										class="Image tip"
										title="<b style='color: #ffc659'>정밀</b><br><span>공격 강화 및 지속적 피해</span>">
									</td>
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
												class="Image tip"
												title="<b style='color: #00cfbc'>대천사의 포옹</b><br><span><mainText><stats>주문력 <attention> 60</attention><br>마나 <attention> 860</attention></stats><br><li><passive>경탄:</passive> <scaleAP>주문력을 추가 마나의 5%</scaleAP>만큼 추가로 얻습니다.<li><passive>창공:</passive> 총 <scaleMana>마나가 5%(+<scaleAP>주문력 100</scaleAP>당 2.5%)</scaleMana> 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3000 (3000)</span>"
												alt="대천사의 포옹">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3157.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>존야의 모래시계</b><br><span>사용하면 아무런 행동도 취할 수 없는 대신 공격도 받지 않는 무적 상태가 됩니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>방어력 <attention> 45</attention><br>스킬 가속 <attention> 10</attention></stats><br><br> <active>사용 시 -</active> <active>경직:</active> 2.5초 동안 <status>무적</status> 및 <status>대상으로 지정할 수 없는 상태</status>가 되지만, 그동안 아무런 행동도 할 수 없습니다. (재사용 대기시간 120초)</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (50)</span>"
												alt="존야의 모래시계">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3089.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>라바돈의 죽음모자</b><br><span>주문력이 대폭 상승합니다.</span><br><span><mainText><stats>주문력 <attention> 120</attention></stats><br><li><passive>신비한 작품:</passive> 총 <scaleAP>주문력이 35%</scaleAP> 증가합니다.</mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3800 (1300)</span>"
												alt="라바돈의 죽음모자">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/6653.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>리안드리의 고뇌</b><br><span>전투 중 충전하여 큰 지속 피해를 입힙니다. 유지력이 강한 적에게 효과적입니다.</span><br><span><mainText><stats>주문력 <attention> 80</attention><br>마나 <attention> 600</attention><br>스킬 가속 <attention> 20</attention></stats><br><li><passive>고통:</passive> 스킬로 피해를 입히면 4초 동안 적을 불태워 매초 <magicDamage>15+주문력의 2.5%+최대 체력의 1%에 해당하는 마법 피해</magicDamage>를 입힙니다. 적은 불타는 동안 매초 <scaleMR>마법 저항력이 5%</scaleMR>씩 감소합니다. (최대 <scaleMR>15%</scaleMR> 감소)<br><br><rarityMythic>신화급 기본 지속 효과:</rarityMythic> 다른 모든 <rarityLegendary>전설급</rarityLegendary> 아이템에 스킬 가속 <attention> 5</attention></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>3400 (1200)</span>"
												alt="리안드리의 고뇌">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3165.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>모렐로노미콘</b><br><span>마법 피해량이 증가합니다.</span><br><span><mainText><stats>주문력 <attention> 70</attention><br>체력 <attention> 250</attention></stats><br><li><passive>괴로움:</passive> 적 챔피언에게 마법 피해를 입히면 2초 동안 <status>40%의 고통스러운 상처</status> 를 남깁니다. 대상의 체력이 50% 이하라면 <status>고통스러운 상처의 효과가 60%</status>로 증가합니다.<br><br><rules><status>고통스러운 상처</status>는 치유 및 회복 효과를 감소시킵니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (450)</span>"
												alt="모렐로노미콘">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/3102.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>밴시의 장막</b><br><span>주기적으로 적 스킬 공격을 막아줍니다.</span><br><span><mainText><stats>주문력 <attention> 65</attention><br>마법 저항력 <attention> 45</attention><br>스킬 가속 <attention> 10</attention></stats><br><li><passive>무효화:</passive> 적의 다음 스킬을 막아 주는 주문 방어막을 생성합니다. (재사용 대기시간 40초)<br><br><rules>효과가 다시 활성화되기 전에 챔피언으로부터 피해를 입으면 재사용 대기시간이 초기화됩니다.</rules></mainText><br></span><br><span>가격:</span> <span style='color: #ffc659'>2500 (400)</span>"
												alt="밴시의 장막">
										</div>
										<div class="Item">
											<img
												src="//opgg-static.akamaized.net/images/lol/item/2052.png?image=q_auto:best&amp;v=1606405946"
												class="Image tip"
												title="<b style='color: #00cfbc'>포로 간식</b>" alt="포로 간식">
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
		</div>
	</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>
<script>
function openButton1() {
	const detail = document.querySelector("#detail");
	const button = document.querySelector(".detail_button");
	const type = detail.style.display;

	if(type === "none") {
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