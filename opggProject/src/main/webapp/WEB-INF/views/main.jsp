<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>
<div style="background-color: #5383e8;">
	<%@ include file="includes/alert.jsp" %>
</div>
<!-- header & alert -->

<div style="background-color: #5383e8; height: 100%;">
	<div class="container">
		<div class="logo">인생.GG</div>
		<div style="margin-bottom: 20px;">
			<div class="logo_image"></div>
		</div>
		<form class="summoner-search-form" action="/summoner" method="get">
			<input type="text" name="username" class="summoner_search_text"
				placeholder="소환사명..." autocomplete="off" />
			<button type="submit" class="summoner-search-form__button">
				<i class="__spSite __spSite-42"></i>
			</button>
		</form>
	</div>
</div>

<!-- footer  -->	
<%@ include file="includes/footer.jsp" %>