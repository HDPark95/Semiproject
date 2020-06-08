<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
		

<link href="resources/css/myPage/th_bootstrap.css?after" rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />


	
	<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center;" id="a">
<h4 class="subtopma">${vo.memberinfor.dname } 님의 회원 정보 입니다.</h4>

<div class="container" >
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		
				<input type="hidden" class="form-control" name="aid" id="aid"
					placeholder="" readonly="readonly" value="${vo.aid }">
				<input type="hidden" class="form-control" name="apwd"
					placeholder="Password"  value="${vo.apwd }">
		
		
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">이름</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="dname"  value="${vo.memberinfor.dname }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">생년월일</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="dbirth" readonly="readonly" value="${vo.memberinfor.dbirth }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">나이</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="age" id="age" readonly="readonly" value="">
			</div>
		</div>
		<div class="form-group">
			<label for="inputName" class="col-sm-2 control-label">성별</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="dgender" readonly="readonly" value="${vo.memberinfor.dgender }">
			</div>
		</div>
		<div class="form-group">
			<label for="inputTel" class="col-sm-2 control-label">전화번호</label>
			<div class="col-sm-3 container">
				<input type="text" class="form-control" name="dtel"  value="${vo.memberinfor.dtel }">
			</div>
		</div>
		 
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10" id="signup" style="margin-left: 90px;">
				
				<button type="submit" class="btn btn-success btn-lg" 
					>수정하기 </button>
					<button type="submit" class="btn btn-success btn-lg" formmethod="post"
				 formaction="mypage_lessor" formtarget="#aid" >뒤로가기 </button>
			</div>
		</div>
	</form>
</div>


	</div>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		var date = new Date();
		var year = date.getFullYear();
		var dbirth = '${vo.memberinfor.dbirth }';
		var myyear = dbirth.substr(0,4);
		var age = year - myyear;
		myyear = Number(myyear);
		$('#age').val(age);
		
	});
</script>

