<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	String code = request.getParameter("subcode");
	if (code.equals("1")) {
%>
<option>구 선택</option>
<%
	} else if (code.equals("2")) {
%><option>업종대분류 선택</option>
<%
	} else if (code.equals("3")) {
%><option>업종중분류 선택</option>
<%
	} else {
%><option>업종소분류선택</option>
<%
	}
%>
<c:forEach items="${result}" var="val">
	<option>${val}</option>
</c:forEach>

