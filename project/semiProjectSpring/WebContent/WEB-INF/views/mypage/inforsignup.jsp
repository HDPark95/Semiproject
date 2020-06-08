<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/myPage/th_bootstrap.css?after" rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />

<%@ include file="../include/header_menu.jsp"%>
	
	<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center; margin-top: 200px;" id="a">
<h4 class="subtopma">${vo.mname } 님의 회원 정보 입니다.</h4>
 
<div class="container" >
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		<div class="form-group ">
			<label for="inputEmail" class="col-sm-2 control-label">아이디</label>
			<div class="col-sm-3 container">
				<input type="email" class="form-control" name="id"
					placeholder="" readonly="readonly" value="${vo.sid }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputPassword" class="col-sm-2 control-label">비밀번호</label>
			<div class="col-sm-3 container">
				<input type="password" class="form-control" name="pwd"
					placeholder="Password"  value="${vo.spwd }">
			</div> 
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이메일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="email"  value="${vo.sid }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이름</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="name"  value="${vo.name }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">생년월일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="birth" readonly="readonly" value="${vo.birth }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">성별</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="gender" readonly="readonly" value="${vo.gender }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="tel"  value="${vo.tel }">
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10" id="signup" style="margin-left: 90px;">
				
				<button type="submit" class="btn btn-success btn-lg" 
					>수정하기 </button>
					<button type="submit" class="btn btn-success btn-lg" formmethod="post"
				 formaction="mypage_lessor" formtarget="${vo.id }" >뒤로가기 </button>
			</div>
		</div>
	</form>
</div>


	</div>

<%@ include file="../include/footer.jsp"%>


