<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/subscriptioncheck_lessor.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
<style>
.btn {

    margin-left: 35px;
}

</style>


	<section class="projects-section bg-light" id="projects">
		<div class="container">
			<table class="table">
				<tr class="success">
					<th colspan="2"><a>${vo.memberinfor.dname } 님 </a><br>구독권 연장 감사합니다.</th>
				</tr>
				<tr>
					<td colspan="2" id="welcome1">연장된 혜택을 맘껏 누리세요!</td>
				</tr>
				<tr>
					<td id="welcome2"><br><br><button type="button" class="btn btn-success" onclick="location ='index#footerMenu'">서비스이용하기</button></td>
					<td></td>

</tr> 
			</table>
		</div>
	</section>

<%@ include file="../include/footer.jsp"%>