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
		<h4>맘에 들지 않으신다면, 구독권을 변경하거나 취소 하실 수 있습니다.</h4>
	</div>
	<div class="container">
		<form method="post" action="premiumProlongpay" id="premiumProlongpay">
		<div id="payment">
			구독을 하면 얻게되는 혜택 공인중개사<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div> 
				구독 종료일  :<input type="text" value="" id="cc" readonly="readonly"><br>
				<br> 연장된 종료일 :<input type="text" value="" id="dd"
					readonly="readonly">
			</div>
		</div>

			<table id="payment1">
				<tr>
					<td></td>
					<td><input type="button" id="basic" name="basic" value="선택"></td>
					<td><input type="button" id="st" name="st" value="선택"></td>
					<td><input type="button" id="pr" name="pr" value="선택"></td>
					<input type="hidden" value="" id="ppay" name="ppay">
					<input type="hidden" value="" id="psdate" name="psdate">
					<input type="hidden" value="" id="pedate" name="pedate">
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
					<td class="basic return">29,900 </td>
					<td class="st return">23,900月</td>
					<td class="pr return">18,900月</td>
				</tr>
				<tr>
					<td></td>
					<td><input type="button" value="뒤로" id="ff"
						style="background-color: red;"
						onclick="location='index#footerMenu69'"></td>
					<td><input type="button" value="다음" id="ee"
						style="background-color: green;" ></td>
					<td></td>
				</tr>
			</table>
		</form>
	</div>
	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
		var date = new Date();
		date = date.getFullYear() + "-" + (date.getMonth() + 1) + "-"
				+ date.getDate();
		var month = new Date();
		month = month.getFullYear() + "-" + (month.getMonth() + 2) + "-"
				+ month.getDate();
		var month1 = new Date();
		month1 = month1.getFullYear() + "-" + (month1.getMonth() + 4) + "-"
				+ month1.getDate();
		var month2 = new Date();
		month2 = (month2.getFullYear() + 1) + "-" + (month2.getMonth() + 1)
				+ "-" + (month2.getDate() - 1);
		
		
		

		$(function() {
			
			var psdate = "${vo.pedate}";
			var psdate_d = psdate.substr(0,10);
			
			var prolong = "${vo.pedate}";
			
			var re_prolong1 = prolong.substr(0,4) + "-"+ (Number(prolong.substr(5,2))+1 )+ "-" + prolong.substr(8,2) ; 
			var re_prolong3 = prolong.substr(0,4) + "-"+ (Number(prolong.substr(5,2))+3 )+ "-" + prolong.substr(8,2) ; 
			var re_prolong12 = (Number(prolong.substr(0,4))+1)+"-"+prolong.substr(5,2)+"-"+prolong.substr(8,2); 
			
			
			console.log((Number(re_prolong3.substr(5,2)) ));
			console.log(typeof((Number(prolong.substr(5,2))+3 )));
			
			$('#cc').val(psdate_d);
			
			$('#basic').click(function() {

				
				

				alert("1개월을 선택하셨습니다.");

				$('.return').css('color', 'black');
				$('.basic').css('color', 'red');
				$('#ppay').val(29900);
				$('#psdate').val(psdate_d);
				if(Number(re_prolong1.substr(5,2)) > 12 ){
				var month =	Number(re_prolong1.substr(5,2) - 12) ;
				rere_prolong1 = (Number(prolong.substr(0,4))+1) + "-"+ month + "-" + prolong.substr(8,2) ; 
					$('#pedate').val(rere_prolong1);
					$('#dd').val(rere_prolong1);
					console.log(rere_prolong1);
				}else{
					$('#pedate').val(re_prolong1);
					$('#dd').val(re_prolong1);
					console.log(re_prolong1);
				}
				
				
				$('#monthnum').val($('#one').val());

			});
			$('#st').click(function() {
				console.log($('#f1').val())
			
				
				alert("3개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.st').css('color', 'red');
				$('#ppay').val(23900 * 3);
				$('#psdate').val(psdate_d);
				if(Number(re_prolong3.substr(5,2)) > 12 ){
				var month =	Number(re_prolong3.substr(5,2) - 12) ;
				rere_prolong3 = (Number(prolong.substr(0,4))+1) + "-"+ month + "-" + prolong.substr(8,2) ; 
					$('#pedate').val(rere_prolong3);
					$('#dd').val(rere_prolong3);
					console.log(rere_prolong3);
				}else{
					$('#pedate').val(re_prolong3);
					$('#dd').val(re_prolong3);
					console.log(re_prolong3);
				}
				
				$('#monthnum').val($('#three').val());
			});
			$('#pr').click(function() {
				console.log($('#f1').val())
				
				$('#dd').val(re_prolong12);
				alert("12개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.pr').css('color', 'red');
				$('#ppay').val(18900 * 12);
				$('#psdate').val(psdate_d);
				$('#pedate').val(re_prolong12);
				$('#monthnum').val($('#twelve').val());
			});
			

			$('#ee').click(function() {
				if ($('#dd').val() == "") {
					alert('선택해주세요.');
				} else{
					$("#premiumProlongpay").submit();
				}
					
					
				
			});
	
			

		});
	</script>

</section>


<%@ include file="../include/footer.jsp"%>