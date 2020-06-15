<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container membertarget" style="height: 556.63px;">
	<h4 class="subtopma" style="margin-bottom: 40px;">${vo.memberinfor.dname }님의 회원 정보 입니다.</h4>
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		<input type="hidden" class="form-control" name="aid" id="aid"
			placeholder="" readonly="readonly" value="${vo.aid }"> <input
			type="hidden" class="form-control" name="apwd" placeholder="Password"
			value="${vo.apwd }"> 
		<table class="type02"  style="height:330px; ">
			<tr>
				<th scope="row">이름</th>
				<td><input type="text" class="form-control" name="dname" id="dname"
					value="${vo.memberinfor.dname }"></td>
			</tr>
			<tr>
				<th scope="row">생년월일</th>
				<td><input type="text" class="form-control" name="dbirth" id="dbirth"
					readonly="readonly" value="${vo.memberinfor.dbirth }"></td>
			</tr>
			<tr> 
				<th scope="row">나이</th>
				<td><input type="text" class="form-control" name="age" id="age"
					readonly="readonly" value=""></td>
			</tr>
			<tr>
				<th scope="row">성별</th>
				<td><input type="text" class="form-control" name="dgender" id="dgender"
					readonly="readonly" value="${vo.memberinfor.dgender }"></td>
			</tr>
			<tr>
				<th scope="row">전화번호</th>
				<td><input type="text" class="form-control" name="dtel" id="dtel"
					value="${vo.memberinfor.dtel }"></td>
			</tr>
			
		</table>
		<div class="container" id="signup"
			style="">

			<button type="submit" class="btn btn-success btn-lg" id="inforDetailUpdate_btn">수정하기</button>
			<button type="submit" class="btn btn-success btn-lg"
				formmethod="post" formaction="mypage_lessor" formtarget="#aid">뒤로가기
			</button>
		</div>
	</form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() { 
		var date = new Date();
		var year = date.getFullYear(); 				// Number
		var dbirth = '${vo.memberinfor.dbirth }';	//String
		var myyear = dbirth.substr(0, 4);			//Number
		var age = year - myyear;
		myyear = Number(myyear);
		$('#age').val(age);

		var dbirth_theorem = dbirth.substr(0, 4) + " 년 "
		+ dbirth.substr(5, 2) + " 월 " + dbirth.substr(8, 2) + " 일 ";
		
		$("#dbirth").val(dbirth_theorem);
		
			

	});
</script>

