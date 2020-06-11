<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
  			 <table id="customers">
						<tr> 
							<th colspan="5" id="management">전체 선택 , 삭제 등 들어갈 자리</th>

						</tr> 
						<tr>
							<th id="">작성일자</th>
							<th id="">카테고리</th>
							<th id="">글 제목</th>
							<th id="">추천수</th>
							<th id="">조회수</th>
						</tr>
						<c:forEach items="${list }" var="cblist" >
						<tr>
							<td>${cblist.wchgdate }</td>
							<td>${cblist.wgubun }</td>
							<td>${cblist.wtitle }</td>
							<td>${cblist.wrec }</td>
							<td>${cblist.whit }</td>
						</tr>
						
						</c:forEach>
						
					</table> 