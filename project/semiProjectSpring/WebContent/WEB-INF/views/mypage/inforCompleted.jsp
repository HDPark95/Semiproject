<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/myPage/th_bootstrap.css?after" rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />

<%@ include file="../include/header_menu.jsp"%>
	
	<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center; margin-top: 200px;" id="a">
<h4 class="subtopma">정보 수정이 완료 되었습니다.</h4>
 
<div class="container" >
	<form class="form-horizontal">
		<div class="form-group ">
			<label for="inputEmail" class="col-sm-2 control-label">아이디</label>
			<div class="col-sm-3 container">
				<input type="email" class="form-control" id="outputid"
					placeholder="" readonly="readonly" value="${vo.id }">
			</div>
		</div> 
		<div class="form-group">
			<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
			<div class="col-sm-3 container">
				<input type="password" class="form-control" id="outputPassword"
					placeholder="Password" readonly="readonly" value="${vo.pwd }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이메일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" id="outputemail" readonly="readonly" value="${vo.email }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이름</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" id="inputName" readonly="readonly" value="${vo.name }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">생년월일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" id="outputbirth" readonly="readonly" value="${vo.birth }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">성별</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" id="inputName" readonly="readonly" value="${vo.gender }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" id="inputTel" readonly="readonly" value="${vo.tel }">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10" id="signup" style="margin-left: 90px;">
				
				<button type="button" class="btn btn-success btn-lg"
					onclick="location = '/semiProjectSpring'">메인으로 </button>
			</div>
		</div>
	</form>
</div>


	</div>

<%@ include file="../include/footer.jsp"%>


