<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
		  <a class="navbar-brand" href="#">�ε�����</a>
		  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarColor01" aria-controls="navbarColor01" aria-expanded="false" aria-label="Toggle navigation">
		    <span class="navbar-toggler-icon"></span>
		  </button>
		
		  <div class="collapse navbar-collapse" id="navbarColor01">
		    <ul class="navbar-nav mr-auto">
		      <li class="nav-item active">
		        <a class="nav-link" href="#">���ǰ˻� <span class="sr-only">(current)</span></a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">�ǸŰ���</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">���Ű���</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">�ε�����</a>
		      </li>
		      <li class="nav-item">
		        <a class="nav-link" href="#">�������</a>
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
					�������:<select class="form-control" id="exampleSelect1"
						style="width: 100px;">
						<option>��ü</option>
						<option>�Ű�</option>
						<option>����</option>
						<option>����</option>
						<option>����</option>
						<option>����</option>
						<option>����</option>
					</select> ���ǿ뵵:<select class="form-control" id="exampleSelect2"
						style="width: 100px;">
						<option>��ü</option>
						<option>����Ʈ</option>
						<option>����/����</option>
						<option>���/����</option>
						<option>����/â��</option>
						<option>����</option>
						<option>��Ÿ</option>
					</select>
					</div>
				  </div>
				<div id="datalisttop" style="width: 100%;margin-top: 20px;">
					<div style="float: left;"><button type="button" class="btn btn-primary" style="width: 200px">���ɹ��ǵ��</button></div>
					<div style="float: left;"><label id="sumres" style="margin-top: 5px;margin-left: 10px;">(�� <b>1,006</b>��)</label></div>  
					<div class="btn-group" role="group" aria-label="Basic example" style="float: right;">
					  <button type="button" class="btn btn-secondary">��ǹ�ȣ��</button>
					  <button type="button" class="btn btn-secondary">��������</button>
					  <button type="button" class="btn btn-secondary">��������</button>
					  <button type="button" class="btn btn-secondary">�Ű����ϼ�</button>
					  <button type="button" class="btn btn-secondary">��ȸ����</button>
					</div>
				</div>   
				<div id="datalist" style="margin-top: 70px;">
					<table class="table table-hover">
						<thead>
							<tr>
								<th scope="col">
								  <div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunchk"/>
                                      <label class="custom-control-label" for="sabunchk">��ǹ�ȣ</label>
                                   </div></th>
								<th scope="col" colspan="2">���ǿ뵵/������/����</th>
								<th scope="col" colspan="2" style="padding-left: 0px;">����/����</th>
								<th scope="col">����/������/��ȸ��</th>
							</tr>
						</thead>
						<tbody style="border-bottom: 1px solid gray;">
							<tr>
								<th id="colchk1" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch1"/>
                                      <label class="custom-control-label" for="sabunch1">2020-0001</label>
                                   </div></th>
								<td id="coltd1_1" style="width: 130px;"><img src="images/kosmo.jpg" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd1_2" style="width: 500px;"><label id="t1addr1_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[����Ʈ������]</b><br/>���� Ư���� ��õ�� ���굿 426-5 ���� �޸���� ��ó���� 2�� 410ȣ</a></label>
								<br/><label id="t1addr1_2" style="font-size: 11pt;height: 6px;">���� 70.28��/�ǹ� 226.2��</label>
								<br/><label id="t1addr1_3" style="font-size: 11pt;color: red;height: 6px;">��ġ��</label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">����</span><br/><span class="badge badge-info">����</span></td>
								<td style="padding-left:3px;"><b>799,000,000</b><br/><span style="color: blue;"><b>327,270,000</b></span><span style="color: blue;padding-left: 20px;">(41%)</span>
								</td>
								<td style="text-align: center;">����<br/>2020.05.26<br/>10687</td>
								
							</tr>
							<tr>
								<th id="colchk2" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch2"/>
                                      <label class="custom-control-label" for="sabunch2">2020-0002</label>
                                   </div></th>
								<td id="coltd2_1" style="width: 130px;"><img src="images/ko1.JPG" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd2_2" style="width: 500px;"><label id="t1addr2_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[����Ʈ������]</b><br/>���� Ư���� ���α� ���ε� 197-7���� ���̽���ũ��Ÿ��2 6�� 602-1ȣ</a></label>
								<br/><label id="t1addr2_2" style="font-size: 11pt;height: 6px;">���� 35.13��/�ǹ� 113.1��</label>
								<br/><label id="t1addr2_3" style="font-size: 11pt;color: red;height: 6px;"></label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">����</span><br/><span class="badge badge-info">����</span></td>
								<td style="padding-left:3px;"><b>393,000,000</b><br/><span style="color: blue;"><b>160,973,000</b></span><span style="color: blue;padding-left: 20px;">(41%)</span>
								</td>
								<td style="text-align: center;">����1ȸ<br/>2020.07.17<br/>8846</td>
								
							</tr>
							<tr>
								<th id="colchk3" scope="row" style="width: 180px;"><div class="custom-control custom-checkbox">
                                    <input type="checkbox" class="custom-control-input" id="sabunch3"/>
                                      <label class="custom-control-label" for="sabunch3">2020-0003</label>
                                   </div></th>
								<td id="coltd3_1" style="width: 130px;"><img src="images/bu2.jpg" style="width: 120px;height: 120px;float: left;"></td>
								<td id="coltd3_2" style="width: 500px;"><label id="t1addr1_1"><a href="http://localhost:8080/uiProject/semi.Project?page=auction&code=4" style="color: black;"><b>[����/����]</b><br/>���� ���α� û� 52-19����</a></label>
								<br/><label id="t1addr3_2" style="font-size: 11pt;height: 6px;">���� 6110.28��/�ǹ� 3280.1��</label>
								<br/><label id="t1addr3_3" style="font-size: 11pt;color: red;height: 6px;"></label>
								</td>
								<td style="padding-left:0px;padding-right: 0px;"><span class="badge badge-primary">����</span><br/><span class="badge badge-info">����</span></td>
								<td style="padding-left:3px;"><b>60,000,000,000</b><br/><span style="color: blue;"><b>30,000,000,000</b></span><span style="color: blue;padding-left: 20px;">(50%)</span>
								</td>
								<td style="text-align: center;">����<br/>2020.08.21<br/>8604</td>
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
