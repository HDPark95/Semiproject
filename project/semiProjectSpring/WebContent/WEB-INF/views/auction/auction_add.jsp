<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet" href="resources/css/auction/main/bootstrap.css">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<script type="text/javascript" src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />
<%@ include file="../include/header_menu.jsp"%>
<style>
#body {
	width: 80%;
	height: 100%;
	margin: auto;
}

h2 {
	margin-top: 40px;
	margin-bottom: 50px;
}

#category {
	width: 160px;
}

table {
	width: 100%;
	border-spacing: 0;
	border-collapse: collapse;
	-webkit-tap-highlight-color: rgba(0, 0, 0, 0);
}

th {
	height: 45px;
	padding: 7px 25px;
	vertical-align: middle;
	border-bottom: 1px solid #ddd;
	background: #f8f8f8;
	color: #444444;
	font-weight: bold;
	font-size: 15px;
	text-align: center;
	width: 200px;
	padding-top: 15px;
}

tbody {
	line-height: 1.42857143;
	color: #333;
	border-top: 1px solid black;
}

td {
	padding: 7px 25px;
	vertical-align: middle;
	border-bottom: 1px solid #ddd;
	border-left: 1px solid #ddd;
	height: 45px;
}

.btn-q {
	padding: 3px 20px;
	margin: 2.5px 0;
	font-size: 14px;
	line-height: 1.5;
	border-radius: 30px;
	background: #eeeeee;
	color: #555555;
	border: 1px solid #e1e1e1;
	display: inline-block;
	font-weight: normal;
	text-align: center;
	white-space: nowrap;
	vertical-align: middle;
	touch-action: manipulation;
	cursor: pointer;
}
.modal{
    overflow-x: hidden;
    overflow-y: auto;
	opacity: 1;
	text-align: center;
    padding: 0!important;
    position: fixed;
    z-index: 1050;
    outline: 0;
    position:fixed; 
    top:50%; 
    left:50%; 
    transform: translate(-50%,-50%);
    max-width: 1000px;
}

#myModal2{
width: 700px;
height: 600px;
}
#modal-dialog{
    display: inline-block;
    text-align: left;
    vertical-align: middle;
    width: 600px;
    margin: 30px auto;
    position: relative;
}
.modal a.close-modal {
    top: 0px;
    right: 0px;
}
</style>
</head>
<body>
	<div style="width: 1500px;margin: 80px auto;">
		
		<nav class="navbar navbar-expand-lg navbar-dark bg-primary">

			<a class="navbar-brand" href="#">부동산경매</a>

			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor01" aria-controls="navbarColor01"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarColor01">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item"><a class="nav-link" href="auctionMain">물건검색 </a></li>
					<li class="nav-item"><a class="nav-link" href="#">판매관리</a></li>
					<li class="nav-item"><a class="nav-link" href="#">구매관리</a></li>
					<li class="nav-item active"><a class="nav-link" href="#">부동산등록</a>
					</li>
					<li class="nav-item"><a class="nav-link" href="#">경매정보</a></li>
				</ul>
			</div>
		</nav>
		<form method="post" action="" enctype="multipart/form-data">
			<div id="body" class="form-group">
				<h2>부동산 등록</h2>
				<div id="content">
					<table>
						<tbody>
							<tr>
								<th><label for="category">물건용도</label></th>
								<td><select id="category" class="form-control">
										<option value="0">--선택--</option>
										<option value="1">아파트</option>
										<option value="2">주택/빌라</option>
										<option value="3">상업/업무</option>
										<option value="4">공장/창고</option>
										<option value="5">토지</option>
										<option value="6">기타</option>
								</select></td>
							</tr>
							<tr>
								<th><label for="subject"><span
										style="color: blue; margin-right: 3px;">*</span>물건제목</label></th>
								<td><input type="text" id="subject" class="form-control" style="width: 600px;"/></td>
							</tr>
							<tr>
								<th><label for="sPrice">시작가</label></th>
								<td><input type="number" id="sPrice" class="form-control" style="width: 300px;"/><a href="#none" class="btn-q" data-toggle="modal"
									data-target="#myModal2" id="p_modal1"
									style="text-decoration: none; margin-left: 10px;">500만원 이상의 물건</a></td>
							</tr>
							<tr>
								<th><label for="danwe">입찰단위</label></th>
								<td><select id="danwe" class="form-control" style="width: 200px;">
										<option value="">선택하세요</option>
										<option>300만원</option>
										<option>500만원</option>
										<option>800만원</option>
										<option>1000만원</option>
								</select></td>
							</tr>
							<tr>
								<th><label for="ipenddate">입찰만료일</label></th>
								<td><input type="date" id="ipenddate" class="form-control" style="width: 200px;"/>&nbsp;
								<input type="time" id="ipendtime" class="form-control" style="width: 200px;"/></td>
							</tr>
							<tr>
								<th><label for="gunmul">건물면적/토지면적</label></th>
								<td><input type="text" id="gunmul" class="form-control" style="width: 200px;"/>&nbsp;/&nbsp;<input
									type="text" id="tozi" class="form-control" style="width: 200px;"/></td>
							</tr>
							<tr>
								<th rowspan="2"><label for="zipcode">주소</label></th>
								<td><input type="text" id="zipcode" class="form-control" readonly="readonly" style="width: 120px;"/>&nbsp;<button type="button" class="btn btn-primary btn-sm" onclick="jusopop()">우편번호검색</button></td>
							</tr>
							<tr>
								<td><input type="text" id="addr1" class="form-control" readonly="readonly" style="width: 500px;"/>&nbsp;<input type="text" id="addr2" class="form-control" style="width: 400px;"/></td>
							</tr>
							<tr>
								<th><label for="addprice">물품설명</label></th>
								<td><textarea name="ir1" id="ir1" rows="20" cols="100">111</textarea></td>
							</tr>
							<tr>
								<th><label for="addprice">이미지등록1</label></th>
								<td><input type="file" class="form-control-file" id="img1" aria-describedby="fileHelp1">
                                    <small id="fileHelp1" class="form-text text-muted">기본이 되는 메인 이미지를 등록 해주세요 사이즈는 620x430입니다</small></td>
							</tr>
							<tr>
								<th><label for="addprice">이미지등록2</label></th>
								<td><input type="file" class="form-control-file" id="img2" aria-describedby="fileHelp2">
                                    <small id="fileHelp2" class="form-text text-muted">부가적인 이미지 입니다 사이즈는 320x180입니다</small></td>
							</tr>
							<tr>
								<th><label for="addprice">이미지등록3</label></th>
								<td><input type="file" class="form-control-file" id="img3" aria-describedby="fileHelp3">
                                    <small id="fileHelp3" class="form-text text-muted">기본이 되는 메인 이미지를 등록 해주세요 사이즈는 320x180입니다</small></td>
							</tr>
							<tr>
								<th><label for="addprice">이미지등록4</label></th>
								<td><input type="file" class="form-control-file" id="img4" aria-describedby="fileHelp4">
                                    <small id="fileHelp4" class="form-text text-muted">기본이 되는 메인 이미지를 등록 해주세요 사이즈는 320x180입니다</small></td>
							</tr>
							<tr>
								<th colspan="2"><button type="submit" class="btn btn-primary btn-lg" id="runin">물건 등록 하기</button></th>
							</tr>
						</tbody>
					</table>

				</div>
			</div>
		</form>
	</div>
	<!-- modal 2 -->
	<div id="myModal2" class="modal fade" role="dialog">
		<div id="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header modal2">
					<button type="button" class="close" data-dismiss="modal"></button>
					<h4 class="modal-title">온라인 거래 물품 불가 물품</h4>
				</div>
				<div class="modal-body">
					<div class="tableDefault fs13">
						<table>
							<colgroup>
								<col />
								<col />
							</colgroup>
							<tr>
								<th>주류/담배</th>
								<td>내용물이 있는 물품</td>
							</tr>
							<tr>
								<th>음란물</th>
								<td>모자이크 없이 지나친 노출이 있는 이미지</td>
							</tr>
							<tr>
								<th>멸종위기동물</th>
								<td>상아, 박제 등 몇종위기종의 가공품</td>
							</tr>
							<tr>
								<th>위작, 모조품</th>
								<td>상표권을 침해하는 물품</td>
							</tr>
							<tr>
								<th>군용품 및 대외비</h>
								<td>반출 및 유출 금지 대상인 군용품과 대외비</td>
							</tr>
							<tr>
								<th>그외 도검, 화약류, 도난품 등</h>
								<td>거래 부적절한 물품일 경우 경매 중지처리될 수 있습니다.</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>
<script>
$(document).ready(function(){
	$('#p_modal1').click(function(event) {
	    event.preventDefault();
	    $('#myModal2').modal({
	      fadeDuration: 250
	    });
	  });
	
	//에디터 호출
	var oEditors = [];
	nhn.husky.EZCreator.createInIFrame({
	 oAppRef: oEditors,
	 elPlaceHolder: "ir1",
	 sSkinURI: "resources/edit/SmartEditor2Skin.html",
	 fCreator: "createSEditor2"
	});
	
	//
	$('#runin').click(function() {
		var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]);
		alert($('#ir1').val());
	})
	
});

function jusopop(){
	var pop = window.open("jusopopup/jusoPopup.jsp","pop","width=570,height=420, scrollbars=yes, resizable=yes");
}	

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
document.getElementById("zipcode").value = zipNo; 
document.getElementById("addr1").value = roadFullAddr;
document.getElementById("addr2").value = addrDetail;
}
</script>
<%@ include file="../include/footer.jsp"%>