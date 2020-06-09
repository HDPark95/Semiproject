<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link href="resources/css/myPage/th_bootstrap.css?after"
	rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />



<div class="container" id="">
	<h4 class="subtopma">${vo.aid } 님의 로그인 정보 입니다.</h4>
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		<input type="hidden" class="form-control" name="aid" id="aid"
			placeholder="" readonly="readonly" value="${vo.aid }"> <input
			type="hidden" class="form-control" name="apwd" placeholder="Password"
			value="${vo.apwd }"> 
		<table class="type02">
			<tr>
				<th scope="row">아이디</th>
				<td><input type="text" class="form-control" name="aid"
					value="${vo.aid }"></td>
			</tr>
			<tr>
				<th scope="row">비밀번호</th>
				<td><input type="text" class="form-control" name="apwd"
					readonly="readonly" value="${vo.apwd }"></td>
			</tr>
			<tr>
				<th scope="row">가입날짜</th>
				<td><input type="text" class="form-control" name="ainday" id="age"
					readonly="readonly" value="${vo.ainday }"></td>
			</tr>
			<tr>
				<th scope="row">수정날짜</th>
				<td><input type="text" class="form-control" name="achgday"
					readonly="readonly" value="${vo.achgday }"></td>
			</tr>
			<tr>
				<th scope="row">아이디 구분</th>
				<td><input type="text" class="form-control" name="agubun"
					value="${vo.agubun }"></td>
			</tr>
		</table>
		<div class="container" id="signup" 
			style="">

			<button type="submit" class="btn btn-success btn-lg">수정하기
			</button>
			<button type="submit" class="btn btn-success btn-lg"
				formmethod="post" formaction="mypage_lessor" formtarget="#aid">뒤로가기
			</button>
		</div>
	</form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	
</script>

