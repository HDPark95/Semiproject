	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div id="pagenum1" style="display: block; text-align: center;">
	<ul class="pagination pagination-lg">
	<c:if test="${paging.startPage != 1 }">
		<li class="page-item"> <a class="page-link active" href="product?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}"><</a></li>
	</c:if>
	<c:forEach begin="${paging.startPage }" end="${paging.endPage }"
		var="p">
		<c:choose>
			<c:when test="${p == paging.nowPage }">
				<li class="page-item"><b class="page-link">${p }</b></li>
			</c:when>
			<c:when test="${p != paging.nowPage }">
				<li class="page-item"> <a class="page-link" href="product?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p}</a></li>
			</c:when>
		</c:choose>
	</c:forEach>
	<c:if test="${paging.endPage != paging.lastPage}">
		<li class="page-item"><a class="page-link" href="product?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">></a><li class="page-item">
	</c:if>
	</ul>
</div> 