<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:forEach items="${list }" var="vo">
	<button onclick="open_pop(${vo.pdnum})" class="productdescmodal Cntcount" value="${vo.pdnum}">
		<table style="height:50px;">
			<tr>
				<td rowspan="2">${vo.plocation}</td>
				<th colspan="2" rowspan="2"><img
					src="img/${vo.img }"
					style="width: 200px; height: 200px;"></th>
			</tr>
			<tr>
			</tr>
			<tr>
				<td colspan="3">${vo.atclfetrdesc}</td>
			</tr>
		</table>
	</button>

</c:forEach>