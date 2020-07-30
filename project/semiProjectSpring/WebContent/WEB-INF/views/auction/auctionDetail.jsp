
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>

<%@ include file="../include/header_menu.jsp"%>
<link rel="stylesheet" href="resources/css/auction/hyunstyle.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/auction/ggg.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />


<style>
.modal a.close-modal {
	top: 0px;
	right: 0px;
}

.search {
	float: left;
	margin-right: 20px;
}
 
.modal {
	height: unset;
}
@media (min-width: 768px)
.navbar-collapse.collapse {
    height: auto!important;
    padding-bottom: 0;
    overflow: visible!important;
}
</style>
<div id="new" class="collapse navbar-collapse"
	style="width: 1200px; margin: 0 auto; display: block;">
	<div class="container default" style="border-bottom: 1px solid black;">
	<input type="hidden" value="${user.dname}">
	<input type="hidden" value="${user.aid}">
		<div class="row">
			<h2 class="fs-md col-sm-6" style="margin-top: 50px;">
				<strong>${result.subject} [${result.yongdo}]</strong>
			</h2>
			<div class="subSearch col-sm-6 text-right"></div>
		</div>
	</div>
	<div id="container" style="width: 100%; margin-top: 10px;">
		<div id="left" style="float: left; width: 48%;">
			<table style="margin-top: 10px;">
				<tr>
					<td rowspan="11">
					
						<div id="target" class="bul">
							<img src="img/${result.wimage}"onerror="this.src='img/noimg.jpg'" id="main1"
								style="width: 550px; margin: 0 auto;">
						</div>
						<table id="bul" style="width: 550px; height: 110px">
							<tr>
							<td style="width: 25%; float: left;"><img
									src="img/${result.wimage}" class="im"onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								<td style="width: 25%; float: left;"><img
									src="img/${result.imagea}" class="im" onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								<td style="width: 25%; float: left;"><img
									src="img/${result.imageb}" class="im"onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								<td style="width: 25%; float: left;"><img
									src="img/${result.imagec}" class="im"onerror="this.src='img/noimg.jpg'"
									style="width: 137.5px; height: 128px; margin-top: 10px;"></td>
								</tr>
						</table>
				</tr>
			</table>
		</div>
	</div>
	<div id="space" style="float: left; width: 4%;">
		<p></p>
	</div>
	<div id="right" style="float: left; width: 48%">
		<h3></h3>
		<table id="tal"
			style="margin-top: 50px; text-align: center; width: 100%">
			<h1>경매물건정보</h1>
			<tbody style="border-top: 1px solid black;">
				<tr>
					<th><div class="C">물건번호</div></th>
					<td><div class="C Bold">
							<span class='point_blueB'>${result.anum}</span>
						</div></td>
				</tr>
				<tr>
					<th><div class="C">용도</div></th>
					<td><div class="C">${result.yongdo}</div></td>
				</tr>
				<tr>
					<th><div class="C">건물면적</div></th>
					<td><div class="C">${result.bweight}</div></td>
				</tr>
				<tr>
					<th><div class="C">토지면적</div></th>
					<td><div class="C">${result.tweight}</div></td>
				</tr>
				<tr>
					<th><div class="C">남은기간</div></th>
					<td><div class="C timer"></div></td>
				</tr>
				<tr>
					<th class="border0">
						<div class="C">조회수</div>
					</th>
					<td class="border0"><div class="C">${result.hit}</div></td>
				</tr>
			</tbody>
		</table>
		<table id="tal"
			style="border-top: 1px solid black; text-align: center; margin-top: 25px; width: 100%">
			<tr>
				<th>판매자 ID</th>
				<td>${result.bid}</td>
			</tr>
			<tr>
				<td colspan="2"><a href="#ex1" rel="modal:open"
					class="btn btn-primary btn-lg" id="sal">입찰하기</a></td>
					
			</tr>
		</table>
	</div>
	<div
		class="card text-black bg-secondary my-6 py-4 text-center col-lg-12 bg-white">
			<h2>물품 설명</h2>
			<textarea style="overflow: hidden; width: 1100px; height: 500px"
			readonly>
			${result.text}
		</textarea>
			<h2>관리비 내역</h2>
			<textarea style="overflow: hidden; width: 1100px; height: 500px"
			readonly>
			${result.managepee}
		</textarea>
			<h2>개발계획</h2>
			<textarea style="overflow: hidden; width: 1100px; height: 500px"
			readonly>
			${result.bplan}
		</textarea>
	</div>
	<div id="ex1" class="modal">

	
		<div class="modal-body">
			<table class="table-data" id="sellCreditTable" style="width: 100%;">
				<thead>
					<tr>
						<h2>물품내용</h2>
					</tr>
				</thead>
				<tbody>
					<tr>
						<th colspan="2">판매자</th>
						<td colspan="2" id="1">${result.bid}</td>
						
					</tr>
					<tr>
						<th colspan="2">남은기간</th>
						<td colspan="2" class="timer"></td>
					</tr>
					<tr>
						<th colspan="2">입찰단위(만원)</th>
						<td colspan="2" id="3">${result.ipdanwe}</td>
					</tr>
					<tr>
						<th colspan="2">현재가</th>
						<td colspan="2" id="4">${result.hprice}</td>
					</tr>
					<tr>
						<th colspan="2">입찰금액</th>
						<td colspan="2" id="5"><input type="text" name="ipprice" id="ipprice" ></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div class="modal-footer text-center">
			<button onclick="test();" class="btn btn-success btn-lg" data-dismiss="modal" id="click"
				> 신중하게입찰하기</button> <a class="btn btn-danger btn-lg"
				data-dismiss="modal" rel="modal:close">취소</a>
		</div>
	</div>
</div>
<input type="hidden" id="valtest" value="${result.htprice}">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<script>



function test(){
	var ipprice = $("#ipprice").val();
		ipprice = Number(ipprice);
	var ipnum = "${result.ipnum}";
	var bid = "${result.bid}";
	var anum = "${result.anum}";
	var url = "?ipprice=" + ipprice + "&ipnum="+ipnum +"&bid="+bid
	location = 'purchase'+url
	
	console.log(ipprice);
	console.log(typeof(${result.hprice}));
	
	var numvv = $('#valtest').val();
	alert("numvv:"+numvv+"ipprice:"+ipprice);
	if(numvv > $("#ipprice").val()){	
		alert('입찰금액이 현재가 보다 낮습니다. 다시 입력해주세요.')
			location.reload();
	}else{
		alert('입찰되었습니다! 축하드립니다!')
	}
};
	$(document).ready(function() {
		var $node = $('div').children();
		$('.im').click(function() {	
			$('#target img').attr('src', $(this).attr('src'));
			
		});
	});
	function close_pop(flag) {
		$('#ex1').hide();
	};
	
	$('#sal').click(function(event){
		var bid = "${result.bid}";
		var name = "${user.aid}";
		console.log(bid)
		console.log(name)
		if(bid == name){
			alert("판매자와 물건을 등록한 사람이 같습니다. 입찰 할 수 없습니다.")
			event.stopPropagation();
			$('#sal').attr('class', "btn btn-primary btn-lg disabled");
		}if(bid != name){
			alert("경매가 진행중인 물건입니다.")
		}
		if($('.timer').html() == "EXPIRED"){
			event.stopPropagation();
			alert("물건 경매가 마감되었습니다.")
			$('#sal').attr('class', "btn btn-primary btn-lg disabled");
			
		}else{
			
			
		}
		
	});

	

	/* var i= 0;
	var menu =$('#bul > ul > li').length;
	var inter = setInterval(function() {
	if(i>= menu){
		i = 0;
	}
	$('#target img').attr('src',$('#bul > ul > li').eq(i).children().attr('src'));
	i++;
	}, 2000);
	$('#target img').attr('src',$(this).attr('src'));
	}); */
	$(function() {
		var ipprice = $("#ipprice").val();
		ipprice = Number(ipprice);
		console.log(typeof(ipprice));
		console.log(typeof(${result.hprice}));
		
		var countDownDate = new Date("${result.enddate}").getTime();
		// Get today's date and time
		var now = new Date().getTime();
		// Find the distance between now and the count down date
		var distance = countDownDate - now;
		// Update the count down every 1 second
		var days = Math.floor(distance / (1000 * 60 * 60 * 24));
		console.log(distance);
		var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
				/ (1000 * 60 * 60));
		var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
		// Display the result in the element with id="demo"
		$(".timer").html(days + "일" + hours + "시간" + minutes + "분");
		// If the count down is finished, write some text
		if (distance < 0) {
			clearInterval(x);
			$(".timer").html("EXPIRED");
		}
		var x = setInterval(function() {
			// Get today's date and time
			now = new Date().getTime();
			// Find the distance between now and the count down date
			distance = countDownDate - now;
			// Time calculations for days, hours, minutes and seconds
			days = Math.floor(distance / (1000 * 60 * 60 * 24));
			console.log(days);
			hours = Math.floor((distance % (1000 * 60 * 60 * 24))
					/ (1000 * 60 * 60));
			console.log(hours);
			minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
			// Display the result in the element with id="demo"
			$(".timer").html(days + "일" + hours + "시간" + minutes + "분");
			// If the count down is finished, write some text
			if (distance < 0) {
				clearInterval(x);
				$(".timer").html("EXPIRED");
			
			}
		}, 30000);
	})
</script>
<%@ include file="../include/footer.jsp"%>