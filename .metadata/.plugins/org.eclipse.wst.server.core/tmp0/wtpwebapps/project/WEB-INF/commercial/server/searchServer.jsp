<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%
	String code = request.getParameter("subcode");
	if (code.equals("1")) {
%>
<option>�� ����</option>
<%}else if(code.equals("2")){ %>
<option>�� ����</option>
<%
	} else if (code.equals("3")) {
%><option>������з� ����</option>
<%
	} else if (code.equals("4")) {
%><option>�����ߺз� ����</option>
<%
	} else {
%><option>�����Һз�����</option>
<%
	}
%>
<c:forEach items="${result}" var="val">
	<option>${val}</option>
</c:forEach>

