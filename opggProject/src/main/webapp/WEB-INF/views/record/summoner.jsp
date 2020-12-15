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
	width: 700px;
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
	width : 70px;
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
	padding-left: 23px;
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
	border-color: white;
	background-color: white;
	width: 42px;
	border: 1px solid #000;
	text-align: center;
	outline: 0;
}

.detail_button {
	background-color: white;
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
				src="//opgg-static.akamaized.net/images/profile_icons/profileIcon${gameMyInfo.proflie}.jpg?image=q_auto:best&v=1518361200" />
			<span class="summoner_level">${gameMyInfo.userLevel}</span>
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
							src="../../resources/images/${gameMyInfo.soloRank.tier}.png" />
					</div>
					<div class="tier_info_wrap">
						<div class="rank_type">솔로랭크</div>
						
						<div class="rank_tier">${gameMyInfo.soloRank.tier}
							${gameMyInfo.soloRank.rank}</div>
						<div class="tier_info">
							<span style="color: #555e5e; font-weight: bold;">${gameMyInfo.soloRank.point}
								LP</span> / <span>${gameMyInfo.soloRank.win}승</span> <span>${gameMyInfo.soloRank.loss}패</span>
							<br> <span>
						<fmt:formatNumber value="${gameMyInfo.soloRank.win/(gameMyInfo.soloRank.win+gameMyInfo.soloRank.loss)}" type="percent"/></span>
						</div>
					</div>
				</div>
				<c:choose>
					<c:when test="${empty gameMyInfo.freeRank.tier}">
						<div class="info_wrap" style="margin-top: 20px;">
							<div class="tier_wrap">
								<img class="tier_img" src="https://opgg-static.akamaized.net/images/medals/default.png" />
							</div>
							<div class="tier_info_wrap">
								<div class="rank_type">자유5:5랭크</div>
								<div class="rank_type">Unranked</div>
							</div>
						</div>
					</c:when>
					<c:otherwise>
						<div class="info_wrap">
							<div class="tier_wrap">
								<img class="tier_img" src="../../resources/images/${gameMyInfo.freeRank.tier}.png" />
							</div>
							<div class="tier_info_wrap">
								<div class="rank_type">자유랭크</div>
								<div class="rank_tier">${gameMyInfo.freeRank.tier}
									${gameMyInfo.freeRank.rank}</div>
								<div class="tier_info">
									<span style="color: #555e5e; font-weight: bold;">${gameMyInfo.freeRank.point}
										LP</span> / <span>${gameMyInfo.freeRank.win}승</span> <span>${gameMyInfo.freeRank.loss}패</span>
									<br> <span><fmt:formatNumber value="${gameMyInfo.freeRank.win/(gameMyInfo.freeRank.win+gameMyInfo.freeRank.loss)}" type="percent"/></span></span>
								</div>
							</div>
						</div>	

					</c:otherwise>
				</c:choose>
				
				<div style="widht: 100%; height: 100%; margin-top: 10px; border: 1px solid #cdd2d2; text-align: center;">
					<div style="font-size: 15px; border-bottom: 1px solid #cdd2d2; background-color: #f2f2f2;">숙련도</div>
					<div>
						<div>
							<c:forEach items="${gameMyInfo.myChampion}" var="list">
							<div style="border-top: 1px solid #cdd2d2; padding: 10px;">
								<div style="width: 46px; height: 46px; display: inline-block; border-radius: 50%; overflow: hidden; vertical-align: middle;">
									<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${list.chamEngName}.png" style="width: 46px; height: 46px;"/>
								</div>
								<div style="width: 150px; padding-left: 7px; position: relative; display: inline-block; vertical-align: middle; font-size: 13px; color: #555e5e; font-weight: bold; height: 30px;">
									<span>${list.chamName}</span> 
									<span style="display: block; font-size: 12px; font-weight: normal;">${list.chamPoint}점</span>
								</div>
								</div>
							</c:forEach>						
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
								<span style="margin: 5px;">10전 ${totalWin}승 ${10-totalWin}패</span>
								<div>
									<canvas id="myChart" height="130px"></canvas>
								</div>
							</div>
							<div class="most_champ" style="width: 100%; position: relative;">
								<div>
									<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${gameMyInfo.myChampion[0].chamEngName}.png" style="width: 34px; height: 34px; top: 13px;" />
									<div style="top: 13px;">${gameMyInfo.myChampion[0].chamName}</div>
									<div style="top: 30px; font-size: 12px;">${gameMyInfo.myChampion[0].chamPoint} 점</div>
								</div>
								<div>
									<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${gameMyInfo.myChampion[1].chamEngName}.png" style="width: 34px; height: 34px; top: 63px;" />
									<div style="top: 63px;">${gameMyInfo.myChampion[1].chamName}</div>
									<div style="top: 80px; font-size: 12px;">${gameMyInfo.myChampion[1].chamPoint} 점</div>
								</div>
								<div>
									<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${gameMyInfo.myChampion[02].chamEngName}.png" style="width: 34px; height: 34px; top: 113px;" />
									<div style="top: 113px;">${gameMyInfo.myChampion[2].chamName}</div>
									<div style="top: 130px; font-size: 12px;">${gameMyInfo.myChampion[2].chamPoint} 점</div>
								</div>
							</div>
						</div>
					</div>
				</div>

				<div class="game_list" style="margin-top: 10px;">
					<c:forEach items="${gameInfoList}" var="game" varStatus="status">
		
						<div class="game_content" style="${game.inGameMyInfo.result eq 'Fail' ? 'background-color: #e2b6b3;' : 'background-color: #a3cfec;'} ">
							<div class="game_stats">
								
									<c:choose>
										<c:when test="${game.gameType eq 'freerank'}">
											<div class="game_type">자유 5:5 랭크</div>
										</c:when>
										<c:when test="${game.gameType eq 'normal'}">
											<div class="game_type">일반</div>
										</c:when>
										<c:when test="${game.gameType eq 'random'}">
											<div class="game_type">무작위 총력전</div>
										</c:when>
										<c:otherwise>
											<div class="game_type">솔랭</div>
										</c:otherwise>
									</c:choose>
								
								<div
									style="width: 27px; margin: 5px auto; height: 2px; background-color: #99b9cf;"></div>
									<c:choose>
										<c:when test="${game.inGameMyInfo.result eq 'Fail'}">
											<div class="game_result" style="color: #c6443e;">패배</div>
										</c:when>
										<c:otherwise>
											<div class="game_result">승리</div>
										</c:otherwise>
									</c:choose>
								
							</div>
							<div class="game_setting">
								<div class="game_champ_img">
									<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${game.inGameMyInfo.champEngName}.png" style="width: 46px; height: 46px;"/>
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
										<img src="src=../../resources/images/rune/${game.inGameMyInfo.rune}.png" />
									</div>

								</div>
								<div class="champ_name">
									<span>${game.inGameMyInfo.champName}</span>
								</div>
							</div>
							<div class="game_kda" style="width: 80px;">
								<div class="kda">
									<span class="kill"><fmt:formatNumber value="${game.inGameMyInfo.kill}" pattern="#,###"/></span> / <span class="death"><fmt:formatNumber value="${game.inGameMyInfo.death}" pattern="#,###"/></span> / <span
										class="assist"><fmt:formatNumber value="${game.inGameMyInfo.assis}" pattern="#,###"/></span>
					
								</div>
								<div class="game_kda_ratio">
									<c:choose>
										<c:when test="${game.inGameMyInfo.death == 0}">
											<span class="kda_ratio">Perfect</span> 평점
										</c:when>
										<c:otherwise>
											<span class="kda_ratio"><fmt:formatNumber value="${(game.inGameMyInfo.kill+game.inGameMyInfo.assis)/game.inGameMyInfo.death}" pattern="#,###.##"/></span>:1 평점
										</c:otherwise>
									</c:choose>

								</div>
							</div>
							<div class="stats">
								<div class="level">레벨${game.inGameMyInfo.level}</div>
								<div class="cs">
									<span>${game.inGameMyInfo.cs}</span> CS
								</div>
								<div class="kill_concern">킬관여 <fmt:formatNumber value="${game.inGameMyInfo.killparti}" pattern="#,###"/>%</div>
								
								
								
								
							</div>
							<div class="game_items" style="font-size: 0;">
								<div class="item_list">
								
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item1 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item1 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item1 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item1 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item1 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item1}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
									</div>
									
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item2 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item2 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item2 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item2 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item2 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item2}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
									</div>	
									
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item3 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item3 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item3 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item3 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item3 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item3}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
									</div>	
									
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item7 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item7 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item7 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item7 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item7 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item7}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
									</div>	
										
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item5 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item5 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item5 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item5 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item5 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item5}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
									</div>	
									
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item6 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item6 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item6 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item6 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item6 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item6}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
									</div>	
									
									<div class="item">
										<c:choose>
											<c:when test="${game.inGameMyInfo.gameItem.item4 eq '0'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when >
											<c:when test="${game.inGameMyInfo.gameItem.item4 eq '7004'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item4 eq '7012'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item4 eq '7017'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:when test="${game.inGameMyInfo.gameItem.item4 eq '7015'}">
												<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
											</c:when>
											<c:otherwise>
												<img src="//opgg-static.akamaized.net/images/lol/item/${game.inGameMyInfo.gameItem.item4}.png?image=q_auto:best&v=1606405946" />
											</c:otherwise>
										</c:choose>
											
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
									<c:forEach items="${game.gameSummonerList}" var="summoner" begin="0" end="4">
									<div class="summoner_player">
											<div
												style="display: inline-block; vertical-align: middle; margin-right: 3px;">
												<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${summoner.champEngName}.png" style="width: 16px; height: 16px;"/>
											</div>
											<div class="summoner_name">
												<a href="/summoner?username=${summoner.name}">${summoner.name}</a>
											</div>
										</div>
									</c:forEach>
									
								</div>
								<div class="team">
									<c:forEach items="${game.gameSummonerList}" var="summoner" begin="5" end="9">
										<div class="summoner_player">
											<div
												style="display: inline-block; vertical-align: middle; margin-right: 3px;">
												<img src="http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${summoner.champEngName}.png" style="width: 16px; height: 16px;"/>
											</div>
											<div class="summoner_name">
												<a href="/summoner?username=${summoner.name}">${summoner.name}</a>
											</div>
										</div>
									</c:forEach>
								
								</div>
							</div>
							<div class="game_stats_button">
								<input class="detail_button __spSite __spSite-194 Off"
									type="button" onClick="openButton(${status.count})" value="열기" />
							</div>
						</div>
					<div class="GameDetail" id="detail" style="display: none;" data-value=${status.count }>
					<div class="MatchDetailLayout tabWrap _recognized">
						<div class="MatchDetailHeader">
							<ul class="tabHeaders">
								<li id="right_match_overview" class="tabHeader active"
									data-tab-show-class="MatchDetailContent-overview"
									data-category="Total"><a href="" onClick="changeTab()">종합</a></li>				
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
												<th class="HeaderCell" colspan="4">
												<spanclass="GameResult"> 
												<c:choose>
													<c:when test="${game.blueResult eq 'Fail'}">
														<div class="game_result">패배<span>(블루팀)</span></div>
													</c:when>
													<c:otherwise>
														<div class="game_result">승리<span>(블루팀)</span></div>
													</c:otherwise>
												</c:choose>
												 </th>
												<th class="HeaderCell">레벨</th>
												<th class="HeaderCell">KDA</th>
												<th class="HeaderCell">피해량</th>
												<th class="HeaderCell">와드</th>
												<th class="HeaderCell">CS</th>
												<th class="HeaderCell">아이템</th>
											</tr>
										</thead>
										
										<tbody class="Content">
										<c:forEach items="${game.gameSummonerList}" var="slist" begin="0" end="4">
											<tr class="Row first  isRequester">
												<td class="ChampionImage Cell">
													<div style="background: url('http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${slist.champEngName}.png'); background-size: 100% 100%; width: 32px; height: 32px;">
														<div class="Level" style="line-height: 60px; color: white;">18</div>
													</div>
												</td>
												<td class="SummonerSpell Cell"><img src="//opgg-static.akamaized.net/images/lol/spell/SummonerMana.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip tpd-delegation-uid-1" title=""> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell">
												<img src="src=../../resources/images/rune/${slist.rune}.png" /></td>
												<td class="SummonerName Cell">
												<a href="//www.op.gg/summoner/userName=%EC%A4%80%EC%84%9D%EC%9D%B4%ED%98%95%EB%8B%98"
													target="_blank" class="Link">${slist.name}</a></td>

												<td class="Tier Cell tip" title="무작위 총력전<br>Gold 4<br>53 LP">
												${slist.level}</td>

												<td class="KDA Cell"><span class="KDARatio green"><fmt:formatNumber value="${(slist.kill+slist.assis)/slist.death}" pattern="#,###.##"/>:1 평점</span>

													<div class="KDA">
														<span class="Kill"><fmt:formatNumber value="${slist.kill}" pattern="#,###"/></span>/<span class="Death"><fmt:formatNumber value="${slist.death}" pattern="#,###"/></span>/<span
															class="Assist"><fmt:formatNumber value="${slist.assis}" pattern="#,###"/></span> 
															<span class="CKRate tip" title="킬관여율">(<fmt:formatNumber value="${(slist.kill+slist.assis)/game.blueKill}" type="percent"/>)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: ${slist.champDamage}<br>총 피해량: ${slist.total}">
													<div class="ChampionDamage">${slist.champDamage}</div>
							
												</td>
												<td class="Ward Cell tip tpd-delegation-uid-1" title="">
													<div class="Buy">
														<span class="SightWard">${slist.vision}</span>
													</div>

												</td>
												<td class="CS Cell">
													<div class="CS">${slist.cs}</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item1 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item1 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item1 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item1 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item1 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item1}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item2 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item2 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item2 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item2 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item2 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item2}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item3 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item3 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item3 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item3 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item3 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item3}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item4 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item4 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item4 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item4 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item4 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item4}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item5 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item5 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item5 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item5 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item5 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item5}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item6 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item6 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item6 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item6 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item6 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item6}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item7 eq '7017'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item7 eq '7004'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item7 eq '7012'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item7 eq '7015'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:when test="${slist.gameItem.item7 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item7}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>

												</td>
											</tr>
											</c:forEach>
										</tbody>
									</table>
									<div class="Summary">
										<div class="Team Team-100 Result-WIN">
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-baron-b.png"
													class="Image tip" title="바론"> ${gmae.bluebaron} 
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-dragon-b.png"
													class="Image tip" title="드래곤"> ${game.bluedragone}
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-b.png"
													class="Image tip" title="타워"> ${game.blueTower}
											</div>
										</div>
										<div class="summary-graph">
											<div class="total--container">
												<div class="text graph--title">Total Kill</div>
												<div class="text graph--data graph--data__left">
												<fmt:formatNumber value="${game.blueKill}" pattern="#,###"/></div>
												<div class="graph--container">
													<div class="graph win--team" style="flex: ${game.blueKill/(game.blueKill+game.redKill)*100}"></div>
													<div class="graph lose--team" style="flex: ${game.redKill/(game.blueKill+game.redKill)*100}"></div>
												</div>
												<div class="text graph--data graph--data__right"><fmt:formatNumber value="${game.redKill}" pattern="#,###"/></div>
											</div>
											<div class="total--container">
												<div class="text graph--title">Total Gold</div>
												<div class="text graph--data graph--data__left">${game.blueGold}</div>
												<div class="graph--container">
													<div class="graph win--team" style="flex: ${game.blueGold/(game.blueGold+game.redGold)*100}"></div>
													<div class="graph lose--team" style="flex: ${game.redGold/(game.blueGold+game.redGold)*100}"></div>
												</div>
												<div class="text graph--data graph--data__right">${game.redGold}</div>
											</div>
										</div>
										<div class="Team Team-200 Result-LOSE">
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-baron-r.png"
													class="Image tip" title="바론"> ${game.redbaron}
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-dragon-r.png"
													class="Image tip" title="드래곤"> ${game.reddragone}
											</div>
											<div class="ObjectScore">
												<img
													src="//opgg-static.akamaized.net/images/site/summoner/icon-tower-r.png"
													class="Image tip" title="타워"> ${game.redTower}
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
												<th class="HeaderCell">레벨</th>
												<th class="HeaderCell">KDA</th>
												<th class="HeaderCell">피해량</th>
												<th class="HeaderCell">와드</th>
												<th class="HeaderCell">CS</th>
												<th class="HeaderCell">아이템</th>
											</tr>
										</thead>
										<tbody class="Content">
											<c:forEach items="${game.gameSummonerList}" var="slist" begin="5" end="9">
											<tr class="Row first  isRequester">
												<td class="ChampionImage Cell">
													<div style="background: url('http://ddragon.leagueoflegends.com/cdn/10.25.1/img/champion/${slist.champEngName}.png'); background-size: 100% 100%; width: 32px; height: 32px;">
														<div class="Level" style="line-height: 60px; color: white;">18</div>
													</div>
												</td>
												<td class="SummonerSpell Cell"><img src="//opgg-static.akamaized.net/images/lol/spell/SummonerMana.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip tpd-delegation-uid-1" title=""> <img
													src="//opgg-static.akamaized.net/images/lol/spell/SummonerFlash.png?image=q_auto:best&amp;v=1606405946"
													class="Image tip"></td>
												<td class="Rune Cell">
												<img src="src=../../resources/images/rune/${slist.rune}.png" /></td>
												<td class="SummonerName Cell">
												<a href="//www.op.gg/summoner/userName=%EC%A4%80%EC%84%9D%EC%9D%B4%ED%98%95%EB%8B%98"
													target="_blank" class="Link">${slist.name}</a></td>

												<td class="Tier Cell tip" title="무작위 총력전<br>Gold 4<br>53 LP">
												${slist.level}</td>

												<td class="KDA Cell"><span class="KDARatio green">3.33:1</span>

													<div class="KDA">
														<span class="Kill"><fmt:formatNumber value="${slist.kill}" pattern="#,###"/></span>/<span class="Death"><fmt:formatNumber value="${slist.death}" pattern="#,###"/></span>/<span
															class="Assist"><fmt:formatNumber value="${slist.assis}" pattern="#,###"/></span> 
															<span class="CKRate tip" title="킬관여율">(<fmt:formatNumber value="${(slist.kill+slist.assis)/game.blueKill}" type="percent"/>)</span>
													</div></td>
												<td class="Damage Cell tip"
													title="챔피언에게 가한 피해량: ${slist.champDamage}<br>총 피해량: ${slist.total}">
													<div class="ChampionDamage">${slist.champDamage}</div>
												
												</td>
												<td class="Ward Cell tip tpd-delegation-uid-1" title="">
													<div class="Buy">
														<span class="SightWard">${slist.vision}</span>
													</div>

												</td>
												<td class="CS Cell">
													<div class="CS">${slist.cs}</div>
												</td>
												<td class="Items Cell">
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item1 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item1}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item2 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item2}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item3 eq '0'} ">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item3}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item4 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item4}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item5 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item5}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item6 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item6}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>
													<div class="Item">
														<c:choose>
															<c:when test="${slist.gameItem.item7 eq '0'}">
																<img src="https://opgg-static.akamaized.net/images/pattern/opacity.1.png">
															</c:when>
															<c:otherwise>
																<img src="//opgg-static.akamaized.net/images/lol/item/${slist.gameItem.item7}.png?image=q_auto:best&v=1606405946" class="Image tip"/>
															</c:otherwise>
														</c:choose>
													</div>

												</td>
											</tr>
											</c:forEach>
											
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
					
					</c:forEach>
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

		for (let i = 1; i < 6; i += 2) {
			if (teamLinkTag[i].dataset.tabShowClass === teamLinkData) {
				teamHeader.classList.add("active");
				if (teamLinkData === "TeamAnalysis-MatchAnalysis") {
					analysis.style.display = "block";
				} else if (teamLinkData === "TeamAnalysis-TeamGoldKill") {
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
	
	function openButton(count) {
		const tabNumber = event.target.parentNode.parentNode.parentNode.childNodes;
		const arr = new Array();
		
		for(let i=3; i<tabNumber.length; i+=4) {
			arr.push(tabNumber[i]);
		}
		
		for(let i=0; i<arr.length; i++) {
			if(count == arr[i].dataset.value) {
				if(arr[i].style.display === "none") {
					arr[i].style.display = "block";
				} else if(arr[i].style.display === "block") {
					arr[i].style.display = "none";
				}
			}
		}
		
		/* const detail = document.querySelector("#detail");
		const button = document.querySelector(".detail_button");
		const type = detail.style.display;
		 */
		/* if (type === "none") {
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
		} */
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
				data : [ ${10-totalWin},${totalWin} ],
				borderWidth : 0,
			} ]
		},
		// Configuration options go here
		options : {
			cutoutPercentage : 70,
			elements : {
				center : {
					text : `${totalWin}0%`,
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