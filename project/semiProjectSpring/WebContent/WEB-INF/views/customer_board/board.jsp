<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet" href="resources/css/customer_board/mj1.css">
<%@ include file="../include/header_menu.jsp"%>


<section class="contact-section bg-white" id="footerMenu">

	<div class="board_list_wrap">
		<div class="board_list">
			<div class="board_list_head">
				<div class="num">번호1</div>
				<div class="tit">제목</div>
				<div class="writer">글쓴이</div>    
				<div class="date">작성일</div>
				<div class="view">답변상태</div>
			</div>
			<div class="board_list_body">
				<div class="item">
					<div class="num">4</div>
					<div class="tit"><a href="customerboardDetail">질문</a></div>
					<div class="writer">채명정</div>
					<div class="date">2020-05-07</div>
					<div class="view">답변상태</div>
				</div>
				<div class="item">
					<div class="num">3</div>
					<div class="tit"><a href="customerboardDetail">질문</a></div>
					<div class="writer">채명정</div>
					<div class="date">2020-05-07</div>
					<div class="view">답변상태</div>
				</div>
				<div class="item">
					<div class="num">2</div>
					<div class="tit"><a href="customerboardDetail">질문</a></div>
					<div class="writer">채명정</div>
					<div class="date">2020-05-07</div>
					<div class="view">답변상태</div>
				</div>
				<div class="item">
					<div class="num">1</div>
					<div class="tit"><a href="customerboardDetail">질문</a></div>
					<div class="writer">채명정</div>
					<div class="date">2020-05-07</div>
					<div class="view">답변상태</div>
				</div>
			</div>
		
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
		<div class = "write">
			<button id="writeBtn" onclick="location='customerboardWriter'">글쓰기</button>
		</div>
		
	</div>

</section>


<%@ include file="../include/footer.jsp"%>

