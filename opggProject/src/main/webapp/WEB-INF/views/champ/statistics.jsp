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
				<div
					class="champion-index__champion-item   champion-index__champion-item--TOP champion-index__champion-item--MID"
					data-champion-name="가렌" data-champion-key="garen"
					data-champion-name-chosung="ㄱㄹ">
					<a href="/champion/garen/statistics">
						<div class="champion-index__champion-item__image">
							<i class="__sprite __spc82 __spc82-33"></i>
						</div>
						<div class="champion-index__champion-item__name">가렌</div>
						<div class="champion-index__champion-item__positions">
							<div class="champion-index__champion-item__position">
								<span>탑</span>
							</div>
							<div class="champion-index__champion-item__position">
								<span>미드</span>
							</div>
						</div>
					</a>
				</div>
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
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/malphite/statistics/top"><i
													class="__sprite __spc32 __spc32-69"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/malphite/statistics/top">
													<div class="champion-index-table__name">말파이트</div>
													<div class="champion-index-table__position">탑</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">52.53%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">11.60%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">
												<img
												src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-1.png"
												alt="">
											</td>
										</tr>
									</tbody>

									<tbody class="tabItem champion-trend-tier-JUNGLE"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/nunu/statistics/jungle"><i
													class="__sprite __spc32 __spc32-83"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/nunu/statistics/jungle">
													<div class="champion-index-table__name">누누와 윌럼프</div>
													<div class="champion-index-table__position">정글</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">53.71%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">8.37%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">
												<img
												src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-1.png"
												alt="">
											</td>
										</tr>
									</tbody>

									<tbody class="tabItem champion-trend-tier-MID"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/anivia/statistics/mid"><i
													class="__sprite __spc32 __spc32-5"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/anivia/statistics/mid">
													<div class="champion-index-table__name">애니비아</div>
													<div class="champion-index-table__position">미드</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">52.42%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">11.98%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">
												<img
												src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-1.png"
												alt="">
											</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-tier-ADC"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/jhin/statistics/adc"><i
													class="__sprite __spc32 __spc32-46"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/jhin/statistics/adc">
													<div class="champion-index-table__name">진</div>
													<div class="champion-index-table__position">바텀</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">51.37%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">33.07%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">
												<img
												src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-1.png"
												alt="">
											</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-tier-SUPPORT"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--change champion-index-table__cell--change--stay">
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/leona/statistics/support"><i
													class="__sprite __spc32 __spc32-63"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/leona/statistics/support">
													<div class="champion-index-table__name">레오나</div>
													<div class="champion-index-table__position">서포터</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">53.10%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">12.19%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">
												<img
												src="//opgg-static.akamaized.net/images/site/champion/icon-champtier-1.png"
												alt="">
											</td>
										</tr>
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
								<tbody class="tabItem champion-trend-winratio-ALL"
									style="display: table-row-group;">
									<tr>
										<td
											class="champion-index-table__cell champion-index-table__cell--rank">1</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--image">
											<a href="/champion/olaf/statistics/all"><i
												class="__sprite __spc32 __spc32-84"></i></a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--champion">
											<a href="/champion/olaf/statistics/all">
												<div class="champion-index-table__name">올라프</div>
												<div class="champion-index-table__position">정글</div>
										</a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">54.45%</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value">6.21%</td>
									</tr>
								</tbody>
								<tbody class="tabItem champion-trend-winratio-TOP"
									style="display: none;">
									<tr>
										<td
											class="champion-index-table__cell champion-index-table__cell--rank">1</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--image">
											<a href="/champion/heimerdinger/statistics/top"><i
												class="__sprite __spc32 __spc32-38"></i></a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--champion">
											<a href="/champion/heimerdinger/statistics/top">
												<div class="champion-index-table__name">하이머딩거</div>
												<div class="champion-index-table__position">탑</div>
										</a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">53.47%</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value">0.93%</td>
									</tr>
								</tbody>
								<tbody class="tabItem champion-trend-winratio-JUNGLE"
									style="display: none;">
									<tr>
										<td
											class="champion-index-table__cell champion-index-table__cell--rank">1</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--image">
											<a href="/champion/fiddlesticks/statistics/jungle"><i
												class="__sprite __spc32 __spc32-28"></i></a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--champion">
											<a href="/champion/fiddlesticks/statistics/jungle">
												<div class="champion-index-table__name">피들스틱</div>
												<div class="champion-index-table__position">정글</div>
										</a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">55.32%</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value">2.98%</td>
									</tr>
								</tbody>
								<tbody class="tabItem champion-trend-winratio-MID"
									style="display: none;">
									<tr>
										<td
											class="champion-index-table__cell champion-index-table__cell--rank">1</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--image">
											<a href="/champion/aurelionsol/statistics/mid"><i
												class="__sprite __spc32 __spc32-9"></i></a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--champion">
											<a href="/champion/aurelionsol/statistics/mid">
												<div class="champion-index-table__name">아우렐리온 솔</div>
												<div class="champion-index-table__position">미드</div>
										</a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">54.07%</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value">0.90%</td>
									</tr>
								</tbody>
								<tbody class="tabItem champion-trend-winratio-ADC"
									style="display: none;">
									<tr>
										<td
											class="champion-index-table__cell champion-index-table__cell--rank">1</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--image">
											<a href="/champion/swain/statistics/adc"><i
												class="__sprite __spc32 __spc32-115"></i></a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--champion">
											<a href="/champion/swain/statistics/adc">
												<div class="champion-index-table__name">스웨인</div>
												<div class="champion-index-table__position">서포터</div>
										</a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">54.85%</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value">1.07%</td>
									</tr>
								</tbody>
								<tbody class="tabItem champion-trend-winratio-SUPPORT"
									style="display: none;">
									<tr>
										<td
											class="champion-index-table__cell champion-index-table__cell--rank">1</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--image">
											<a href="/champion/leona/statistics/support"><i
												class="__sprite __spc32 __spc32-63"></i></a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--champion">
											<a href="/champion/leona/statistics/support">
												<div class="champion-index-table__name">레오나</div>
												<div class="champion-index-table__position">서포터</div>
										</a>
										</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">53.10%</td>
										<td
											class="champion-index-table__cell champion-index-table__cell--value">12.19%</td>
									</tr>
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
									<tbody class="tabItem champion-trend-pickratio-ALL"
										style="display: table-row-group;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/ezreal/statistics/all"><i
													class="__sprite __spc32 __spc32-27"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/ezreal/statistics/all">
													<div class="champion-index-table__name">이즈리얼</div>
													<div class="champion-index-table__position">바텀</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">34.29%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">47.18%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-pickratio-TOP"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/camille/statistics/top"><i
													class="__sprite __spc32 __spc32-16"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/camille/statistics/top">
													<div class="champion-index-table__name">카밀</div>
													<div class="champion-index-table__position">탑</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">14.72%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">51.14%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-pickratio-JUNGLE"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/leesin/statistics/jungle"><i
													class="__sprite __spc32 __spc32-62"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/leesin/statistics/jungle">
													<div class="champion-index-table__name">리 신</div>
													<div class="champion-index-table__position">정글</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">22.73%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">48.26%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-pickratio-MID"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/anivia/statistics/mid"><i
													class="__sprite __spc32 __spc32-5"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/anivia/statistics/mid">
													<div class="champion-index-table__name">애니비아</div>
													<div class="champion-index-table__position">미드</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">11.98%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">52.42%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-pickratio-ADC"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/kaisa/statistics/adc"><i
													class="__sprite __spc32 __spc32-48"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/kaisa/statistics/adc">
													<div class="champion-index-table__name">카이사</div>
													<div class="champion-index-table__position">바텀</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">33.57%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">51.89%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-pickratio-SUPPORT"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/thresh/statistics/support"><i
													class="__sprite __spc32 __spc32-123"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/thresh/statistics/support">
													<div class="champion-index-table__name">쓰레쉬</div>
													<div class="champion-index-table__position">서포터</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">17.81%</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value">52.12%</td>
										</tr>
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
									<tbody class="tabItem champion-trend-banratio-ALL"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/samira/statistics/all"><i
													class="__sprite __spc32 __spc32-101"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/samira/statistics/all">
													<div class="champion-index-table__name">사미라</div>
													<div class="champion-index-table__position">바텀</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">71.32%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-banratio-TOP"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/malphite/statistics/top"><i
													class="__sprite __spc32 __spc32-69"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/malphite/statistics/top">
													<div class="champion-index-table__name">말파이트</div>
													<div class="champion-index-table__position">탑</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">34.89%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-banratio-JUNGLE"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/graves/statistics/jungle"><i
													class="__sprite __spc32 __spc32-36"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/graves/statistics/jungle">
													<div class="champion-index-table__name">그레이브즈</div>
													<div class="champion-index-table__position">정글</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">58.34%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-banratio-MID"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/fizz/statistics/mid"><i
													class="__sprite __spc32 __spc32-30"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/fizz/statistics/mid">
													<div class="champion-index-table__name">피즈</div>
													<div class="champion-index-table__position">미드</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">31.80%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-banratio-ADC"
										style="display: none;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/samira/statistics/adc"><i
													class="__sprite __spc32 __spc32-101"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/samira/statistics/adc">
													<div class="champion-index-table__name">사미라</div>
													<div class="champion-index-table__position">바텀</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">71.32%</td>
										</tr>
									</tbody>
									<tbody class="tabItem champion-trend-banratio-SUPPORT"
										style="display: table-row-group;">
										<tr>
											<td
												class="champion-index-table__cell champion-index-table__cell--rank">1</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--image">
												<a href="/champion/leona/statistics/support"><i
													class="__sprite __spc32 __spc32-63"></i></a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--champion">
												<a href="/champion/leona/statistics/support">
													<div class="champion-index-table__name">레오나</div>
													<div class="champion-index-table__position">서포터</div>
											</a>
											</td>
											<td
												class="champion-index-table__cell champion-index-table__cell--value champion-index-table__cell--blue">39.84%</td>
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
</div>
	
<script>
	/* 티어 승률 픽률 밴률 탭 선택 */
	const tabHeaders = document.querySelector(".tabHeaders");
	const tabItems = document.querySelector(".tabItems");
	
	tabHeaders.addEventListener("click", function() {
		const target = event.target.parentNode;
		const targetList = target.parentNode.childNodes;

		if(target.dataset.trendType !== undefined) {
			for(let i=1; i<targetList.length; i+=2) {
				tabItems.childNodes[i].style.display = "none";
			}
			
			for(let i=1; i<targetList.length; i+=2) {
				if(target.dataset.trendType === targetList[i].dataset.trendType) {
					targetList[i].classList.add("active");

					if(targetList[i].dataset.trendType === "championtier") {
						document.querySelector(".champion-trend-tier").style.display = "block";
					} else if(targetList[i].dataset.trendType === "winratio") {
						document.querySelector(".champion-trend-winratio").style.display = "block";
					} else if(targetList[i].dataset.trendType === "pickratio") {
						document.querySelector(".champion-trend-pickratio").style.display = "block";
					} else if(targetList[i].dataset.trendType === "banratio") {
						document.querySelector(".champion-trend-banratio").style.display = "block";
					}
				} else {
					targetList[i].classList.remove("active");
				}
			}
		}		
	});

	/* 티어 탭 */
	
	const tabPosition = document.querySelector(".champion-index-trend-position");
	const table = document.querySelector(".champion-index-table");
	
	tabPosition.addEventListener("click", function() {
		const target = event.target.parentNode;
		const targetList = target.parentNode.childNodes;
		
		for(let i=5; i<table.childNodes.length; i+=2) {
			table.childNodes[i].style.display = "none";
		}
		
		for(let i=1; i<targetList.length; i+=2) {
			if(target.dataset.position === targetList[i].dataset.position) {
				targetList[i].classList.add("active");
				if(target.dataset.position === "TOP") {
					document.querySelector(".champion-trend-tier-TOP").style.display = "table-row-group";
				} else if(target.dataset.position === "JUNGLE") {
					document.querySelector(".champion-trend-tier-JUNGLE").style.display = "table-row-group";
				} else if(target.dataset.position === "MID") {
					document.querySelector(".champion-trend-tier-MID").style.display = "table-row-group";
				} else if(target.dataset.position === "ADC") {
					document.querySelector(".champion-trend-tier-ADC").style.display = "table-row-group";
				} else if(target.dataset.position === "SUPPORT") {
					document.querySelector(".champion-trend-tier-SUPPORT").style.display = "table-row-group";
				}
				
			} else {
				targetList[i].classList.remove("active");
			}
		}
	});

	/* 승률 탭 */
	const winRatio = document.querySelector(".champion-trend-winratio");
	const winTable = document.querySelector(".champion-trend-winratio .champion-index-table");
	winRatio.addEventListener("click", function() {
		const target = event.target.parentNode;
		const targetList = target.parentNode.childNodes;

		if(target.dataset.position !== undefined) {
			for(let i=5; i<winTable.childNodes.length; i+=2) {
				winTable.childNodes[i].style.display = "none";
			}
			
			for(let i=1; i<targetList.length; i+=2) {
				if(target.dataset.position === targetList[i].dataset.position) {
					targetList[i].classList.add("active");
					if(target.dataset.position === "ALL") {
						document.querySelector(".champion-trend-winratio-ALL").style.display = "table-row-group";
					}
					else if(target.dataset.position === "TOP") {
						document.querySelector(".champion-trend-winratio-TOP").style.display = "table-row-group";
					} else if(target.dataset.position === "JUNGLE") {
						document.querySelector(".champion-trend-winratio-JUNGLE").style.display = "table-row-group";
					} else if(target.dataset.position === "MID") {
						document.querySelector(".champion-trend-winratio-MID").style.display = "table-row-group";
					} else if(target.dataset.position === "ADC") {
						document.querySelector(".champion-trend-winratio-ADC").style.display = "table-row-group";
					} else if(target.dataset.position === "SUPPORT") {
						document.querySelector(".champion-trend-winratio-SUPPORT").style.display = "table-row-group";
					} 
				} else {
					targetList[i].classList.remove("active");
				}
			}
		}
	});

	/* 픽퓰 탭 */
	const pickRatio = document.querySelector(".champion-trend-pickratio");
	const pickTable = document.querySelector(".champion-trend-pickratio .champion-index-table");
	
	pickRatio.addEventListener("click", function() {
		const target = event.target.parentNode;
		const targetList = target.parentNode.childNodes;

		if(target.dataset.tabShowClass !== undefined){
			for(let i=5; i<pickTable.childNodes.length; i+=2) {
				pickTable.childNodes[i].style.display = "none";
			}
			
			for(let i=1; i<targetList.length; i+=2) {
				if(target.dataset.tabShowClass === targetList[i].dataset.tabShowClass) {
					targetList[i].classList.add("active");
					if(target.dataset.tabShowClass === "champion-trend-pickratio-ALL") {
						document.querySelector(".champion-trend-pickratio-ALL").style.display = "table-row-group";
					}
					else if(target.dataset.tabShowClass === "champion-trend-pickratio-TOP") {
						document.querySelector(".champion-trend-pickratio-TOP").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-pickratio-JUNGLE") {
						document.querySelector(".champion-trend-pickratio-JUNGLE").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-pickratio-MID") {
						document.querySelector(".champion-trend-pickratio-MID").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-pickratio-ADC") {
						document.querySelector(".champion-trend-pickratio-ADC").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-pickratio-SUPPORT") {
						document.querySelector(".champion-trend-pickratio-SUPPORT").style.display = "table-row-group";
					} 
				} else {
					targetList[i].classList.remove("active");
				}
			}
		}
		
		
	});

	/* 밴률 탭 */
	const banRatio = document.querySelector(".champion-trend-banratio");
	const banTable = document.querySelector(".champion-trend-banratio .champion-index-table");
	
	banRatio.addEventListener("click", function() {
		const target = event.target.parentNode;
		const targetList = target.parentNode.childNodes;

		console.log(target.dataset.tabShowClass);

		if(target.dataset.tabShowClass) {
			for(let i=5; i<banTable.childNodes.length; i+=2) {
				banTable.childNodes[i].style.display = "none";
			}
			
			for(let i=1; i<targetList.length; i+=2) {
				if(target.dataset.tabShowClass === targetList[i].dataset.tabShowClass) {
					targetList[i].classList.add("active");
					if(target.dataset.tabShowClass === "champion-trend-banratio-ALL") {
						document.querySelector(".champion-trend-banratio-ALL").style.display = "table-row-group";
					}
					else if(target.dataset.tabShowClass === "champion-trend-banratio-TOP") {
						document.querySelector(".champion-trend-banratio-TOP").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-banratio-JUNGLE") {
						document.querySelector(".champion-trend-banratio-JUNGLE").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-banratio-MID") {
						document.querySelector(".champion-trend-banratio-MID").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-banratio-ADC") {
						document.querySelector(".champion-trend-banratio-ADC").style.display = "table-row-group";
					} else if(target.dataset.tabShowClass === "champion-trend-banratio-SUPPORT") {
						document.querySelector(".champion-trend-banratio-SUPPORT").style.display = "table-row-group";
					} 
				} else {
					targetList[i].classList.remove("active");
				}
			}
		}
	});
	
</script>


<%@ include file="../includes/footer.jsp"%>