<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="..\include\header_index.jsp"%>
<%@ include file="..\include\header_menu.jsp"%>
<link href="resources/css/auction/payment.css?after" rel="stylesheet" />
<style>
.container {
	padding-left: 13.75rem;
}

#title {
	text-align: center;
}
</style>
<section class="projects-section bg-light" id="projects">
	<div id="title">
		<h2>연장 할 개월수를 선택해주세요.</h2>

	</div>
	<div class="container">
		<div id="payment">

			결제 시작일 :<input type="text" value="" readonly="readonly" id="psdate"
				name="psdate"><br> <br> 결제 종료일 :<input type="text"
				value="" id="pedate" name="pedate" readonly="readonly"> <br>
			기존 은행 :<input type="text" value="${vo.paydetailvo.kinds }" id="kinds"
				name="kinds" readonly="readonly"> <br> 기존 카드번호 :<input
				type="text" value="${vo.paydetailvo.mentnum }" id="mentnum"
				name="mentnum" readonly="readonly">
		</div>
	</div>
	<div>
		<form method="post" action="pay1">
			<table id="payment1">
				<tr>
					<td></td>
					<td><input type="button" id="1month" value="선택"></td>
					<td><input type="button" id="3month" value="선택"></td>
					<td><input type="button" id="12month" value="선택"></td>
					<input type="hidden" value="" id="ppay" name="ppay">
					<input type="hidden" value="" id="monthnum" name="monthnum">
					<input type="hidden" value="${user.anum }" name="anum" id="anum">

				</tr>
				<tr>
					<td>개월수</td>
					<td class="basic return"><input type="hidden" value="1"
						id="one">1개월</td>
					<td class="st return"><input type="hidden" value="3"
						id="three">3개월</td>
					<td class="pr return"><input type="hidden" value="12"
						id="twelve">12개월</td>
				</tr>
				<tr>
					<td>가격</td>
					<td class="basic return">29,900</td>
					<td class="st return">23,900</td>
					<td class="pr return">18,900</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="button" value="뒤로" id="ff"
						style="background-color: red;"
						onclick="location='index#footerMenu69'"></td>
					<td><input type="submit" value="다음" id="ee"
						style="background-color: green;"></td>
					<td></td>
				</tr>
			</table>
		</form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		var psdate = '${vo.psdate}';
		var pedate = '${vo.pedate}';
		var ppay = '${vo.ppay}';
		var monthnum = '${vo.monthnum}';

		var month1 = pedate.substr(0, 4) + "-"
				+ (Number(pedate.substr(5, 1)) + 1) + "-" + pedate.substr(7, 2);
		var month3 = pedate.substr(0, 4) + "-"
				+ (Number(pedate.substr(5, 1)) + 3) + "-" + pedate.substr(7, 2);
		var month12 = pedate.substr(0, 4) + "-"
				+ (Number(pedate.substr(5, 1)) + 12) + "-"
				+ pedate.substr(7, 2);

		$(function() {

			$('#psdate').val(psdate);

			$('#1month').click(function() {

				$('#pedate').val(month1);
				$('#ppay').val(ppay + 29900);
				$('#monthnum').val(monthnum + $('#one').val());
				alert("1개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.basic').css('color', 'red');
			});

			$('#3month').click(function() {

				$('#pedate').val(month1);
				$('#ppay').val(ppay + (3*23900);
				$('#monthnum').val(monthnum + $('#three').val());
				alert("3개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.basic').css('color', 'red');
			});

			$('#12month').click(function() {

				$('#pedate').val(month1);
				$('#ppay').val(ppay + (12*18900));
				$('#monthnum').val(monthnum + $('#twelve').val());
				alert("12개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.basic').css('color', 'red');
			});

			$('#ee').click(function() {
				if ($('#dd').val() != "") {
					location = "pay1";
				} else {
					alert('선택해주세요.');
					location = "pay4";
				}
			});

		});
	</script>
</section>


<%@ include file="../include/footer.jsp"%>