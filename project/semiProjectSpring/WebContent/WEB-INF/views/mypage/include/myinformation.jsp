<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div class="th_card th_infor_card">
		<form action="inforDetail" method="post" style="">
			<div class="th_card-header">회원정보</div>
			<div class="th_card-body">
				<h4 class="card-title">${vo.name }님의회원개인정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden"  value="${vo.id }" name="id">

				<button type="submit" class="btn btn-success">확인하기</button>
			</div>
		</form>
	</div>

	<div class="th_card th_infor_card">
		<form action="inforSignup" method="post" style="">
			<div class="card-header">로그인 정보</div>
			<div class="th_card-body">
				<h4 class="card-title">${vo.name }님의 로그인 관련 정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden" value="${vo.id }" name="id">

				<button type="submit" class="btn btn-success">확인하기</button>
			</div>
		</form>
	</div>

</div>