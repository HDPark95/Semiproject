<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/css/community/signup_lessor.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<style>
#projects {
	padding: 0 0 0 0;
	width: 700px;
	margin: 0 auto;
	margin-bottom: 150px;
}

#tel1, #dbirth1 {
	padding-left: 16px;
}

#tel2, #dbirth2 {
	padding-left: 0px;
	padding-right: 20px;
}

#tel3, #dbirth3 {
	padding-left: 0px;
	padding-right: 20px;
	right: 15px;
}

#aidheader {
	width: 110px;
}

#emailLabel {
	width: 20px;
	margin-left: 20px;
}

#aidfooter {
	width: 110px;
}

#idtarget {
	position: relative;
	left: 190px;
	width: 400px;
	margin-top: 0px;
	margin-bottom: 10px;
}

#pwdtarget {
	position: relative;
	right: 0px;
	width: 400px;
	margin-top: 0px;
	padding-top: 10px;
}

#aidheader, #aidfooter{
	ime-mode: disabled;
}

#chktarget,#nametarget,#yeartarget {
	width: 500px;
	position: relative;
	left: 190px;
	margin-top: 0px;
}
</style>
<h1>CMJ</h1>
<br>
<h4>비밀번호 찾기</h4>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form method="post" action="passwordFind" class="form-horizontal"
			autocomplete="off" id = "form1" name = "form1">
<%-- 			<input type="hidden" id="email" value="${email}"> --%>
<%-- 			<input type="hidden" id="username" value="${username}">			 --%>
<%-- 				<input type="hidden" id="map" value="${map.dname}"> --%>
<%-- 				<input type="hidden" id="map" value="${map.aid}">			  --%>
			<div id="idtarget"></div>
			<div class="form-group">
				<label for="apwd" class="col-sm-2 control-label">아이디 입력</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="aid" name="aid"
						placeholder="이메일 형식으로 입력해주세요!" required="required">
					<div id="pwdtarget"></div>
				</div>
			</div>
			<div id="chktarget"></div>
			<div class="form-group">
				<label for="dname" class="col-sm-2 control-label">이름 또는 기업명</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="dname" name="dname"
						placeholder="가입자 성명 또는 회사명" required="required">
				</div>
			</div>
			
		
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" id="signup">
					<button type="button" class="btn btn-secondary btn-lg"
						onclick="location = 'login'">취소</button>
					<input type="button" class="btn btn-success btn-lg" id="submitA"  value="확인">
				</div>
			</div>
		</form>
	</div>
</section>
<script>
var submitAction = function(e){
	e.preventDefault();
	e.stopPropagation();
}


$(function(){
	$('#submitA').click(function(){
		var dname = $('#dname').val()
		var aid = $('#aid').val()
		$.ajax({
			url: "nameChk",
			data : {
				'dname':dname,
				'aid':aid
			},
			success : function(data){
				if(data === 1){
// 					$('#form1').action = "nameChk",
					alert('비밀번호가 발송됐습니다.')
					$('#form1').submit();
					
				}else{
					alert('회원정보가 존재하지 않습니다111.')
				}
				
			},
			error : function(data){
				console.log('error:' + data);
			}
		});
	});
});
// var submitAction = function(e){
// 	e.preventDefault();
// 	e.stopPropagation();
// }
// function submitA(){
// 	var email = $('#email').val()
// 	var username = $('#username').val();
// 	console.log($('#aid').val())
// 	console.log(email)
// 	console.log($('#dname').val())
// 	console.log(username)
// 	if($('#aid').val()!= email || $('#dname').val() != username){
// 		alert('회원정보가 일치하지 않습니다.');
		

// 		$('form').bind('submit', submitAction);
// 	}else{
// 		$('form').unbind();
// 	}
	
// };
// var submitAction = function(e) {
// e.preventDefault();
// e.stopPropagation();
// };

// function replyCheck(){
// 	var reply = $('#replyin').val().trim();
// 	if(reply === ''){
// 		alert('내용을 입력해주세요.');
// 		$('form').bind('submit', submitAction);
// 	}else{
// 		$('form').unbind();
// 	}
// }


</script>
<%@ include file="../include/footer.jsp"%>
