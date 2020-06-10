<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" href="resources/css/auction/main/bootstrap.css">
<link rel="stylesheet" href="resources/css/auction/main/banner.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<%@ include file="../include/header_menu.jsp"%>
<style>
/* BANNER */
#banner {
	width: 100%;
	height: 300px;
	max-height: 300px;
	min-height: 300px;
	margin-top: 30px;
	margin-bottom: 50px;
}

.banner-wrapper {
	width: 100%;
	height: 100%;
	background-repeat: no-repeat;
	background-position: center;
}

.banner-inner {
	position: absolute;
	top: 0;
	left: 50%;
	width: 100%;
	height: 300px;
	-webkit-transform: translateX(-50%);
	-moz-transform: translateX(-50%);
	-ms-transform: translateX(-50%);
	-o-transform: translateX(-50%);
	transform: translateX(-50%);
}

.banner-button-wrapper {
	position: relative;
	width: 1200px;
	height: 100%;
	max-width: 1200px;
	margin: 0 auto;
}

.banner-bullet {
	bottom: 10px;
	left: 50%;
	z-index: 1;
}

.banner-bullet>span.swiper-pagination-bullet {
	width: 10px;
	height: 10px;
	margin: 0 5px;
}

.banner-bullet>span.swiper-pagination-bullet-active {
	background-color: #ea6946;
}

.r1 {
	background-color: #f5f6f8;
	background-image: url('resources/images/auction/kosmo_bic.jpg');
}

.r2 {
	background-color: #f5f6f8;
	background-image: url('resources/images/auction/ko1.JPG');
}

.r3 {
	background-color: #f5f6f8;
	background-image: url('resources/images/auction/bu2.jpg');
}

.banner-button-prev {
	left: 0;
}

.banner-button-next {
	right: 0;
}

/* ��� �ؽ�Ʈ */
.bantxt {
	position: absolute;
	top: 50%;
	left: 63%;
	width: auto;
	font-size: 20px;
	font-weight: 300;
	-webkit-transform: translate(-50%, -50%);
	-moz-transform: translate(-50%, -50%);
	-ms-transform: translate(-50%, -50%);
	-o-transform: translate(-50%, -50%);
	transform: translate(-50%, -50%);
	white-space: nowrap;
}

.bantxt-bold {
	font-size: 22px;
	font-weight: 600;
}

.bantxt-button {
	position: relative;
	display: inline-block;
	padding: .4em 1em;
	margin-top: 10px;
	overflow: hidden;
	font-size: 16px;
	cursor: pointer;
	border: 1px solid rgba(51, 51, 51, .8);
}

.bantxt-button span {
	z-index: 2;
}

.bantxt-button:after {
	position: absolute;
	top: -50px;
	left: -75px;
	z-index: -1;
	width: 50px;
	height: 155px;
	content: "";
	-webkit-transition: all .55s cubic-bezier(.19, 1, .22, 1);
	-moz-transition: all .55s cubic-bezier(.19, 1, .22, 1);
	-o-transition: all .55s cubic-bezier(.19, 1, .22, 1);
	transition: all .55s cubic-bezier(.19, 1, .22, 1);
	-webkit-transform: rotate(35deg);
	-moz-transform: rotate(35deg);
	-ms-transform: rotate(35deg);
	-o-transform: rotate(35deg);
	transform: rotate(35deg);
	opacity: .2;
	background: #fff;
}

.bantxt-button:hover:after {
	left: 120%;
}

.swiper-button-next {
	opacity: 0.2;
}

.swiper-button-prev {
	opacity: 0.2;
}

.swiper-arrow-button {
	width: 15px;
	height: 28px;
	background-size: 15px 28px;
	margin-top: 0;
	-webkit-transform: translateY(-50%);
	-ms-transform: translateY(-50%);
	transform: translateY(-50%);
	opacity: 0.7;
	border: none;
	background: none;
	background-repeat: no-repeat;
	background-position: center;
	padding: 2em;
}

.swiper-arrow-button:hover {
	opacity: 1;
}

.swiper-arrow-button-prev {
	background-image: url(resources/images/auction/icon/1prev.png);
}

.swiper-arrow-button-next {
	background-image: url(resources/images/auction/icon/1next.png);
}

#fsubject {
	position: relative;
	font-size: 1.3em;
	font-weight: 500;
	word-break: keep-all;
	margin-right: 10px;
	padding-left: 15px;
}
</style>
</head>
<body>
	<div style="width: 1500px; margin: 80px auto;">

		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
			<a class="navbar-brand" href="#">부동산경매 </a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor01" aria-controls="navbarColor01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">물건검색<span
							class="sr-only">(current)</span></a></li>
					<li class="nav-item"><a class="nav-link" href="#">판매관리</a></li>
					<li class="nav-item"><a class="nav-link" href="#">구매관리</a></li>
					<li class="nav-item"><a class="nav-link" href="auctionAdd">부동산등록</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">경매정보</a></li>
				</ul>
			</div>
		</nav>
		<div>
			<section id="banner" class="swiper-container main-banner-container">
				<div class="swiper-wrapper">
					<div class="swiper-slide banner-wrapper r1"
						style="cursor: pointer;" onclick=""></div>
					<div class="swiper-slide banner-wrapper r2"
						style="cursor: pointer;" onclick=""></div>
					<div class="swiper-slide banner-wrapper r3"
						style="cursor: pointer;" onclick=""></div>
				</div>
				<!-- banner arrow -->
				<button
					class="swiper-button-next swiper-arrow-button swiper-arrow-button-next banner-button-next"></button>
				<button
					class="swiper-button-prev swiper-arrow-button swiper-arrow-button-prev banner-button-prev"></button>
				<!-- banner bullets -->
				<div class="swiper-pagination banner-bullet"></div>
			</section>
		</div>
		<div id="body" style="width: 100%; height: 100%; margin: auto;">
			<div id="leftcontents"
				style="position: relative; width: 80%; margin: auto;">
				<div id="searchtop" name="searchtop"
					style="width: 100%; height: 65px; border: 1px solid gray; padding: 10px;">
					<div class="form-group">
						진행사항:<select class="form-control" id="exampleSelect1"
							style="width: 100px;">
							<option>전체</option>
							<option>신건</option>
							<option>유찰</option>
							<option>진행</option>
							<option>낙찰</option>
						</select> 물건용도:<select class="form-control" id="exampleSelect2"
							style="width: 100px;">
							<option>전체</option>
							<option>아파트</option>
							<option>주택/빌라</option>
							<option>상업/업무</option>
							<option>공장/창고</option>
							<option>토지</option>
							<option>기타</option>
						</select>
					</div>
				</div>
				<div id="datalisttop" style="width: 100%; margin-top: 20px;">
					<div class="btn-group" role="group" aria-label="Basic example"
						style="float: left;">
						<input type="button" id="lowpBtn" name="lowpBtn" class="btn btn-outline-primary" value="최저가순 ▲"/>
						<input type="hidden" id="lowpBtnh" name="lowpBtnh" value="0"/>
						<input type="button" id="maeBtn" name="maeBtn" class="btn btn-outline-primary" value="매각기일순 ▲"/>
						<input type="hidden" id="maeBtnh" name="maeBtnh" value="0"/>
						<input type="button" id="hitBtn" name="hitBtn" class="btn btn-outline-primary" value="조회수순 ▲"/>
						<input type="hidden" id="hitBtnh" name="hitBtnh" value="0"/>
					</div>
					<div style="float: left;">
						<label id="sumres" style="margin-top: 5px; margin-left: 10px;">(총
							<b>${paging.total}</b>건)
						</label>
					</div>
				</div>
				<div id="datalist" style="margin-top: 70px;">
					<table class="table table-hover" border="1">
						<thead>
							<tr>
								<th scope="col"></th>
								<th scope="col"></th>
								<th scope="col">제목/물건용도/주소지/토지면적/건물면적/경매만료일</th>
								<th scope="col" colspan="2">시작가/현재가</th>
								<th scope="col">상태/등록일/조회수</th>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray; font-size: 1rem;">
							<c:forEach var="list" items="${list}">
								<tr>
									<th></th>
									<th id="colchk1" scope="row" style="width: 130px;"><img
										src="img/${list.wimage}"
										style="width: 120px; height: 120px; float: left;"></th>
									<td id="coltd1_2" style="width: 630px;"><label
										id="t1addr1_1"><a
											href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4"
											style="color: black;"><span id="mainsubject">${list.subject}</span><br />
											<b>[${list.yongdo}]</b><br />${list.addr}</a></label> <br />
									<label id="t1addr1_2" style="font-size: 11pt; height: 6px;">토지면적
											${list.tweight}㎡/건물면적 ${list.bweight}㎡</label><br />
									<label id="t1addr1_3" style="font-size: 11pt; height: 6px;"><b>경매만료기일</b>&nbsp;&nbsp;<span
											style="color: blue; font-weight: bold;">${list.enddate}</span></label>
									</td>
									<td style="padding-left: 0px; padding-right: 0px;"><span
										class="badge badge-primary" style="font-size: 8pt;">시작가</span><br />
									<span class="badge badge-info" style="font-size: 8pt;">현재가</span></td>
									<td style="padding-left: 3px;"><b>${list.ideprice}</b><br />
									<span style="color: blue;"><b>${list.hprice}</b></span></td>
									<td style="text-align: center;">${list.status}<br />${list.indate}<br />${list.hit}</td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
				<div style="width: 100%">
					<ul class="pagination" style="width:300px;margin: 0 auto;">
						<c:choose>
							<c:when test="${paging.startPage != 1 }">
								<li class="page-item"><a class="page-link"
									href="auctionMain?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}">&laquo;</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link"
									href="#">&laquo;</a></li>
							</c:otherwise>
						</c:choose>
						<c:forEach begin="${paging.startPage}" end="${paging.endPage}" var="p">
							<c:choose>
								<c:when test="${p == paging.nowPage }">
									<li class="page-item active"><a class="page-link" href="#">${p}</a></li>
								</c:when>
								<c:when test="${p != paging.nowPage }">
									<li class="page-item"><a class="page-link" href="auctionMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}">${p}</a></li>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${paging.endPage != paging.lastPage}">
								<li class="page-item"><a class="page-link" href="auctionMain?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}">&raquo;</a></li>
							</c:when>
							<c:otherwise>
								<li class="page-item disabled"><a class="page-link" href="#">&raquo;</a></li>
							</c:otherwise>
						</c:choose>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<script>
	$(document).ready(function() {
		var swiper = new Swiper('.main-banner-container', {
			effect : 'fade',
			fadeEffect : {
				crossFade : true
			},
			speed : 700,
			centeredSlides : true,
			loop : true,
			autoplay : {
				delay : 3000,
				disableOnInteraction : false
			},
			navigation : {
				nextEl : '.banner-button-next',
				prevEl : '.banner-button-prev',
			},
			pagination : {
				el : '.banner-bullet',
				type : 'bullets',
				clickable : true,
			},
		});
		set_bantxt();
		
		$('#lowpBtn').click(function(){
			var lbta = $('#lowpBtnh').val(); 
			if(lbta==='0'){
				$('#lowpBtn').val('최저가순 ▼');
				$('#lowpBtnh').val('1');
				
				
				
				
				
			}else{
				$('#lowpBtn').val('최저가순 ▲');
				$('#lowpBtnh').val('0');
			}
		});
		
		$('#maeBtn').click(function(){
			var lbtb = $('#maeBtnh').val(); 
			if(lbtb==='0'){
				$('#maeBtn').val('매각기일순 ▼');
				$('#maeBtnh').val('1');
			}else{
				$('#maeBtn').val('매각기일순 ▲');
				$('#maeBtnh').val('0');
			}
		});
		
		$('#hitBtn').click(function(){
			var lbtc = $('#hitBtnh').val(); 
			if(lbtc==='0'){
				$('#hitBtn').val('조회수순 ▼');
				$('#hitBtnh').val('1');
			}else{
				$('#hitBtn').val('조회수순 ▲');
				$('#hitBtnh').val('0');
			}
		});
		
		
	});
	
	function set_bantxt() {
		$.each(bantxt, function(i, v) {
			$('.' + i).append(v);
		});
	}
	
	var bantxt = {
		"r1" :
	        '<p class="bantxt" style="color:#70727f; left: 20%;"><span class="bantxt-bold">[아파트형공장]</span><br>'+
	            '<span class="bantxt-bold">서울 특별시 금천구 가산동 426-5 월드 메르디앙 <br>벤처 센터2차 410호</span><br>'+
	            '<span class="bantxt-bold">[최저가]324,270,000</span>'+
	        '</p>',
        "r2" :
	        '<p class="bantxt" style="color:#70727f; left: 80%;"><span class="bantxt-bold">[아파트형공장]</span><br>'+
	            '<span class="bantxt-bold">서울 특별시 구로구 구로동 197-7번지 에이스  <br>테크노 타워 2 6층 602-1호</span><br>'+
	            '<span class="bantxt-bold">[최저가]160,973,000</span>'+
	        '</p>',
		"r3" :
	        '<p class="bantxt" style="color:#70727f; left: 20%;"><span class="bantxt-bold">[주택/빌라]</span><br>'+
	            '<span class="bantxt-bold">서울 종로구 청운동 52-19번지</span><br>'+
	            '<span class="bantxt-bold">[최저가]30,000,000,000</span>'+
	        '</p>'
	};
	</script>
	<%@ include file="../include/footer2.jsp"%>