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
						진행사항:<select class="form-control" id="statussel"
							style="width: 100px;">
							<option value="0">전체</option>
							<option value="1">신건</option>
							<option value="2">유찰</option>
							<option value="3">진행</option>
							<option value="4">낙찰</option>
						</select> 물건용도:<select class="form-control" id="mulgun"
							style="width: 100px;">
							<option value="0">전체</option>
							<option value="1">아파트</option>
							<option value="2">주택/빌라</option>
							<option value="3">상업/업무</option>
							<option value="4">공장/창고</option>
							<option value="5">토지</option>
							<option value="6">기타</option>
						</select>
					</div>
				</div>
				<div id="datalisttop" style="width: 100%; margin-top: 20px;">
					<div class="btn-group" role="group" aria-label="Basic example"
						style="float: left;">
						<input type="button" id="lowpBtn" name="lowpBtn" class="btn btn-outline-primary" value="최저가순 ▲"/>
						<input type="button" id="maeBtn" name="maeBtn" class="btn btn-outline-primary" value="매각기일순 ▲"/>
						<input type="button" id="hitBtn" name="hitBtn" class="btn btn-outline-primary" value="조회수순 ▲"/>
						<input type="hidden" id="sortindex" name="sortindex" value="${paging.sortindex}"/>
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
						<%@ include file="auction_mainview.jsp"%>
						</tbody>
					</table>
				</div>
				<div style="width: 100%">
					<ul class="pagination" style="width:300px;margin: 0 auto;">
						<c:choose>
							<c:when test="${paging.startPage != 1 }">
								<li class="page-item"><a class="page-link"
									href="auctionMain?nowPage=${paging.startPage - 1 }&cntPerPage=${paging.cntPerPage}&sortindex=${paging.sortindex}&statussel=${paging.statussel}&mulgun=${paging.mulgun}">&laquo;</a></li>
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
									<li class="page-item"><a class="page-link" href="auctionMain?nowPage=${p }&cntPerPage=${paging.cntPerPage}&sortindex=${paging.sortindex}&statussel=${paging.statussel}&mulgun=${paging.mulgun}">${p}</a></li>
								</c:when>
							</c:choose>
						</c:forEach>
						<c:choose>
							<c:when test="${paging.endPage != paging.lastPage}">
								<li class="page-item"><a class="page-link" href="auctionMain?nowPage=${paging.endPage+1 }&cntPerPage=${paging.cntPerPage}&sortindex=${paging.sortindex}&statussel=${paging.statussel}&mulgun=${paging.mulgun}">&raquo;</a></li>
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
		//값세팅하기
		//alert($('#sortindex').val());
		if($('#sortindex').val()==='1'){
			$('#lowpBtn').val('최저가순 ▲');
			$('#lowpBtn').attr('class','btn btn-outline-primary active')
		}else if($('#sortindex').val()==='2'){
			$('#lowpBtn').val('최저가순 ▼');
			$('#lowpBtn').attr('class','btn btn-outline-primary active')
		}else if($('#sortindex').val()==='3'){
			$('#maeBtn').val('매각기일순 ▲');
			$('#maeBtn').attr('class','btn btn-outline-primary active')
		}else if($('#sortindex').val()==='4'){
			$('#maeBtn').val('매각기일순 ▼');
			$('#maeBtn').attr('class','btn btn-outline-primary active')
		}else if($('#sortindex').val()==='5'){
			$('#hitBtn').val('조회수순 ▲');
			$('#hitBtn').attr('class','btn btn-outline-primary active')
		}else if($('#sortindex').val()==='6'){
			$('#hitBtn').val('조회수순 ▼');
			$('#hitBtn').attr('class','btn btn-outline-primary active')
		}
		
		$('#statussel').val(${param.statussel});
		$('#mulgun').val(${param.mulgun});
		
		//소팅
		$('#lowpBtn').click(function(){
			$('#lowpBtn').attr('class','btn btn-outline-primary active')
			var lbta = $('#sortindex').val(); 
			if(lbta==='1'){
				location.href = "auctionMain?sortindex=2&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
			}else{
				location.href = "auctionMain?sortindex=1&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
			}
		});
		
		$('#maeBtn').click(function(){
			$('#maeBtn').attr('class','btn btn-outline-primary active')
			var lbtb = $('#sortindex').val();
			if(lbtb==='3'){
				location.href = "auctionMain?sortindex=4&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
			}else{
				location.href = "auctionMain?sortindex=3&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
			}
		});
		
		$('#hitBtn').click(function(){
			$('#maeBtn').attr('class','btn btn-outline-primary active')
			var lbtc = $('#sortindex').val(); 
			if(lbtc==='5'){
				location.href = "auctionMain?sortindex=6&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
			}else{
				location.href = "auctionMain?sortindex=5&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
			}
		});
		//진행사항/물건용도
		$('#statussel').change(function(){
			location.href ="auctionMain?sortindex="+$('#sortindex').val()+"&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
		});
		
		$('#mulgun').change(function(){
			location.href ="auctionMain?sortindex="+$('#sortindex').val()+"&statussel="+$('#statussel').val()+"&mulgun="+$('#mulgun').val();
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
	