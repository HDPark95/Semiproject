<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet" href="resources/css/customer_board/mj1.css">
<%@ include file="../include/header_menu.jsp"%>


<section class="contact-section bg-white" id="footerMenu">

<form action="customerboardWriter" method="get">
	<div class="board_list_wrap">
		<div class="board_list">
			<div class="board_list_head"> 
				<div class="num">번호1</div>   
				<div class="tit">제목</div>
				<div class="writer">글쓴이</div>
				<div class="date">작성일</div>
				<div class="view">답변상태</div>
			</div>
			
			<c:forEach items="${list}" var="list">
			<div class="board_list_body">
				<div class="item">
					<div class="num">${list.c_num}</div>
					<div class="tit"><a  href="Detail?c_num=${list.c_num}">${list.c_subject}</a></div>
					<div class="writer">${list.c_writer}</div>
					<div class="date">${list.c_regdate}</div>
					<div class="view">${list.c_anschk}</div>
				</div>
			</c:forEach>			
		
		</div>
		<div class = "paging">
			<a href="#" class="bt first"></a>
			<a href="#" class="bt prev"></a>
			<a href="#" class="num ">1</a>
			<a href="#" class="num ">2</a>
			<a href="#" class="num ">3</a>
			<a href="#" class="bt next"></a>
			<a href="#" class="bt last"></a>
		</div>
		<input type="submit" value="글쓰기">

<!-- 		<div class = "write"> -->
<!-- 			<button id="writeBtn" onclick="location='customerboardWriter'">글쓰기</button> -->
<!-- 		</div> -->
		
	</div>
</form>
</section>


<%@ include file="../include/footer.jsp"%>

