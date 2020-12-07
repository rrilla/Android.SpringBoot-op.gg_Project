<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
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
<div class="result_container">
	<div style="text-align: center;">
		<ul class="multi_ul" style="display: flex;">
			<li>
				<div style="padding: 8px 15px 15px;">
					<div><img class="summoner_tier" src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&v=1"></div>
					<div class="summoner_name">문주완</div>
					<div class="summoner_lp">Challenger (1237 LP)</div>
					<div style="display:flex; margin: 10px 0;">
						<div class="base">
							65패
							<div class="win">
								84승
							</div>
						</div>
						<span class="ratio">56%</span>
					</div>
				</div>
					<div class="recent_match">
					<div class="recent_title">최근 플레이</div>
					<ul>
						<li>	
							<div style="display: inline-block; vertical-align: middle;">
								<img style="width: 20px; vertical-align: middle;" src="http://static.inven.co.kr/image_2011/site_image/lol/dataninfo/icon/champions/Jax_Square_0_1.jpg?v=20201112b">
							</div>
							<div class="win_or_defeat">
								<span class="kill">0</span> /
								<span class="death">3</span> /
								<span class="assist">2</span>
							</div>
						</li>
					</ul>
				</div>
			</li>
			<li>
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</li>
			<li>
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</li>
			<li>
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</li>
			<li>
				<div>1</div>
				<div>2</div>
				<div>3</div>
				<div>4</div>
			</li>
		</ul>
	</div>
</div>