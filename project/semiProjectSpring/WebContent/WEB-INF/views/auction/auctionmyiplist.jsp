<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<h4 style="margin-top: 50px;margin-bottom: 50px;">입찰내역</h4>
		<c:choose>
			<c:when test="${ipll=='[]'}">
				 <span style="margin-left: 50%;">입찰 내역이 없습니다.</span>
			</c:when>
			<c:otherwise>
	<table class="table table-hover2" style="color: black;border-bottom: solid 1px black;">	
			<tr>
				<th style="text-align: center;">입찰자</th>
				<th style="text-align: center;">입찰금</th>
				<th style="text-align: center;">입찰일자</th>
			</tr>
		<c:forEach var="ipll" items="${ipll}" varStatus="idx">
			<tr>
				<td id="colchk1" scope="row" style="width: 130px;">${ipll.bid}</td>
				<td id="coltd1_2" style="width: 130px;">${ipll.ipprice}</td>
				<td style="text-align: center;">${ipll.ipdate}</td>
			</tr>
		</c:forEach>
		</table>	
		</c:otherwise>
		</c:choose>	