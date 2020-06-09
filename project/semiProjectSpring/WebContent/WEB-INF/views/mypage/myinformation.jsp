<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

	<div class="row th_card th_infor_card " style="float: left; position: relative;" >
		<form action="inforDetail" method="post" >
			<div class="card-header">회원정보</div>
			<div class="th_card-body" id="infor_memberdetail">
				<%@ include file="member_detailin.jsp"%> 
			</div>
				
		</form>
	</div>
 
	<div class=" row th_card th_infor_card" >
		<form action="loginDetail" method="post" >
			<div class="card-header">로그인 정보</div>
			<div class="th_card-body" id="infor_logindata">
				<h4 class="card-title">${vo.memberinfor.dname }님의 로그인 관련 정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden" value="${user.aid }" name="aid">
				<button type="button" class="btn btn-success" id="logindetail_btn">확인하기</button>
			</div>
		</form>
	</div>
	
	<div class="row th_card th_infor_card" >
		<form action="paymentDetail" method="post" style="">
			<div class="card-header">구독 결제 정보</div>
			<div class="th_card-body" id="infor_paymentdatail">
				<h4 class="card-title">${vo.memberinfor.dname }님의 구독 결제 관련 정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden" value="${vo.aid }" name="aid">
				<input type="hidden" value="${vo.anum }" name="anum">
				<button type="button" class="btn btn-success" id="paymentdetail_btn">확인하기</button>
			</div>
		</form>
	</div>

