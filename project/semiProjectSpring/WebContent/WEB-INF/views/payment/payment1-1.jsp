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
		<h2>원하는 개월수를 선택해주세요.</h2>
		<h4>맘에 들지 않으신다면, 구독권을 변경하거나 취소 하실 수 있습니다.</h4>
	</div>
	<div class="container">
		<div id="payment">
			구독을 하면 얻게되는 혜택 공인중개사<br><br><br><br><br><br> <div>결제 시작일 :<input type="text" value=""
				id="cc" readonly="readonly"><br><br> 결제 종료일 :<input type="text" value=""
				id="dd" readonly="readonly">
				</div>
		</div>
			
		<form method="post" action="pay1">
			<table id="payment1">
				<tr>
					<td></td>
					<td><input type="button" id="basic" name="basic" value="선택"></td>
					<td><input type="button" id="st" name="st" value="선택"></td>
					<td><input type="button" id="pr" name="pr" value="선택"></td>
					<input type="hidden" value="" id="f1" name="f1">	
					<input type="hidden" value="" id="cc1" name="cc1">	
					<input type="hidden" value="" id="dd1" name="dd1">	
					<input type="hidden" value="" id="monthnum" name="monthnum">	
					<input type="hidden" value="${user.anum }" name="pnum" id="pnum">
					
				</tr>
				<tr>
					<td>개월수</td>
					<td class="basic return"><input type="hidden" value="1" id="one">1개월</td>
					<td class="st return"><input type="hidden" value="3" id="three">3개월</td>
					<td class="pr return"><input type="hidden" value="12" id="twelve">12개월</td>
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
					<td><input type="button" value="다음" id="ee"
						style="background-color: green;"></td>
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
		month2 = (month2.getFullYear()+1) + "-" + (month2.getMonth()+1) + "-"
				+ (month2.getDate()-1);
		
		$(function() {
			$('#basic').click(function() {

				$('#cc').val(date);
				$('#dd').val(month);
				
				alert("1개월을 선택하셨습니다.");

				$('.return').css('color', 'black');
				$('.basic').css('color', 'red');
			});
			$('#st').click(function() {
				console.log($('#f1').val())
				$('#cc').val(date);
				$('#dd').val(month1);
				alert("3개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.st').css('color', 'red');
			});
			$('#pr').click(function() {
				console.log($('#f1').val())
				$('#cc').val(date);
				$('#dd').val(month2);
				alert("12개월을 선택하셨습니다.");
				$('.return').css('color', 'black');
				$('.pr').css('color', 'red');
			});
			$('#basic').click(function() {
				$('#f1').val(29900);
				$('#cc1').val(date);
				$('#dd1').val(month);
				$('#monthnum').val($('#one').val());
				
			});
			$('#st').click(function() {
				$('#f1').val(23900*3);
				$('#cc1').val(date);
				$('#dd1').val(month1);
				$('#monthnum').val($('#three').val());
				
			});
			$('#pr').click(function() {
				$('#f1').val(18900*12);
				$('#cc1').val(date);
				$('#dd1').val(month2);
				$('#monthnum').val($('#twelve').val());
				
			});	
			
			$('#ee').click(function(){
				if($('#cc').val() == ""){
					alert('선택해주세요.');
				}else if($('#cc').val() != ""){
						var url = "pay1?ppay="+$('#f1').val()+"&psdate="+$('#cc1').val()+"&pedate="+$('#dd1').val()+
						"&monthnum="+$('#monthnum').val()+"&pnum="+$('#pnum').val();
					console.log(url);
					$.ajax({
						url : url,
						success : function(data){
						},
							error : function(data){
								console.log(data);
							}
					});
				};
				});
			
		});
		
	</script>
</section>


<%@ include file="../include/footer.jsp"%>