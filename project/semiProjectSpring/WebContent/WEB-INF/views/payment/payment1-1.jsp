<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>payment 1-1.jsp</title>

</head>

<style>
.container {
	width: 700px;
	height: 700px;
	border: 1px solid black;
	margin: 0 auto;
}

#payment {
	/* width: 700px; */
	height: 300px;
	border-bottom: 1px solid black;
}

#title {
	text-align: center;
}
#payment1{
	width: 700px;
	height: 400px;
	text-align: center;
	border-bottom: 1px solid white;
}
td {
	border-bottom: 2px solid gray;
	border-top: 1px solid white;
	border-left: 1px solid white;
	border-right: 1px solid white;
	color: gray;
	margin-bottom: 10px;
	margin-top: 10px;
	padding: 20px;
}
</style>
<body>
	<section class="projects-section bg-light" id="projects">
		<div id="title">
			<h2>원하는 개월수를 선택해주세요.</h2>
			<h4>맘에 들지 않으신다면, 구독권을 변경하거나 취소 하실 수 있습니다.</h4>
		</div>
		<div class="container">
			<div id="payment">
			구독을 하면 얻게되는 혜택 공인중개사
			</div>
			<form method="post" action="pay1">
				<table id="payment1">
				<tr>
						<td></td>
						<td><input type="button" id="basic" name="basic" value="선택"></td>
						<td><input type="button" id="st" name="st" value="선택"></td>
						<td><input type="button" id="pr" name="pr" value="선택"></td>
						<input type="hidden" value="" id="f1" name="f1">
					</tr>
					<tr>
						<td>개월수</td>
						<td class="basic return">1개월</td>
						<td class="st return">3개월</td>
						<td class="pr return" >12개월</td>
					</tr>
					<tr>
						<td>가격</td>
						<td class="basic return">29,900</td>
						<td class="st return">23,900</td>
						<td class="pr return">18,900</td>
					</tr>
					<tr>
						<td></td>
						<td><input type="button" value="뒤로" id="ee" style="background-color: red;"
							onclick="location='semi.Project?page=community&code=5'"></td>
						<td><input type="submit" value="다음" id="ee"
							style="background-color: green;" onclick="location='pay1'"></td>
						<td></td>
					</tr>
				</table>
				</form>
		</div>
		<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script>
	$(function() {
		$('#basic').click(function() {
			alert("1개월을 선택하셨습니다.");
		
			$('.return').css('color', 'black');
			$('.basic').css('color', 'red');
		});
		$('#st').click(function() {
			alert("3개월을 선택하셨습니다.");
			$('.return').css('color', 'black');
			$('.st').css('color', 'red');
		});
		$('#pr').click(function() {
			alert("12개월을 선택하셨습니다.");
			$('.return').css('color', 'black');
			$('.pr').css('color', 'red');
		});
		$('#basic').click(function() {
			$('#f1').val('29,900원');
		});
		$('#st').click(function() {
			$('#f1').val('23,900원');
		});
		$('#pr').click(function() {
			$('#f1').val('18,900원');
		});

	});

	</script>
	</section>
</body>
</html>