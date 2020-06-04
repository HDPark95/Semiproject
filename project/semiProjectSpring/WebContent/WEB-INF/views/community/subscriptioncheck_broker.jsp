<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/subscriptoncheck_broker.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>

	<section class="projects-section bg-light" id="projects">
		<div class="container">
			<table class="table">
				<tr class="success">
					<th colspan="2"><a>기업명</a><br>회원가입을 축하드립니다!</th>
				</tr>
				<tr>
					<td colspan="2" id="welcome1">구독권을 가입하시면 보다 많은 혜택을 누리실 수 있습니다!</td>
				</tr>
				<tr>
					<td id="welcome2">가입하고 싶으시다면!<br><br><button type="button" class="btn btn-warning" onclick="location ='semi.Project?page=payment&code=2'">Subscribe</button></td>
					<td id="welcome3">아니오! 괜찮습니다!<br><br><button type="button" class="btn btn-success" onclick="location = 'semi.Project?page=index'">Go Main</button></td>
				</tr>
			</table>
		</div>
	</section>

<%@ include file="../include/footer.jsp"%>
