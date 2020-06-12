<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="resources/css/customer_board/boardwriter.css">
<%@ include file="../include/header_menu.jsp"%>

<style>
#tabl1{margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;}
</style>


<body id="table">

		<table
			style="padding-top: 50px; align: center;  border: 0; margin-top:7rem; margin-left: 15rem;">
			<tr>
				<td height=20 align=center bgcolor=#ccc><font color=white>  
						문의내용</font></td> 
			</tr>
			<tr>
				<td bgcolor=white>
				
				
					<table class="table2">
						
						
						<tr>
							<td>문의유형</td>
							<td id="tabl1">								
							${detail.c_type}</td>
						</tr>

						<tr>
							<td>작성자</td>
							<td id="tabl1">${detail.c_writer}</td>
						</tr>

						<tr>
							<td>제목</td>
							<td id="tabl1">${detail.c_subject}</td>
						</tr>

						<tr>
							<td>답변내용</td>
							<td><textarea name=content cols=85 rows=15></textarea></td>
						</tr>
<!-- 						<tr> -->
<!-- 							<td>비밀번호</td> -->
<!-- 							<td><input type=password name=pw size=10 maxlength=10></td> -->
<!-- 						</tr> -->
						
<!-- 						<tr> -->
						
					
					</table>
					
					
						<button id="writeBtn" onclick="location='list'">돌아가기</button>
						
					<button id="writeBtn" onclick="location='ansinsert'">답변등록</button>
				</td>
			</tr>
		</table>


</body>

<%-- <%@ include file="../customer_board/comment.jsp"%> --%>
<%@ include file="../include/footer.jsp"%>


