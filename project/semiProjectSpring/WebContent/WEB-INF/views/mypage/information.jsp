<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<h4 class="subtopma">정보 수정</h4>

<div class="container">
	<form class="form-horizontal" action="inforUpdate" method="post">
		<div class="form-group ">
			<label for="inputEmail" class="col-sm-2 control-label">아이디</label>
			<div class="col-sm-3 container">
				<input type="email" class="form-control" name="id"
					placeholder="" readonly="readonly" value="${vo.id }">
			</div>
		</div> 
		<div class="form-group">
			<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
			<div class="col-sm-3 container">
				<input type="password" class="form-control" name="pwd"
					 value="${vo.pwd }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이메일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="email" value="${vo.email}">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이름</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="name" value="${vo.name }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">생년월일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="birth" 
				readonly="readonly" value="${vo.birth }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">성별</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="gender" 
				readonly="readonly" value="${vo.gender }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="tel" value="${vo.tel }">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10" id="" style="margin-left: 90px;">
				
				<button type="submit" class="btn btn-success btn-lg">정보 수정</button>
			</div>
		</div>
	</form>
</div>

 





