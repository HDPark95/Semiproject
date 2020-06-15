<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<div style="display: block; text-align: center;">
<c:if test="${paging.startPage != 1 }">
<b class="paging" onclick="paging('이전')"><</b>
</c:if>
<c:forEach begin="${paging.startPage }" end="${paging.endPage }" var="p">
<c:choose>
<c:when test="${p == paging.nowPage }">
<b>${p }</b>
</c:when>
<c:when test="${p != paging.nowPage }">
<b class="paging" onclick="paging(${p})">${p }</b>
</c:when>
</c:choose>
</c:forEach>
<c:if test="${paging.endPage != paging.lastPage}">
<b class="paging" onclick="paging('이후')" >></b>
</c:if>
<input type="hidden" id="startPage" value="${paging.startPage - 1}">
<input type="hidden" id="endPage" value="${paging.endPage +1}">
<input type="hidden" id="cntPerPage" value="${paging.cntPerPage}">

</div>