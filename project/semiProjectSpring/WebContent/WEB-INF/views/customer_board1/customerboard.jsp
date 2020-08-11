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
		<h2>고객센터 게시판 입니다.</h2>
		<ul class="nav nav-tabs"></ul>
		<div id="myTabContent" class="tab-content">
			<%@ include file="../customer_board1/include/customer.jsp" %>
		</div>
	</div>
</section>
<script>
	$(function() {
		$('#writeBtn1').click(function() {
			location = 'customerboardWriter';
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
	
	$(function() {
		$(".chkview").each(function(){
			if($(this).text() === '1' ){
				$(this).text("답변완료");	
			}else {
				$(this).text("답변대기");
			}	
		})
	});
	
</script>
<%@ include file="../include/footer.jsp"%>