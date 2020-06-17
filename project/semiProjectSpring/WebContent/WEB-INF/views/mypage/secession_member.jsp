<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="container membertarget" style="height: 556.63px;">
	<h6 class="subtopma" style="margin-bottom: 40px;">
		회원 탈퇴 를 하시려면 <br> ${vo.memberinfor.dname }님의 아이디 와 <br>비밀번호
		를 입력해 주세요
	</h6>
	<form class="form-horizontal" action="deletemember" method="post">

		<table class="type02">
			<tr>
				<th scope="row">아이디</th>
				<td><input type="text" class="form-control" name="aid" id="aid"
					value=""></td>
			</tr>
			<tr>
				<th scope="row">비밀번호</th>
				<td><input type="password" class="form-control" name="apwd"
					id="apwd" value=""></td>
			</tr>


		</table>
		<div class="container" id="signup" style="">
			<button type="button" class="btn btn-success btn-lg"
				id="member_secession_btn" onclick="deletemtpage();">삭제하기</button>
			<button type="button" class="btn btn-success btn-lg" id="mypage_refresh_btn">취소</button>
		</div>
	</form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>

$(function(){
	$('#mypage_refresh_btn').click(function() {
		location.reload();
	});
});
	
	
	function deletemtpage(){
		var aid = $('#aid').val();
		var apwd = $('#apwd').val();
		if(aid == '${vo.aid}' && apwd == '${vo.apwd}'){
			var result1 = confirm('정말 삭제하시겠습니까?');
			if(result1){
				$.ajax({
					url : "deletemember" ,
					type : "post" ,
					data : {aid : "${vo.aid }"
						,apwd : "${vo.apwd }"},
						success:location='logout'
					});
				}
		}else{
			alert("틀리셧습니다. 다시 입력하세요.");
		}
	}

</script>

