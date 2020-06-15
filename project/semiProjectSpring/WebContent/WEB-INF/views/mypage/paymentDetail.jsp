<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<link href="resources/css/myPage/th_bootstrap.css?after"
	rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />



<div class="container">
	<h4 class="subtopma">${vo.memberinfor.dname }님의결제 정보 입니다.</h4>
	<form class="form-horizontal" action="inforDetailUpdate" method="post">
		<input type="hidden" class="" name="aid" id="aid" placeholder=""
			readonly="readonly" value="${vo.aid }"> <input type="hidden"
			class="" name="apwd" placeholder="Password" value="${vo.apwd }">
		<table class="type02">
			<tr>
				<th scope="row">결제일</th>
				<td><input type="text" class="form-control ch_pay"
					name="psdate" id="psdate" readonly="readonly"
					value="${vo.payvo.psdate }"></td>
			</tr>
			<tr>
				<th scope="row">종료일</th>
				<td><input type="text" class="form-control ch_pay"
					name="pedate" id="pedate" readonly="readonly" value="${vo.payvo.pedate }"></td>
			</tr>
			<tr>
				<th scope="row">결제금액</th>
				<td><input type="text" class="form-control ch_pay" name="ppay"
					readonly="readonly" value="${vo.payvo.ppay }"></td>
			</tr>
			<tr>
				<th scope="row">결제 방식 / 상태</th>
				<td><input type="text" class="form-control ch_pay" name="pway"
					id="pway" readonly="readonly"
					value="${vo.payvo.pway } / ${vo.payvo.pgubun }중"></td>
			</tr>
			<tr>
				<th scope="row">구독 개월수</th>
				<td><input type="text" class="form-control ch_pay"
					name="monthnum" readonly="readonly"
					value="${vo.payvo.monthnum }"></td>
			</tr>
			<tr>
				<th scope="row">할부 개월수</th>
				<td><input type="text" class="form-control ch_pay"
					name="inment" readonly="readonly"
					value="${vo.payvo.paydetailvo.inment }"></td>
			</tr>
			<tr>
				<th scope="row">결제 은행</th>
				<td><input type="text" class="form-control ch_pay" name="kinds"
					readonly="readonly" value="${vo.payvo.paydetailvo.kinds }"></td>
			</tr>
			<tr>
				<th scope="row" id="chk_pway">카드 번호</th>
				<td><input type="text" class="form-control ch_pay"
					name="mentnum" readonly="readonly"
					value="${vo.payvo.paydetailvo.mentnum }"></td>
			</tr>
		</table>
		<div class="container" id="signup" style="">

			<input type="button" class="btn btn-success btn-lg" id="pay_cbtn"
				value="문의하세요" >

			<button type="submit" class="btn btn-success btn-lg"
				formmethod="post" formaction="mypage_lessor" formtarget="#aid">뒤로가기
			</button>
		</div>
	</form>
</div>


<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		var pgubun = '${vo.payvo.pgubun}';	 // 구독 , 미구독
		var pway = '${vo.payvo.pway }' ;     // 신용카드 , 체크카드 , 무통장 
		var aanum = '${vo.anum}';			 // 로그인 PK 값 String
		aanum = Number(aanum);
		console.log(pway);
		
		var $psdate = $('#psdate').val(); // String
		var $pedate = $('#pedate').val(); // String

		var psdate_theorem = $psdate.substr(0, 4) + " 년 "
				+ $psdate.substr(5, 2) + " 월 " + $psdate.substr(8, 2) + " 일 "
				+ $psdate.substr(10, 2) + " 시 ";
		var pedate_theorem = $pedate.substr(0, 4) + " 년 "
				+ $pedate.substr(5, 2) + " 월 " + $pedate.substr(8, 2) + " 일 "
				+ $pedate.substr(10, 2) + " 시 ";
		
		$('#psdate').val(psdate_theorem);
		$('#pedate').val(pedate_theorem);
		
		if (pgubun == '구독') {
			$('#pay_cbtn').val("연장하기");
			
			if (pway == '신용카드' || pway == '체크카드') {
				$('#chk_pway').text("카드 번호");
			} else if (pway == '무통장') {
				$('#chk_pway').text("계좌 번호");
			}
			
		} else if (pgubun == '미구독') {
			$('.ch_pay').val("미구독 중입니다.")
			$('#pay_cbtn').val("구독하기");
		}
		
		$('#pay_cbtn').click(function() {
			if($('#pay_cbtn').val() =='구독하기'){
				
						location.href="pay4";
				
			}else if($('#pay_cbtn').val() == '연장하기'){
				location.href="premiumProlong?anum=" + ${user.anum} ;				
			}
		});
		
		
	});
</script>

