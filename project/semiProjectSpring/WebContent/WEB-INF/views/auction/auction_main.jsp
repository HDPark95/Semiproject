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
		  <a class="navbar-brand" href="#">遺곌꼍留  </a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarColor01">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">臾쇨굔寃 <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">留ㅺ由</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">援щℓ愿由</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">遺곕깅</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">寃쎈ℓ�蹂</a>
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
					吏ы:<select class="form-control" id="exampleSelect1"
						style="width: 100px;">
						<option>�泥</option>
						<option>嫄</option>
						<option>李</option>
						<option>吏</option>
						<option>蹂寃</option>
						<option>�</option>
						<option>李</option>
					</select> 臾쇨굔⑸:<select class="form-control" id="exampleSelect2"
						style="width: 100px;">
						<option>�泥</option>
						<option></option>
						<option>二쇳/鍮</option>
						<option>/臾</option>
						<option>怨듭/李쎄�</option>
						<option>吏</option>
						<option>湲고</option>
					</select>
					</div>
				  </div>
				<div id="datalisttop" style="width: 100%;margin-top: 20px;">
					<div style="float: left;"><button type="button" class="btn btn-primary" style="width: 200px">愿щЪ嫄대깅</button></div>
					<div style="float: left;"><label id="sumres" style="margin-top: 5px;margin-left: 10px;">(珥 <b>1,006</b>嫄)</label></div>  
					<div class="btn-group" role="group" aria-label="Basic example" style="float: right;">
					  <button type="button" class="btn btn-secondary">ш굔踰몄</button>
					  <button type="button" class="btn btn-secondary">媛�媛</button>
					  <button type="button" class="btn btn-secondary">理�媛</button>
					  <button type="button" class="btn btn-secondary">留ㅺ湲곗쇱</button>
					  <button type="button" class="btn btn-secondary">議고</button>
					</div>
				</div>   
				<div id="datalist" style="margin-top: 70px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">
								  <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunchk"/>
                                      <label class="custom-control-label" for="sabunchk">ш굔踰</label>
                                   </div></th>
								<th scope="col" colspan="2">臾쇨굔⑸/ъ/硫댁</th>
								<th scope="col" colspan="2" style="padding-left: 0px;">媛�/理�</th>
								<th scope="col">/李곗/議고</th>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray;">
							<tr>
								<th id="colchk1" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch1"/>
                                      <label class="custom-control-label" for="sabunch1">2020-0001</label>
                                   </div></th>
								<td id="coltd1_1" style="width: 130px;"><img src="images/kosmo.jpg" style="width: 120px;height: 120px;float: left;"></td>

								<td id="coltd1_2" style="width: 500px;"><label id="t1addr1_1"><a href="http://localhost:8080/uiProject/semi.Project?page=ggg" style="color: black;"><b>[아파트형공장]</b><br/>서울 특별시 금천구 가산동 426-5 월드 메르디앙 벤처센터 2차 410호</a></label>
								<br/><label id="t1addr1_2" style="font-size: 11pt;height: 6px;">토지 70.28㎡/건물 226.2㎡</label>
								<br/><label id="t1addr1_3" style="font-size: 11pt;color: red;height: 6px;">유치권</label>

								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">媛�</span><br/><span class="badge badge-info">理�</span></td>
								<td style="padding-left:3px;"><b>799,000,000</b><br/><span style="color: blue;"><b>327,270,000</b></span><span style="color: blue;padding-left: 20px;">(41%)</span>
								</td>
								<td style="text-align: center;">吏<br/>2020.05.26<br/>10687</td>
								
							</tr>
							<tr>
								<th id="colchk2" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch2"/>
                                      <label class="custom-control-label" for="sabunch2">2020-0002</label>
                                   </div></th>
								<td id="coltd2_1" style="width: 130px;"><img src="images/ko1.JPG" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd2_2" style="width: 500px;"><label id="t1addr2_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[명怨듭]</b><br/> 밸 援щ援 援щ 197-7踰吏 댁ㅽщ명2 6痢 602-1</a></label>
								<br/><label id="t1addr2_2" style="font-size: 11pt;height: 6px;">吏 35.13/嫄대Ъ 113.1</label>
								<br/><label id="t1addr2_3" style="font-size: 11pt;color: red;height: 6px;"></label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">媛�</span><br/><span class="badge badge-info">理�</span></td>
								<td style="padding-left:3px;"><b>393,000,000</b><br/><span style="color: blue;"><b>160,973,000</b></span><span style="color: blue;padding-left: 20px;">(41%)</span>
								</td>
								<td style="text-align: center;">李1<br/>2020.07.17<br/>8846</td>
								
							</tr>
							<tr>
								<th id="colchk3" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch3"/>
                                      <label class="custom-control-label" for="sabunch3">2020-0003</label>
                                   </div></th>
								<td id="coltd3_1" style="width: 130px;"><img src="images/bu2.jpg" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd3_2" style="width: 500px;"><label id="t1addr1_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[二쇳/鍮]</b><br/> 醫濡援 泥�대 52-19踰吏</a></label>
								<br/><label id="t1addr3_2" style="font-size: 11pt;height: 6px;">吏 6110.28/嫄대Ъ 3280.1</label>
								<br/><label id="t1addr3_3" style="font-size: 11pt;color: red;height: 6px;"></label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">媛�</span><br/><span class="badge badge-info">理�</span></td>
								<td style="padding-left:3px;"><b>60,000,000,000</b><br/><span style="color: blue;"><b>30,000,000,000</b></span><span style="color: blue;padding-left: 20px;">(50%)</span>
								</td>
								<td style="text-align: center;">�<br/>2020.08.21<br/>8604</td>
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
