<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<style>
#Select1, #Select2 {
	margin-left: 10px;
	margin-right: 10px;
}

#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location1 {
	margin-bottom: 0;
}
tr th {
width:150px;}
</style>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<div class="form-inline form-group" id="location1">
			<h1>매물 정보</h1>
		</div>
		<table class="table table-hover" id="dataList" style="width: 1300px;">
			<thead>
				<tr>
					<th>번호</th>
					<th>매물종류</th>
					<th>거래종류</th>
					<th>가격   (만원)</th>
					<th>매물정보</th>
					<th>tagList</th>
					<th>부동산이름</th>
					<th>행정동명</th>
				</tr>
			</thead>
			<tbody id="productBody">
				<c:forEach var="listv" items="${list}">
					<tr>
						<th>${listv.pdnum}</th>
						<td>${listv.rlettpcd}</td>
						<td>${listv.tradtpcd}</td>
						<td>${listv.prc}</td>
						<td><a href="estateDetail?num=${listv.pdnum}">${listv.atclfetrdesc}</a></td>
						<td>${listv.taglist}</td>
						<td>${listv.rltrnm}</td>
						<td>${listv.plocation }</td>
					</tr>
				</c:forEach>
			</tbody>
			<tfoot>
				<tr>
					<td colspan="8" id="pageTd"><%@ include file="pageProcess.jsp"%>
					</td>
				</tr>
				<tr>
					<th colspan="8">
						<form method="post" action="product">
							<%-- <input type="hidden" name="nowPage" value="${paging.nowPage}">
							<input type="hidden" name="page" value="${paging.page}"> --%> <select id="searchType" name="searchType">
								<option value="1">내용</option>
								<option value="2">행정동명</option>
							</select>&nbsp; <input type="text" id="searchValue" name="searchValue">
							<input type="submit" class="btn-primary btn-sm" id="search" value="검색">
						</form>
					<th>
				<tr>
			</tfoot>
		</table>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>