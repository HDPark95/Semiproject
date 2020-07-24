<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/signupchoose.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>



	<section class="projects-section bg-light" id="projects">
		<div class="container">
<!-- 		<form method="post" action="signup_broker_in" class="form-horizontal"> -->
			<table class="table">
				<tr class="success">
					<th colspan="2"><a>CMJ</a><br>아이디를 입력해 주세요!</th>										
				</tr>
				<tr>
					<td colspan="2">
						<div>							
							<input type="text" id = "userID" name ="userID" maxlength="51" placeholder="이메일 형식으로 입력해 주세요!"
							style="width: 250px; text-align: center;">
							<input type="button" value="ID확인" id="idChkBtn"> 
						</div>				
						<div id="idtarget"></div>
						<input type="hidden" id="aid" name="aid" value="${aid}">
					</td>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'choose'">회원가입</button></td>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'lessor'">비밀번호변경</button></td>
				</tr>
			</table>
<!-- 			</form> -->
		</div>
	</section>

<script>
$(function() {		
	$(function(){
		$('#idChkBtn').click(function(){
			$.ajax({
				url: "idChk?aid="+$('#userID').val(),
				success : function(data){
					if(data===1){
						$('#idtarget').html("<p style='color:green'>ID가 존재합니다.</p>");
					}else{
						$('#idtarget').html("<p style='color:red'>ID가 존재하지 않습니다.</p>");
						$('#id').val("");
					}
				}		
			});
		});
	});
});
</script>

<%@ include file="../include/footer.jsp"%>
	