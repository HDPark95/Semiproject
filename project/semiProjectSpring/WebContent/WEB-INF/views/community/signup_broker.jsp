<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <link href="resources/css/community/signup_broker.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>



	<h1>로고</h1><br>
	<h4>공인중개사 회원가입</h4>
	<section class="projects-section bg-light" id="projects" >
		<div class="container">
			<form class="form-horizontal">
				<div class="form-group">
					<label for="inputEmail" class="col-sm-2 control-label">아이디</label>
					<div class="col-sm-3">
						<input type="email" class="form-control" id="inputEmail"
							placeholder="Email" required="required">
					</div>
				</div>
				<div class="form-group">
					<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
					<div class="col-sm-3">
						<input type="password" class="form-control" id="inputPassword"
							placeholder="Password">
					</div>
				</div>
				<div class="form-group">
					<label for="inputName" class="col-sm-2 control-label">이름</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="inputName">
					</div>
				</div>
				<div class="form-group">
					<div class="row">
						<label for="inputName" class="col-sm-2 control-label">생년월일</label>
						<div class="col-xs-1" id="year">
							<input type="text" class="form-control" placeholder="년(4자)">
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
					<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
					<div class="col-sm-3">
						<input type="text" class="form-control" id="inputTel">
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10" id="checkrobot">
						<div class="checkbox">
							<label id="checkrobot"> <input type="checkbox">
								로봇이 아닙니다!
							</label>
						</div>
					</div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10" id="signup">
						<button type="button" class="btn btn-secondary btn-lg" onclick="location = 'semi.Project?page=login&code=1'">취소</button>
						<button type="submit" class="btn btn-success btn-lg" onclick="location = 'semi.Project?page=community&code=5'">확인</button>
					</div>
				</div>
			</form>
		</div>
	</section>
<%@ include file="../include/footer.jsp"%>

	