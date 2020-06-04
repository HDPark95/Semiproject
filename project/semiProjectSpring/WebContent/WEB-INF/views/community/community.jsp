<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>

<section class="projects-section bg-light" id="projects">
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#all">전체</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#commercial">상가11</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#estate">부동산</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#auction">경매</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<%@ include file="../community/include/community_all.jsp" %>
			<%@ include file="../community/include/community_commercial.jsp" %>
			<%@ include file="../community/include/community_estate.jsp" %>
			<%@ include file="../community/include/community_auction.jsp" %>
		</div>
	</div>
</section>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#writeBtn1').click(function() {
			location = 'wriCom';
		});
		$('#writeBtn2').click(function() {
			location = 'wriCom';
		});
		$('#writeBtn3').click(function() {
			location = 'wriEst';
		});
		$('#writeBtn4').click(function() {
			location = 'wriAuc';
		});
	});
</script>

<%@ include file="../include/footer.jsp"%>
