<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div>
				<h4 class="card-title">${vo.memberinfor.dname }님의회원개인정보 입니다.</h4>
				<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
				<input type="hidden"  value="${user.aid}" name="aid">
				<button type="button" class="btn btn-success" id="memberdetail_btn">확인하기</button>
				
	</div>