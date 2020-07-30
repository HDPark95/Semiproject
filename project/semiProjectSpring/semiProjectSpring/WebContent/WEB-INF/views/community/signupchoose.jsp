<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/signupchoose.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>



	<section class="projects-section bg-light" id="projects">
		<div class="container">
			<table class="table">
				<tr class="success">
					<th colspan="2"><a>기업명</a><br>회원가입을 환영합니다!</th>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'broker'">공인중개사이신가요?</button></td>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'lessor'">임대인이신가요?</button></td>
				</tr>
			</table>
		</div>
	</section>

<%@ include file="../include/footer.jsp"%>
	