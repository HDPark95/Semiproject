<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<div class="container">
	<div class="th_card th_infor_card" id="infor_memberdetail1">
		<form action="inforDetail" method="post" style="">
			<div class="th_card-header">회원정보</div>
			<div class="th_card-body">
				<h4 class="card-title">${vo.memberinfor.dname }님의회원개인정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden"  value="${vo.aid }" name="aid">

				<button type="button" class="btn btn-success" id="infor_memberdetail2">확인하기</button>
			</div>
		</form>
	</div>

	<div class="th_card th_infor_card" id="infor_logindata">
		<form action="inforSignup" method="post" style="">
			<div class="card-header">로그인 정보</div>
			<div class="th_card-body">
				<h4 class="card-title">${vo.memberinfor.dname }님의 로그인 관련 정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden" value="${vo.aid }" name="aid">
  
				<button type="submit" class="btn btn-success">확인하기</button>
			</div>
		</form>
	</div>
	
	<div class="th_card th_infor_card" id="infor_paymentdatail">
		<form action="Pay_Detail" method="post" style="">
			<div class="card-header">구독 결제 정보</div>
			<div class="th_card-body">
				<h4 class="card-title">${vo.memberinfor.dname }님의 구독 결제 관련 정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden" value="${vo.aid }" name="aid">
				<input type="hidden" value="${vo.anum }" name="anum">
 
				<button type="submit" class="btn btn-success">확인하기</button>
			</div>
		</form>
	</div>

</div>