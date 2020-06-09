<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="resources/css/customer_board/boardwriter.css">
<script type="text/javascript" src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<%@ include file="../include/header_menu.jsp"%>

<body id="table">
		<form action="boardin" method="post">
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
							<td><select class="form-control" id="c_type" name="c_type">
									<option>배고파요</option>
									<option>집에 보내주세요</option>
									<option>월급 언제나옴?</option>
									<option>바다 가고 싶다</option>
									<option>11111111111111111111111111111111111111</option>
							</select></td>    
						</tr>

						<tr>
							<td>작성자</td>
							<td><input type=text name=c_writer size=20></td>
						</tr>

						<tr>
							<td>문의내용</td>
							<td><input type=text name=c_subject size=60></td>
						</tr>

						<tr>
							<td>내용</td>
							<td><textarea name=c_content cols=85 rows=15 id="ir1"></textarea></td>
						</tr>

						<tr>
							<td>비밀번호</td>
							<td><input type=password name=c_pwd size=10 maxlength=10></td>
						</tr>
					</table>
					<center>
						<button id="writeBtn" type="submit">제출하기</button>
					</center>
				</td>
			</tr>
		</table>
		</form>
<script type="text/javascript">
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	 oAppRef: oEditors,
	 elPlaceHolder: "ir1",
	 sSkinURI: "resources/edit/SmartEditor2Skin.html",
	 fCreator: "createSEditor2"
	});
	
	//
	$('#runin').click(function() {
		var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]);
		//alert($('#ir1').val());
		//alert($('#wimage').val());
	})
	</script>
</body>

<%@ include file="../include/footer.jsp"%>


