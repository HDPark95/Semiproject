<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="resources/css/customer_board/boardwriter.css">
<%@ include file="../include/header_menu.jsp"%>

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
							<td>문의 종류</td>
							<td><select class="form-control" id="">
									<option>배고파요</option>
									<option>집에 보내주세요</option>
									<option>월급 언제나옴?</option>
									<option>바다 가고 싶다</option>
									<option>11111111111111111111111111111111111111</option>
							</select></td>
						</tr>

						<tr>
							<td>작성자</td>
							<td><input type=text name=name size=20></td>
						</tr>

						<tr>
							<td>문의내용</td>
							<td><input type=text name=title size=60></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea name=content cols=85 rows=15 id="ir1"></textarea></td>
						</tr>

						<tr>
							<td>비밀번호</td>
							<td><input type=password name=pw size=10 maxlength=10></td>
						</tr>
					</table>
					<center>
						<button id="writeBtn" onclick="location='customer'">제출하기</button>
					</center>
				</td>
			</tr>
		</table>
	
</body>
<%@ include file="../include/footer.jsp"%>


