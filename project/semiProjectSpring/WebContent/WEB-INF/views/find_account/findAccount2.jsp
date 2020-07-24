<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/signupchoose.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>



	<section class="projects-section bg-light" id="projects">
		<div class="container">
			<table class="table">
				<tr class="success">
					<th colspan="2"><a>CMJ</a><br>아이디를 입력해 주세요!</th>										
				</tr>
				<tr>
					<td colspan="2"><textarea cols="40"></textarea></td>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'choose'">회원가입</button></td>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'lessor'">비밀번호변경</button></td>
				</tr>
			</table>
		</div>
	</section>

<%@ include file="../include/footer.jsp"%>
	