<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="includes/header.jsp" %>



	<div class="container">
		<div class="logo">인생.GG</div>
		<div style="margin-bottom: 20px;">
			<div class="logo_image"></div>
		</div>
		<form class="summoner-search-form">
			<input type="text" name="username" class="summoner_search_text"
				placeholder="소환사명..." autocomplete="off" />
			<button type="submit" class="summoner-search-form__button">
				<i class="__spSite __spSite-42"></i>
			</button>
		</form>
	</div>
	
<!-- footer  -->	
<%@ include file="includes/footer.jsp" %>