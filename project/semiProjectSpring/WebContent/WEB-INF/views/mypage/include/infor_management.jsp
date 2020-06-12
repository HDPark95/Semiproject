<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
			
					<table id="customers">
						<tr> 
							<th colspan="5" id="management">전체 선택 , 삭제 등 들어갈 자리</th>

						</tr> 
						<tr>
							<th id="">번호</th>
							<th id="">담당 부동산</th>
							<th id="">매물정보</th>
							<th id="">지역</th>
						</tr>
						<c:forEach items="${plist }" var="pro" >
						<tr>
							<td>${pro.pdnum }</td>
							<td>${pro.rltrnm }</td>
							<td>${pro.atclfetrdesc }</td>
							<td>${pro.plocation }</td>
						</tr> 
						</c:forEach>

					</table>

				