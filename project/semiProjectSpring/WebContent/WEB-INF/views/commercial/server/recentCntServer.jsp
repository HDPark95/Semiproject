<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
	<button onclick="open_pop()" class="productdescmodal Cntcount" value="${result.atclno}">
		<table style="height:50px;">
			<tr>
				<td rowspan="2">${result.location}</td>
				<th colspan="2" rowspan="2"><img
					src="resources/images/commercial/gangdong1.jpg"
					style="width: 100%; height: 100%"></th>
			</tr>
			<tr>
			</tr>
			<tr>
				<td colspan="3">${result.atclfetrdesc}</td>
			</tr>
		</table>
	</button>
