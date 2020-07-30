<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="..\include\header_index.jsp"%>
<%@ include file="..\include\header_menu.jsp"%>
<link href="resources/css/auction/payment.css?after" rel="stylesheet" />

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<style>


div.final_price {
	height: 69px;
	border-top: 1px solid #cbcfdb;
	border-bottom: 1px solid #cbcfdb;
	color: red;
	font: bold 30px Tahoma, sans-serif;
	text-align: center;
	line-height: 230%;
}

#button1 {
	width: 200px;
	text-align: center;
}
 
#cardnumber1,#cardnumber2,#cardnumber3,#cardnumber4{
	width: 65px;
}
.container{
	margin-top: 20px;
}
</style>
</head>
<body>
	<h2>결제확인창</h2>
	<form action="myProlongup" method="post">
	<div class="container">
	<input type="hidden" value="${user.anum}" name="pnum">
			<input type="hidden" value="구독" name="pgubun">
			<input type="hidden" value="${vo.ppay + bvo.ppay}" name="ppay">
			<input type="hidden" value="${vo.psdate}" name="psdate" id="psdate">
			<input type="hidden" value="${bvo.pedate }" name="pedate">
			<input type="hidden" value="${vo.monthnum + bvo.monthnum}" name="monthnum">
		<div class="etc_payment">
			<span style="display:"> <label class="selected"><input
					type="radio" name="pway" class="pay1" id="card" checked="checked" value="신용카드">신용카드</label> <span
				style="display:"><label><input type="radio"
						id="bank1" name="pway" class="pay1" value="무통장입금">무통장입금</label></span>
			</span>
			
		</div>

		<table border="1px solid black" id="aa">
			<tbody>
				<tr>
					<th scope="row">카드선택([기존은행])</th>
					<td bordercolor="red">
						<div id="target">
							<select name="kinds">
							<option>${vo.paydetailvo.kinds}</option>
							<option>국민은행</option>
							<option>하나은행</option>
							<option>기업은행</option>
							<option>농협은행</option>
							<option>신한은행</option>
							<option>새마을금고</option>
							<option>제일은행</option>
							<option>우체국은행</option>			
							</select>


						</div>

					</td>
				</tr>

				<tr>



					<th>카드번호</th>
					<td scope="row"><input type="text" min="1000" max="9999" maxlength="4"  id="cardnumber1"  required="required" value="">-
					<input type="text" min="1000" max="9999" id="cardnumber2" maxlength="4" required="required" value="">-
					<input type="text" min="1000" max="9999" id="cardnumber3" maxlength="4" required="required" value="">-
					<input type="text" min="1000" max="9999" id="cardnumber4" maxlength="4"  required="required" value="">
					<input type="hidden" name="mentnum" id="mentnum" value=""></td>

				</tr>


				<tr>
					<th><label>할부방식</label></th>
					<td><select name="inment">
							<option value="0">일시불</option>
							<option value="1">1개월</option>
							<option value="2">2개월</option>
							<option value="3">3개월</option>
							<option value="4">4개월</option>
							<option value="5">5개월</option>
							<option value="6">6개월</option>
							<option value="7">7개월</option>
							<option value="8">8개월</option>
							<option value="9">9개월</option>
							<option value="10">10개월</option>
							<option value="11">11개월</option>
							<option value="12">12개월</option>
					</select></td>
				</tr>

				<tr>
					<th>결제안내</th>
					<td><a href="#"><span>간편결제안내</span></a> <a href="#"><span>공인인증안내</span></a>
						<a href="#"><span>안전결제안내</span></a> <a href="#"><span>안심클릭안내</span></a>
						<a href="#"><span>해외발급카드안내</span></a></td>
				</tr>
			</tbody>
		</table>
		<div id="PayOnline" style="display: block;">
			<input type="hidden" value="PayMethod_Set"
				name="PayMethod_SetClientID">
			<table id="Table1" cellspacing="1" cellpadding="3" width="670"
				bgcolor="#e54698" border="0"
				style="text-align: left; margin-top: 10px;">
				<tbody>
					<tr>
						<td colspan="2" bgcolor="#fce4ea" style="padding-left: 14px;"
							height="30" class="popup"><input type="radio" value="2"
							name="PayInfoHis" style="cursor: hand" checked="checked"><b>새 입금정보 입력</b></td>
					</tr>
					<tr>
						<td class="popup" height="35" style="padding-left: 14px;"
							width="27%" bgcolor="#fce4ea">입금하실 은행</td>
						<td bgcolor="#ffffff"><select
							style="width: 140px; padding: 5px 0; font-size: 14px;">
								<option>${vo.paydetailvo.kinds}</option>
								<option>국민은행</option>
								<option >기업은행</option>
								<option >농협은행</option>
								<option >시티은행</option>
								<option>신한은행</option>
								<option >우리은행</option>
								<option >우체국은행</option>
								<option >제일은행</option>
								<option >하나은행</option></select></td>
					</tr>
					<tr>
						<td height="35" style="padding-left: 14px;" width="27%"
							bgcolor="#fce4ea">예금주 확인</td>
						<td bgcolor="#ffffff">㈜코스모 클랏쓰</td>
					</tr>
					<tr>
						<td height="35" style="padding-left: 14px;" width="27%"
							bgcolor="#fce4ea">계좌번호 입력</td>
							<td><input type="text" placeholder="계좌번호입력"></td>
					</tr>
					<tr>
						<td class="popup" height="35" style="padding-left: 14px;"
							width="27%" bgcolor="#fce4ea">입금자 성명</td>
						<td bgcolor="#ffffff"><input class="form" type="text"
							maxlength="20" size="20" placeholder="성명" value="${sign.memberinfor.dname}" readonly="readonly"></td>
					</tr>
				</tbody>
			</table>
		</div>

	</div>
	<div class="container">

		<h4>
			<span id="finalPayTxt ">신용카드</span> 최종 결제금액
		</h4>
	</div>
	<div class="final_price container" id="CalcAmount">
		<span id="pay">${bvo.ppay }원</span>
	</div>
	<div>
	
	</div>
	
	<div class="my_agrmt_wrap container">
		<h5>
			<input type="checkbox" id="check" name="chk"> 개인정보 판매자
			제공에 동의합니다.(필수)
		</h5>
		<div>
			<div class="id_agrmt">
				<p>고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, CS가 제한됩니다.</p>
				<table border="1px solid black">
					<p><strong>개인정보 수집 내용</strong></p>
					<colgroup>

					</colgroup>
					<tbody>
						<tr>
							<th>제공받는자</th>
							<td>[코스모 주식회사]</td>
						</tr>
						<tr>
							<th>목적</th>
							<td>잘되나 확인하기 위함 결제를 하기위한</td>
						</tr>
						<tr>
							<th>항목</th>
							<td>성명, 주소, 연락처(안심번호 적용 시 연락처는 제외), 개인통관고유부호(선택시), 
								</td>

						</tr>
						<tr>
							<th>보유기간</th>
							<td>구매확정 후 3개월까지</td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>

	</div>
	<div class="container">
		<h5>
			<input type="checkbox" id="check" name="chk"> 개인정보 수집 및 이용에 동의합니다.(필수)
		</h5>
		<p>고객님께서는 아래 내용에 대하여 동의를 거부하실 수 있으며, 거부 시 상품배송, 구매 및 결제, 일부 포인트
			적립이 제한됩니다.</p>

		<h5>		
			<input type="checkbox" id="check" name="chk">주문 상품정보에 동의합니다.(필수)
		</h5>
		<p>주문 상품의 상품명,가격을 동의합니다.</p>
		<input type="checkbox" id="checkall">위 내용을 모두 확인하였으며, 이 내용에 모두 동의하시겠습니까?(필수)<br>
		<button type="submit" class="btn btn-success" id="button1">결제하기</button>
		<button type="button" class="btn btn-danger" id="button1"
			onclick="location='index'">메인으로</button>

	</div>
</form>
	<script>
	var psdate = '${vo.psdate}';
	var psdate_1 = psdate.substr(0,10);
	
	var cardnumber = '${vo.paydetailvo.mentnum}';	
	var card1 = cardnumber.substr(0,4);
	var card2 = cardnumber.substr(5,4);
	var card3 = cardnumber.substr(10,4);
	var card4 = cardnumber.substr(15,4);
	
		$(function() {
			$('#psdate').val(psdate_1);
			
			$('#cardnumber1').val(card1);
			$('#cardnumber2').val(card2);
			$('#cardnumber3').val(card3);
			$('#cardnumber4').val(card4);
			
			$('#button1').click(function() {
				var cardnumber1 = $('#cardnumber1').val();
				var cardnumber2 = $('#cardnumber2').val();
				var cardnumber3 = $('#cardnumber3').val();
				var cardnumber4 = $('#cardnumber4').val();
				
				$('#mentnum').val(cardnumber1 + "-" + cardnumber2 + "-" + cardnumber3 + "-" + cardnumber4);
			});
			
			$('#aa').show(); //페이지를 로드할 때 표시할 요소
			$('#PayOnline').hide(); //페이지를 로드할 때 숨길 요소
			$('.pay1').change(function() {
				//alert($(this).attr('id'));
				if ($(this).attr('id') === 'bank1') {
					$('#aa').hide();
					$('#PayOnline').show(); //클릭 시 두 번째 요소 표시
				} else {
					$('#aa').show();
					$('#PayOnline').hide();
				}
				
			});
			$(document).ready(function(){
			    //최상단 체크박스 클릭
			    $("#checkall").click(function(){
			        //클릭되었으면
			        if($("#checkall").prop("checked")){
			            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 true로 정의
			            $("input[name=chk]").prop("checked",true);
			            //클릭이 안되있으면
			            alert("모두 동의하시겠습니까?")
			            
			        }else{
			            //input태그의 name이 chk인 태그들을 찾아서 checked옵션을 false로 정의
			            $("input[name=chk]").prop("checked",false);
			            
			        }
			    })
			})
			$('#button1').click(function () {
			       if (!$('#check').is(':checked')) {
			           alert('필수 항목에 동의해주세요.');
			           return false;
			       }
			});
				
		});
	</script>

</body>
</html>
<%@ include file="../include/footer.jsp"%>