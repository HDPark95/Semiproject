<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/css/community/signup_broker.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
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
<h1>로고</h1>
<br>
<h4>공인중개사 회원가입</h4>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form method="post" action="signup_broker_in" class="form-horizontal"
			autocomplete="off">
			<div class="form-group" id="aid">
				<label for="aidheader" class="col-sm-2 control-label">아이디</label>
				<div class="col-md-1" id="inputidheader">
					<input type="text" class="form-control" id="aidheader"
						name="aidheader" placeholder="id" maxlength="20"  required="required">
				</div>
				<label for="aidfooter" class="col-sm-1 control-label"
					id="emailLabel">@</label>
				<div class="col-md-1" id="inputidfooter">
					<input type="text" class="form-control" id="aidfooter"
						name="aidfooter" placeholder="email" maxlength="30" required="required">
				</div>
			</div>
			<div id="idtarget"></div>
			<div class="form-group">
				<label for="apwd" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="apwd" name="apwd"
						placeholder="영문+숫자,8자 이상" required="required">
					<div id="pwdtarget"></div>
				</div>
			</div>
			<div class="form-group">
				<label for="PasswordCheck" class="col-sm-2 control-label">비밀번호
					재확인</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="PasswordCheck"
						placeholder="비밀번호 재확인" required="required">
				</div>
			</div>
			<div id="chktarget"></div>
			<div class="form-group">
				<label for="dname" class="col-sm-2 control-label">이름/회사명</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="dname" name="dname"
						placeholder="가입자 성명 또는 회사명" required="required">
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label for="inputName" class="col-sm-2 control-label">생년월일</label>
					<div class="col-xs-1" id="dbirth1">
						<input type="number" class="form-control" placeholder="년(4자)"
							id="dyear" name="dyear" maxlength="4" min="1920">
					</div>
					<div class="col-xs-1" id="dbirth2">
						<select class="form-control" id="dmonth" name="dmonth">
							<option selected="selected">월</option>
							<option>01</option>
							<option>02</option>
							<option>03</option>
							<option>04</option>
							<option>05</option>
							<option>06</option>
							<option>07</option>
							<option>08</option>
							<option>09</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
					</div>
					<div class="col-xs-1" id="dbirth3">
						<input type="number" class="form-control" placeholder="일" id="dday"
							name="dday" maxlength="2" min="1" max="31">
					</div>
				</div>
			</div>
			<div id="yeartarget"></div>
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label">성별</label>
				<div class="col-sm-3">
					<select class="form-control" id="dgender" name="dgender" required="required">
						<option selected="selected" disabled>성별</option>
						<option>남자</option>
						<option>여자</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label for="dtelheader" class="col-sm-2 control-label">전화번호</label>
					<div class="col-xs-1" id="tel1">
						<select class="form-control" id="dtelheader" name="dtelheader">
							<option selected="selected">010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
					</div>
					<div class="col-xs-1" id="tel2">
						<input type="number" class="form-control" id="dtelmiddle"
							name="dtelmiddle" maxlength="4" min="100" max="9999">
					</div>
					<div class="col-xs-1" id="tel3">
						<input type="number" class="form-control" id="dtelfooter"
							name="dtelfooter" maxlength="4" min="1000" max="9999">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" id="signup">
					<button type="button" class="btn btn-secondary btn-lg"
						onclick="location = 'login'">취소</button>
					<button type="submit" class="btn btn-success btn-lg" id="submit">확인</button>
				</div>
			</div>
			<input type="hidden" id="agubun" name="agubun" value="공인중개사">
		</form>
	</div>
</section>
<script>
btn = document.getElementById('submit');
$(function() {
	// 아이디 한글 입력 방지 처리
	$('#aidheader').keyup(function(e){
		if (!(e.keyCode >=37 && e.keyCode<=40)) {
			var v = $(this).val();
			$(this).val(v.replace(/[^a-z0-9]/gi,''));
		}
		
	// 아이디 양식 체크	
		var userid = $('#aidheader').val();
		console.log(userid);
			$.ajax({
				url:'idChk?aidheader='+encodeURIComponent(userid),
				success: function(data){		
					if(data===1){
						$('#idtarget').html("<p style='color:red'>이미 사용중이거나 탈퇴한 아이디입니다.</p>");
						btn = document.getElementById('submit')
					}else if(userid.length===0){
						$('#idtarget').html("<p style='color:red'>아이디를 입력하여 주십시오.</p>");
					}else if(userid.length>=1&&userid.length<=4){
						$('#idtarget').html("<p style='color:red'>아이디는 최소 5자 이상 입력하셔야 합니다.</p>");
					}else{
						$('#idtarget').html("<p style='color:green'>멋진 아이디네요!</p>");
					}
				}
		});
	});
	
	// 비밀번호 양식 체크
	$('#apwd').keyup(function(e){
		var pwd = "";
		pwd = String($('#apwd').val());
		console.log(pwd);
		if(pwd.length===0){
			$('#pwdtarget').html("<p style='color:red'>비밀번호를 입력하여 주십시오.</p>");
		}else if(pwd.length>=1&&pwd.length<=7){
			$('#pwdtarget').html("<p style='color:red'>8자 이상의 영문 및 숫자를 사용하여 주십시오.</p>");
		}else{
			$('#pwdtarget').html("");
		}
	});
	
	// 비밀번호 확인 체크
	$('#PasswordCheck').keyup(function(){
		var pwd1=$("#apwd").val();
		var pwd2=$("#PasswordCheck").val();
		if(pwd1.length>=1 || pwd2.length>=1){ 
			if(pwd1 == pwd2){ 
			$("#chktarget").html("<p style='color:green'>비밀번호가 일치합니다.</p>");	
			}else{ 
			$("#chktarget").html("<p style='color:red'>비밀번호가 일치하지 않습니다.</p>"); 
			}
		}
	});	
	
	// 연도 설정
	$('#dyear').keyup(function(){
		var year=$("#dyear").val();
		var currentyear = new Date().getFullYear();
		if(year>currentyear){
			$("#yeartarget").html("<p style='color:red'>미래에서 오셨군요!</p>");
		}else if(year>currentyear-18){
			$("#yeartarget").html("<p style='color:red'>만 18세 미만은 가입하실 수 없습니다!</p>");
		}else{
			$("#yeartarget").html("");
		}
	});
	
	// 일 수 설정
	$('#dday').keyup(function(){
		var day = $(this).val();
		var month = $('#dmonth option:selected').val();
		if(month===0){
		$("#yeartarget").html("<p style='color:red'>월을 입력해 주세요.</p>");
		}else{
			if(month==1||month==3||month==5||month==7||month==8||month==10||month==12){
				if(day<1||day>31){
					$("#yeartarget").html("<p style='color:red'>생년월일을 다시 확인해주세요.</p>");	
				}else{
					$("#yeartarget").html("");
				}
			}else if(month==2){
				if(day<1||day>29){
					$("#yeartarget").html("<p style='color:red'>생년월일을 다시 확인해주세요.</p>");
				}else{
					$("#yeartarget").html("");
				}
			}else{
				if(day<1||day>30){
					$("#yeartarget").html("<p style='color:red'>생년월일을 다시 확인해주세요.</p>");
				}else{
					$("#yeartarget").html("");
				}
			}
		}
	});
})
</script>
<%@ include file="../include/footer.jsp"%>
