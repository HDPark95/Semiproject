<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="resources/css/community/signup_lessor.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
<style>
#projects {
	padding: 0 0 0 0;
	width: 700px;
	margin: 0 auto;
	margin-bottom: 150px;
}

#tel1 {
	padding-left: 16px;
}

#tel2 {
	padding-left: 0px;
	padding-right: 20px;
}

#tel3 {
	padding-left: 0px;
	padding-right: 20px;
	right: 15px;
}

#inputIdHeader {
	width: 110px;
}

#emailLabel{
	width: 20px;
	margin-left: 20px;
}
#email{
	width: 110px;
}
</style>
<h1>로고</h1>
<br>
<h4>임대인 회원가입</h4>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form class="form-horizontal" autocomplete="off">
			<div class="form-group" id="inputId">
			
				<label for="inputIdheader" class="col-sm-2 control-label">아이디</label>
				<div class="col-md-1" id="inputId">
					<input type="email" class="form-control" id="inputIdHeader"
						placeholder="id">
				</div>
				
				<label for="inputemail" class="col-sm-1 control-label" id="emailLabel">@</label>
				<div class="col-md-1" id="inputEmail">
					<input type="text" class="form-control" id="email"
						placeholder="email">
				</div>
				
			</div>
			<div class="form-group">
				<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="inputPassword"
						placeholder="영문+숫자,8자 이상">
				</div>
			</div>
			<div class="form-group">
				<label for="PasswordCheck" class="col-sm-2 control-label">비밀번호
					재확인</label>
				<div class="col-sm-3">
					<input type="password" class="form-control" id="PasswordCheck"
						placeholder="비밀번호 재확인">
				</div>
			</div>
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label">이름</label>
				<div class="col-sm-3">
					<input type="text" class="form-control" id="inputName"
						placeholder="가입자 성명">
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label for="inputYear" class="col-sm-2 control-label">생년월일</label>
					<div class="col-xs-1" id="year">
						<input type="text" class="form-control" placeholder="년(4자)"
							id="inputYear">
					</div>
					<div class="col-xs-1" id="month">
						<select class="form-control" id="monthSelect">
							<option selected="selected">월</option>
							<option>1</option>
							<option>2</option>
							<option>3</option>
							<option>4</option>
							<option>5</option>
							<option>6</option>
							<option>7</option>
							<option>8</option>
							<option>9</option>
							<option>10</option>
							<option>11</option>
							<option>12</option>
						</select>
					</div>
					<div class="col-xs-1" id="day">
						<input type="text" class="form-control" placeholder="일">
					</div>
				</div>
			</div>
			<div class="form-group">
				<label for="inputName" class="col-sm-2 control-label">성별</label>
				<div class="col-sm-3">
					<select class="form-control" id="genderSelect">
						<option selected="selected">성별</option>
						<option>남자</option>
						<option>여자</option>
					</select>
				</div>
			</div>
			<div class="form-group">
				<div class="row">
					<label for="inputName" class="col-sm-2 control-label">전화번호</label>
					<div class="col-xs-1" id="tel1">
						<select class="form-control" id="monthSelect">
							<option selected="selected">010</option>
							<option>011</option>
							<option>016</option>
							<option>017</option>
							<option>018</option>
							<option>019</option>
						</select>
					</div>
					<div class="col-xs-1" id="tel2">
						<input type="text" class="form-control">
					</div>
					<div class="col-xs-1" id="tel3">
						<input type="text" class="form-control">
					</div>
				</div>
			</div>
			<div class="form-group">
				<div class="col-sm-offset-2 col-sm-10" id="signup">
					<button type="button" class="btn btn-secondary btn-lg"
						onclick="location = 'login'">취소</button>
					<button type="submit" class="btn btn-success btn-lg"
						onclick="location = 'subLessor'">확인</button>
				</div>
			</div>
		</form>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>

