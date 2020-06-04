<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%> 
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
<link rel="stylesheet" href="resources/css/auction/main/bootstrap.css">
<link rel="stylesheet" href="resources/css/auction/main/banner.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/js/swiper.min.js"></script>
<%@ include file="../include/header_menu.jsp"%>
</head>
<body>
	<div style="width: 1500px;margin: 80px auto; ">
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
		  <a class="navbar-brand" href="#">부동산경매         </a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarColor01">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">물건검색 <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">판매관리</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">구매관리</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">부동산등록</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">경매정보</a>
		      </li>
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
				<button class="swiper-button-next swiper-arrow-button swiper-arrow-button-next banner-button-next" style="background-image: url('images/icon/1next.png')"></button>
				<button class="swiper-button-prev swiper-arrow-button swiper-arrow-button-prev banner-button-prev" style="background-image: url('images/icon/1prev.png')"></button>
				<!-- banner bullets -->
				<div class="swiper-pagination banner-bullet"></div>
			</section>
		</div>
		<div id="body"style="width: 100%; height: 100%; margin: auto;">
			<div id="leftcontents" style="position: relative; width: 70%;margin: auto;">
				<div id="searchtop" name="searchtop" style="width: 100%;height:65px;border: 1px solid gray;padding: 10px;"><div class="form-group">
					진행사항:<select class="form-control" id="exampleSelect1"
						style="width: 100px;">
						<option>전체</option>
						<option>신건</option>
						<option>유찰</option>
						<option>진행</option>
						<option>변경</option>
						<option>예정</option>
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
				<div id="datalisttop" style="width: 100%;margin-top: 20px;">
					<div style="float: left;"><button type="button" class="btn btn-primary" style="width: 200px">관심물건등록</button></div>
					<div style="float: left;"><label id="sumres" style="margin-top: 5px;margin-left: 10px;">(총 <b>1,006</b>건)</label></div>  
					<div class="btn-group" role="group" aria-label="Basic example" style="float: right;">
					  <button type="button" class="btn btn-secondary">사건번호순</button>
					  <button type="button" class="btn btn-secondary">감정가순</button>
					  <button type="button" class="btn btn-secondary">최저가순</button>
					  <button type="button" class="btn btn-secondary">매각기일순</button>
					  <button type="button" class="btn btn-secondary">조회수순</button>
					</div>
				</div>   
				<div id="datalist" style="margin-top: 70px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">
								  <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunchk"/>
                                      <label class="custom-control-label" for="sabunchk">사건번호</label>
                                   </div></th>
								<th scope="col" colspan="2">물건용도/소재지/면적</th>
								<th scope="col" colspan="2" style="padding-left: 0px;">감정/최저</th>
								<th scope="col">상태/입찰일/조회수</th>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray;">
							<tr>
								<th id="colchk1" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch1"/>
                                      <label class="custom-control-label" for="sabunch1">2020-0001</label>
                                   </div></th>
								<td id="coltd1_1" style="width: 130px;"><img src="images/kosmo.jpg" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd1_2" style="width: 500px;"><label id="t1addr1_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[아파트형공장]</b><br/>서울 특별시 금천구 가산동 426-5 월드 메르디앙 벤처센터 2차 410호</a></label>
								<br/><label id="t1addr1_2" style="font-size: 11pt;height: 6px;">토지 70.28㎡/건물 226.2㎡</label>
								<br/><label id="t1addr1_3" style="font-size: 11pt;color: red;height: 6px;">유치권</label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">감정</span><br/><span class="badge badge-info">최저</span></td>
								<td style="padding-left:3px;"><b>799,000,000</b><br/><span style="color: blue;"><b>327,270,000</b></span><span style="color: blue;padding-left: 20px;">(41%)</span>
								</td>
								<td style="text-align: center;">진행<br/>2020.05.26<br/>10687</td>
								
							</tr>
							<tr>
								<th id="colchk2" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch2"/>
                                      <label class="custom-control-label" for="sabunch2">2020-0002</label>
                                   </div></th>
								<td id="coltd2_1" style="width: 130px;"><img src="images/ko1.JPG" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd2_2" style="width: 500px;"><label id="t1addr2_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[아파트형공장]</b><br/>서울 특별시 구로구 구로동 197-7번지 에이스테크노타워2 6층 602-1호</a></label>
								<br/><label id="t1addr2_2" style="font-size: 11pt;height: 6px;">토지 35.13㎡/건물 113.1㎡</label>
								<br/><label id="t1addr2_3" style="font-size: 11pt;color: red;height: 6px;"></label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">감정</span><br/><span class="badge badge-info">최저</span></td>
								<td style="padding-left:3px;"><b>393,000,000</b><br/><span style="color: blue;"><b>160,973,000</b></span><span style="color: blue;padding-left: 20px;">(41%)</span>
								</td>
								<td style="text-align: center;">유찰1회<br/>2020.07.17<br/>8846</td>
								
							</tr>
							<tr>
								<th id="colchk3" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch3"/>
                                      <label class="custom-control-label" for="sabunch3">2020-0003</label>
                                   </div></th>
								<td id="coltd3_1" style="width: 130px;"><img src="images/bu2.jpg" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd3_2" style="width: 500px;"><label id="t1addr1_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[주택/빌라]</b><br/>서울 종로구 청운동 52-19번지</a></label>
								<br/><label id="t1addr3_2" style="font-size: 11pt;height: 6px;">토지 6110.28㎡/건물 3280.1㎡</label>
								<br/><label id="t1addr3_3" style="font-size: 11pt;color: red;height: 6px;"></label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">감정</span><br/><span class="badge badge-info">최저</span></td>
								<td style="padding-left:3px;"><b>60,000,000,000</b><br/><span style="color: blue;"><b>30,000,000,000</b></span><span style="color: blue;padding-left: 20px;">(50%)</span>
								</td>
								<td style="text-align: center;">예정<br/>2020.08.21<br/>8604</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div style="width: 100%;">
					<ul class="pagination pagination-sm"
						style="width: 380px; margin: 0 auto;">
						<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
						</li>
						<li class="page-item active"><a class="page-link" href="#">1</a>
						</li>
						<li class="page-item"><a class="page-link" href="#">2</a></li>
						<li class="page-item"><a class="page-link" href="#">3</a></li>
						<li class="page-item"><a class="page-link" href="#">4</a></li>
						<li class="page-item"><a class="page-link" href="#">5</a></li>
						<li class="page-item"><a class="page-link" href="#">6</a></li>
						<li class="page-item"><a class="page-link" href="#">7</a></li>
						<li class="page-item"><a class="page-link" href="#">8</a></li>
						<li class="page-item"><a class="page-link" href="#">9</a></li>
						<li class="page-item"><a class="page-link" href="#">10</a></li>
						<li class="page-item"><a class="page-link" href="#">&raquo;</a>
						</li>
					</ul>
				</div>
			</div>
		</div>
	</div>
		<script type="text/javascript" src="resources/js/auction/auction_main.js"></script>
<%@ include file="../include/footer.jsp"%>
