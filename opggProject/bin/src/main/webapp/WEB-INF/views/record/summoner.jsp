<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../includes/header.jsp" %>
<%@ include file="../includes/alert.jsp" %>
<style>
/* 소환사 프로필 스타일 */
.header {
	position: relative;
	width: 1000px;
	margin: 0 auto;
	padding: 20px 0 0 0;
}
.border_img {
	background-image: url(//opgg-static.akamaized.net/images/borders2/challenger.png);
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
	background-image: url("https://opgg-static.akamaized.net/images/site/summoner/bg-levelbox.png");
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
	height: 100px;
	vertical-align: top;
	margin: 0 25px;
}
.name {
	font-size: 20px;
	font-weight: bold;
	color: #242929;
}
.rank > a {
	text-decoration: none;
	font-size: 11px;
	color: #555e5e;
}
/* 전적 갱신 버튼 스타일 */
.renewal {
	position: absolute;
	margin-top: 15px;
	left: 0;
}
.renewal > button {
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
.game_header > ul > li {
	margin: 0 10px;	
	font-size: 12px;
	line-height: 36px;
} 
.game_header > ul > .active {
	border-bottom: 2px solid #1f8ecd;
} 
.game_header > ul > .active > a {
	color: #1f8ecd;
	font-weight: bold;
} 
.game_header > ul > li > a {
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
}

</style>

<div>
	<div class="header">
		<div style="position: relative; display: inline-block;">
			<div class="border_img"></div>
			<img class="profile_img" src="//opgg-static.akamaized.net/images/profile_icons/profileIcon3478.jpg?image=q_auto:best&v=1518361200" />
			<span class="summoner_level">218</span>
		</div>
		<div class="summoner_rank">
			<span class="name">문주완</span>
			<div class="rank">
				<a href="">
					래더 랭킹 <span style="font-weight: bold; color: #059ede;">~~~~~~~</span>위 (상위 %)
				</a>
			</div>
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
						<img class="tier_img" src="//opgg-static.akamaized.net/images/medals/challenger_1.png?image=q_auto:best&v=1" />
					</div>
					<div class="tier_info_wrap">
						<div class="rank_type">솔로랭크</div>
						<div class="rank_tier">Challenger</div>
						<div class="tier_info">
							<span style="color: #555e5e; font-weight: bold;">0 LP</span> /
							<span>101승</span>
							<span>65패</span> <br>
							<span>56%</span>
						</div>
						<div>다이애나의 마법사들</div>
					</div>
				</div>
			</div>
			<div class="realContent">
				<div class="game_header">
					<ul style="display: flex; padding-left: 10px; height: 34px;">
						<li class="active" data-type="total"><a href="" onClick="typeChange()">전체</a></li>
						<li data-type="solo"><a href=""  onClick="typeChange()">솔로랭크</a></li>
						<li data-type="free"><a href="" onClick="typeChange()">자유랭크</a></li>
					</ul>
				</div>
				<div style="position: relative;">
					<div style="text-align: center; margin-top: -1px;">
						<div class="box">
							<table class="game_average">
								<tbody>
									<tr>
										<td style="width: 50%">
											<div style="padding: 10px;">20전 12승 8패</div>
										</td>
										<td style="width: 50%">
											<ul>
												<li>라이즈</li>
												<li>케일</li>
												<li>초가스</li>
											</ul>
										</td>
									</tr>
									<tr>
										<td>
											<div class="graph">
												<canvas id="myChart"  height="100"></canvas>
											</div>
										</td>
									</tr>
								</tbody>
							</table>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/chart.js@2.8.0"></script>	
<script>
	var ctx = document.getElementById('myChart').getContext('2d');
	var chart = new Chart(ctx, {
	    // The type of chart we want to create
	    type: 'doughnut',
	    // The data for our dataset
	    data: {
	        datasets: [{
	            backgroundColor: 'rgb(255, 99, 132)',
	            borderColor: 'rgb(255, 99, 132)',
	            data: [0, 10, 5, 2, 20, 30, 45]
	        }]
	    },
	
	    // Configuration options go here
	    options: {
           cutoutPercentage: 65
        }
	});
	
	function typeChange() {
		event.preventDefault();
		const typeTag = event.target.parentNode.parentNode.childNodes;
		const data = event.target.parentNode.dataset.type;
		
		for(let i=0; i<typeTag.length; i++) {
			if(i % 2 !== 1) continue;
			if(typeTag[i].dataset.type === data) {
				typeTag[i].classList.add("active");
			} else {
				typeTag[i].classList.remove("active");
			}
		}
	}
</script>

<%@ include file="../includes/footer.jsp" %>