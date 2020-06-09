<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>

<c:forEach var="e" items="${list}" varStatus="i">
	<table>
		<tr>
			<td rowspan="2" style="writing-mode:tb-rl;font-size: 20pt" valign="top">${e.location}</td>
			<th colspan="2" rowspan="2" ><img
				src="resources/images/commercial/gangdong1.jpg"
				style="width: 100%; height: 100%"></th>
		</tr>
		<tr>
		</tr>
		<tr>
			<td colspan="3">${e.atclfetrdesc}</td>
		</tr>
	</table>
	<input type="hidden" value="${e }" class="listvo" name="resultlist"
		id="resultlist">
</c:forEach>

