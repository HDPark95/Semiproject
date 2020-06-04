<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>

<link rel="stylesheet" href="resources/css/auction/hyunstyle.css" />
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/auction/ggg.css" />
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<%@ include file="../include/header_menu.jsp"%>





	<div id="new" class="collapse navbar-collapse" style="width: 1200px; margin: 0 auto; display: block;">
		<div class="container default" style="border-bottom: 1px solid black;">

			<div class="row">
				<h2 class="fs-md col-sm-6" style="margin-top: 50px;">
					<strong>아파트/무슨무슨아파트</strong>
				</h2>
				<div class="subSearch col-sm-6 text-right"></div>
			</div>
		</div>
		<div id="container" style="width: 100%; margin-top: 10px;">
			<div id="left" style="float: left; width: 48%;">
				<table style="margin-top: 100px;">
					<tr>

						<td rowspan="11">
							<div id="target" class="bul">
								<img src="resources/img/auction/bul1.png" id="main1"
									style="width: 550px; margin: 0 auto;">
							</div>
							<div id="bul">

								<ul>
									<li><img src="resources/images/seulgi.jpg" class="im" style="width: 120px; height: 100px; margin-top: 10px;"></li>
									<li><img src="resources/images/seulgi.jpg" class="im" style="width: 120px;  height: 100px; margin-top: 10px;"></li>
									<li><img src="resources/images/seulgi.jpg" class="im" style="width: 120px;  height: 100px; margin-top: 10px;"></li>
									<li><img src="resources/images/seulgi.jpg" class="im" style="width: 120px;  height: 100px; margin-top: 10px;"></li>
								</ul>
							</div>
					</tr>
				</table>
					<div class="topma bg-white">
					<ul class="nav nav-tabs ">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">임차인관계</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">배당표</a></li>
				<li class="nav-item"><a class="nav-link " data-toggle="tab"
					href="#">등등</a></li>
					<li class="nav-item"><a class="nav-link " data-toggle="tab"
					href="#">드르르르등</a></li>
					

			</ul>
						
		




			<div id="myTabContent" class="tab-content bg-white container">

				<div
					
					style="text-align: center;" id="home">

					<table class="type11">

						<tbody>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td></td>
								<td></td>
								<td></td>
							</tr>

						</tbody>
					</table>

					<div class="container topma">
						<table class="type12">
							<thead>
								<tr>
									<th scope="cols"><h1> !</h1>
									<p> </p>
									</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td><h2>임자인배당내용 </h2> <pre>
  </pre></td>
								</tr>

							</tbody>
						</table>



					</div>

				</div>

		</div>

	</div>
				</div>

			</div>
			<div id="space" style="float: left; width: 4%;">
				<p></p>
			</div>
			<div id="right" style="float: left; width: 48%">
				<h3></h3>
				<table id="tal" style="margin-top: 50px; text-align: center;">
					<h1>매물정보</h1>

					<tbody style="border-top: 1px solid black;">

						<tr>
							<th><div class="C">최저가</div></th>
							<td><div class="C Bold">
									<span class='point_blueB'></span>
								</div></td>
						</tr>
						<tr>
							<th><div class="C">입찰보증금</div></th>
							<td><div class="C">1,000,000,000</div></td>
						</tr>
						<tr>
							<th><div class="C">용도</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">건물면적</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">토지면적</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">경매대상</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">진행단계</div></th>
							<td><div class="C Bold"></div></td>
						</tr>
						<tr>
							<th><div class="C">법원</div></th>
							<td><div class="C">
						</tr>
						<tr>
							<th class="border0">
								<div class="C">조회수</div>
							</th>
							<td class="border0"><div class="C"></div></td>
						</tr>

						<tr class="grayArea">
							<th><div class="C">경매상담신청</div></th>
							<td></td>
						</tr>
					</tbody>
				</table>
				<table id="tal"
					style="border-top: 1px solid black; text-align: center; margin-top: 25px;" >
					<tr>
						<th>판매자 ID</th>
						<td>uam1920</td>
					</tr>
					<tr>
						<th>판매자 신용도</th>
						<td></td>
					</tr>
				</table>

				<div id="ex1" class="modal">
					<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"></button>
					<h4 class="modal-title"><strong>판매자 신용도</strong></h4>
				</div>
				
					<div class="modal-body">
						
				    <table class="table-data" id="sellCreditTable">
				        <thead>
				            <tr>
				         	<h2>물품내용</h2>
			                </tr>
			            </thead>
				        <tbody >
							<tr>
				                <th colspan="2">판매자</th>
				                <td colspan="2" id="1">jbejsm</td>
			                </tr>
				            <tr>
				                <th colspan="2">남은기간</th>
				                <td colspan="2" id="2">45 건</td>
			                </tr>
				            <tr>
				                <th colspan="2">입찰단위</th>
				                <td colspan="2" id="3">0 건</td>
			                </tr>
				            <tr>
				                <th colspan="2">현재가</th>
				                <td colspan="2" id="4">0 건</td>
			                </tr>
				            <tr>
				                <th colspan="2">입찰금액</th>
				                <td colspan="2" id="5">100 %</td>
			                </tr>
				            <tr>
				                <th colspan="2">총 입찰금액</th>
				                <td colspan="2" id="6">30 건</td>
			                </tr>
			            </tbody>
			        </table>

					</div>

					<div class="modal-footer text-center">
						<a href="#." class="btn btn-blue btn-md" data-dismiss="modal">입찰하기</a>
					</div>
			</div>
				</div>
				
					<div class="search">
						<p class="col-sm-4 btn-block-xs"style="font-size: 140%;">
							<a href="#ex1" rel="modal:open"
								class="btn btn-primary btn-lg">입찰하기</a>
						</p>

						<p class="col-sm-4 btn-block-xs"style="font-size: 140%;">
							<a href=""
								class="btn btn-success btn-lg" style="padding: 3px 0px;">관심물품등록</a>
						</p>
						<p class="col-sm-4 btn-block-xs" style="font-size: 140%;">
						 <a href=""
								class="btn btn-danger btn-lg">문의하기</a>
						</p>

					</div>
				
			</div>
	
		</div>
		





	<script
		src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

<script>
	$(document).ready(function() {
		var $node = $('div').children();

		$('.im').click(function() {

			$('#target img').attr('src', $(this).attr('src'));
		});
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
</script>
	
	
<%@ include file="../include/footer.jsp"%>
	