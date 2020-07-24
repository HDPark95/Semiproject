<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<style>
h2{
text-align: center;
}
</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<h2>지역별 뉴스기사 : 한국경제와 매일경제</h2>
		<ul class="nav nav-tabs"></ul>
		<div id="myTabContent" class="tab-content">
			<%@ include file="../commercial/news_all.jsp" %>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>