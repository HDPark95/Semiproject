<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>2020. 7. 27.</title>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link rel="stylesheet" href="resources/css/auction/main/bootstrap.css">
<link rel="stylesheet" href="resources/css/auction/main/banner.css">
<meta name="viewport" content="width=device-width, initial-scale=1">

<style>
.container {
	width: 100%;
	padding-right: 15px;
	padding-left: 15px;
	margin-right: auto;
	margin-left: auto;
}

ul {
	margin-top: 9px;
	margin-bottom: 3rem;
}

#left {
	position: relative;
	right: 44px;
}
</style>
</head>
<body>
	<div style="margin-top: 200px; margin: 0 outo;">
		<div style="text-align: center;">
			<h1>휴대전화 인증</h1>

		</div>

		<!-- //content-->
		<div style="text-align: center; position: 30px;">

			<div>
				<ul style="list-style: none;">
					<li>- 프로젝트 결제를 위해 휴대전화 인증을 시행하고 있습니다.</li>
					<li>- 메시지 수신 가능한 휴대폰으로 인증번호를 받으실 수 있습니다.</li>
					<li>- 통신사의 사정으로 휴대폰 인증을 위한 메시지를 받지 못하는 경우가 발생할 수 있습니다.</li>
				</ul>
			</div>

			<form action="paymentUpdate" method="post" name="seacu">
				<div>
					<input type="hidden" value="${user.anum}" name="pnum"> <input
						type="hidden" value="구독" name="pgubun"> <input
						type="hidden" value="${vo.ppay}" name="ppay"> <input
						type="hidden" value="${vo.pway}" name="pway"> <input
						type="hidden" value="${vo.psdate}" name="psdate"> <input
						type="hidden" value="${vo.pedate}" name="pedate"> <input
						type="hidden" value="${vo.monthnum}" name="monthnum"> <input
						type="hidden" value="${vo1.inment}" name="inment"> <input
						type="hidden" value="${vo1.kinds}" name="kinds"> <input
						type="hidden" value="${vo1.mentnum}" name="mentnum">
					<table summary="휴대전화 인증을 위한 휴대전화번호, 인증번호 입력" class="container">

						<colgroup>
							<col style="width: 120px;">
							<col style="width: auto;">
						</colgroup>
						<tbody style="text-align: center;">
							<tr>
								<th><label for="inputPhoneNumber"></label></th>
								<td style="position: relative; right: 30px;">휴대전화번호 : <input
									type="text" id="inputPhoneNumber1" name="inputPhoneNumber"
									maxlength="3" title="휴대전화 첫번째 자리 입력"> - <input
									type="text" id="inputPhoneNumber2" name="inputPhoneNumber"
									maxlength="4" title="휴대전화 가운데 자리 입력"> - <input
									type="text" id="inputPhoneNumber3" name="inputPhoneNumber"
									maxlength="4" title="휴대전화 끝자리 입력"> <input type="button"
									value="인증번호받기" title="인증번호받기" id="sendPhoneNumber"
									class="btn btn-success">

									<ul style="list-style: none;" id="left">
										<li>* 휴대폰번호 입력 후 인증번호 받기 버튼을 눌러 주세요.</li>
										<li>* 휴대전화 문자메시지에서 인증번호를 확인 후 인증번호 입력란에 인증번호를 입력하세요.</li>
									</ul>
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="inputCertifiedNumber"></label></th>
								<td style="position: relative; right: 70px;">인증번호입력 : <input
									type="text" id="inputCertifiedNumber"
									name="inputCertifiedNumber" maxlength="4" value=""></td>
							</tr>
						</tbody>
					</table>
				</div>

				<div style="margin-top: 20px;">
					<input type="submit" value="휴대전화인증 확인" title="휴대전화인증 확인"
						id="checkBtn" name="checkBtn" class="btn btn-success"> <input
						type="button" value="뒤로가기" title="뒤로가기" id="checkBtn"
						name="checkBtn" class="btn btn-danger" onclick="location='pay6'">
					<!--  <input type="button" value="휴대전화인증 확인" onClick="seacu.action='paymentUpdate';seacu.submit();" id="checkBtn">-->
				</div>
			<%-- 	<div class="form-group"
					style="margin-top: 30px; position: relative; left: 20px;">
					<label class="control-label">EMAIL :</label> <input type="text"
						id="email" name="email" placeholder="이메일을 입력하세요"
						class="form-control" style="width: 500px;">
					<button type="button" class="btn btn-info" id="emailBtn">이메일
						발송</button>
					<button type="button" class="btn btn-info" id="emailAuthBtn">이메일
						인증</button>
				</div>
				<input type="hidden" path="random" id="random" value="${random }" /> --%>


			</form>
		</div>

		<!-- content//-->
	</div>


	<script src="http://code.jquery.com/jquery-1.11.1.min.js"></script>

	<script>
		$('#sendPhoneNumber')
				.click(
						function(e) {
							phoneNumber = $('#inputPhoneNumber1').val()
									+ $('#inputPhoneNumber2').val()
									+ $('#inputPhoneNumber3').val();
							if ($('#inputPhoneNumber1').val() == "" || $('#inputPhoneNumber2').val() == "" || $('#inputPhoneNumber3').val() == "" ) {
								alert("휴대폰 번호를 입력해 주세요.")
								$('form').bind('submit', submitAction);
							} else {

							}

							console.log(phoneNumber)
							alert("인증번호 전송완료!");
							$
									.ajax({
										url : "sendSMS2?phoneNumber="
												+ phoneNumber,
										success : function(res) {
											console.log(res)
											$('#checkBtn')
													.click(
															function(e) {
																if ($.trim(res) == $(
																		'#inputCertifiedNumber')
																		.val()) {
																	alert("인증성공!휴대폰 인증이 정상적으로 완료되었습니다.!")

																	/*     $.ajax({
																	          type: "POST",
																	          url: url,
																	          data: {
																	              "phoneNumber" : phoneNumber,
																	              pnum : "${user.anum }"},
																	              ppay : "${vo.ppay }"},
																	              psdate : "${vo.psdate }"},
																	              pedate : "${vo.pedate }"},
																	              monthnum : "${vo.monthnum }"},
																	              inment : "${vo1.inment }"},
																	              kinds : "${vo1.kinds }"},
																	              mentnum : "${vo1.mentnum }"},
																				success:location='paymentUpdate'
																	              
																	          }
																	      })  */
																	location.href = "pay3"
																} else {
																	alert("인증번호가 맞지 않습니다. 다시 입력해주세요.")
																	e.preventDefault()

																}
																var submitAction = function(e) {
																	e.preventDefault();
																 	 e.stopPropagation();
															};
																
																/* function replyCheck(){
																	var reply = $('#in').val().trim();
																	if(reply === ''){
																		alert('내용을 입력해주세요.');
																		$('form').bind('submit', submitAction);
																	}else{
																		$('form').unbind();
																	}
																} */
															 	 /* $(function(){
																	/*
																	이메일 인증 버튼 클릭시 발생하는 이벤트
																	*/
																	//$(document).on("click", "#emailBtn", function(){
																	/* 이메일 중복 체크 후 메일 발송 비동기 처리 */
																	//$.ajax({
																	//beforeSend: function(){
																	//loadingBarStart();
																	//},
																	//type:"get",
																	//url : "<c:url value='/login/createEmailCheck.do'/>",
																	//data : "userEmail=" + $("#userEmail").val() + "&random=" + $("#random").val(),
																	//data: "userEmail="+encodeURIComponent($('#userEmail').val()),
																	/* encodeURIComponent
																	예를들어, http://a.com?name=egoing&job=programmer 에서 &job=programmer
																	중 '&'는 하나의 파라미터가 끝나고 다음 파라미터가 온다는 의미이다.
																	그런데 다음과 같이 job의 값에 &가 포함된다면 시스템은 job의 값을 제대로 인식할수 없게 된다. */
																	//success : function(data){
																	//alert("사용가능한 이메일입니다. 인증번호를 입력해주세요.");
																	//}
																	//},
																	//error: function(data){
																	//alert("에러가 발생했습니다.");
																	//return false;
																	//}
																	//})
																	//})
																	/*
																	이메일 인증번호 입력 후 인증 버튼 클릭 이벤트
																	*/
																	//$(document).on("click", "#emailAuthBtn", function(){
																	//$.ajax({
																	//beforeSend: function(){
																	//loadingBarStart();
																	//},
																	//type:"get",
																	//url:"<c:url value='/login/emailAuth.do'/>",
																	//data:"authCode=" + $('#emailAuth').val() + "&random=" + $("#random").val(),
																	//success:function(data){
																	//if(data=="complete"){
																	//alert("인증이 완료되었습니다.");
																	//}else if(data == "false"){
																	//alert("인증번호를 잘못 입력하셨습니다.")
																	//}
																	//},
																	//complete: function(){
																	//loadingBarEnd();
																	//},
																	//error:function(data){
																	//alert("에러가 발생했습니다.");
																	//}
																	//}); 
																	//});
																//	});  

																	
															})

										}
									})
						});
	</script>
</body>
</html>


