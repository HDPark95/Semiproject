<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
							required="required" style="width: 250px; text-align: center;" >
							<input type="button" value="ID확인" id="idChkBtn"> 
						</div>				
						<div id="idtarget"></div>
						<input type="hidden" id="aid" name="aid" value="${aid}">
					</td>
				</tr>
				<tr>
					<td><button type="button" class="btn btn-outline-success" onclick="location = 'choose'">회원가입 하기</button></td>
					<td><button type="button" class="btn btn-outline-success" id="pwSearch">비밀번호 찾기</button></td>
				</tr>
			</table>
<!-- 			</form> -->
		</div>
	</section>

<script>
$('#pwSearch').click(function(){
	if($('#userID').val()==''){
		alert('이메일을 입력하세요.')
	}else if($('#userID').val() != null){
		$.ajax({
			url: "idChk?aid="+$('#userID').val(),
			success : function(data){
				if(data === 1){
					location = 'passwordFindform';
				}else{
					alert('아이디가 존재하지 않습니다.');
				}
			}
		});
	}
	
});
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
					}
				}
				
			});
		});
	});
});
</script>

<%@ include file="../include/footer.jsp"%>
	