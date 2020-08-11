<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<!-- <link href="resources/css/estate_one/estate_on.css" rel="stylesheet" /> -->
<!-- <link href="resources/css/estate_one/th_bootstrap.css" rel="stylesheet" /> -->
<link href="resources/css/estate_one/th_styles.css" rel="stylesheet" />
<link href="resources/css/estate_one/sideber.css" rel="stylesheet" />
<link href="resources/css/styles.css" rel="stylesheet" />
<script src="https://use.fontawesome.com/releases/v5.12.1/js/all.js" crossorigin="anonymous"></script>
<style>
body {
	font-family: 'Noto Sans KR', sans-serif;
}

.estateDetailHeader {
	border-bottom: 2px solid #F27405;
	margin-top: 30px;
}

.estatebuild {
	font-size: 15px;
	color: #585858;
}

.estaterentv {
	font-size: 30px;
}

.moneyunit {
	font-size: 15px;
	font-weight: bold;
	font-style: normal;
	color: #F25C05;
}

.estatebuild:hover {
	text-decoration: none;
	color: #585858;
}

.estaterentv:hover {
	text-decoration: none;
	color: #000000;
}

.moneyunit:hover {
	text-decoration: none;
	color: #F25C05;
}

.estateaddress {
	text-align: right;
	width: 730px;
}

.estaterltrnm {
	margin-top: 0px;
	margin-bottom: 0px;
}

.estatename {
	color: #585858;
	margin-top: 0px;
	margin-bottom: 0px;
	font-style: normal;
}

.estatetel {
	margin-top: 0px;
	margin-bottom: 0px;
}

.estatebutton1 {
	border-radius: 25px;
}

.estatebutton1:hover {
	text-decoration: none;
}

.container {
	padding-left: 0px;
	padding-right: 0px;
}

.description {
	margin: 1em 0px;
}
#home{
	height: auto;
}
.estateimage{
	margin-top: 30px;
}
.chbutton{
	font-size: 15px;
	border: 1px solid #D8D8D8;
	border-radius: 5px;
	padding: 5px 10px 5px 10px;
}
.chbutton:hover{
	border: 1px solid #F27405;
}
.listButton{
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 99;
    border: 1px;
    border-style: solid;
    border-color: rgba(77,77,77,0.1);
    outline: none;
    background-color: #F28705;
    color: #ffffff;
    font-size: 1em;
    font-weight: bold;
    font-family: 'Noto Sans KR',sans-serif;
    cursor: pointer;
    padding: 25px 29px;
    border-radius: 45px;
}
.listButton:hover{
	background-color: white;
  	color: #F28705;
  	border: 1px solid #F28705;
}
</style>
<section class="contact-section container topma" style="height: 1000px;">
	<div>
		<!-- detailHeader 시작 -->
		<table class="estateDetailHeader">
			<c:forEach items="${vo.rent}" var="r">
				<tr>
					<td style="padding-bottom: 30px;"><a class="estatebuild">
							<c:choose>
								<c:when test="${vo.build == 'A01' }">아파트</c:when>
								<c:when test="${vo.build == 'A02' }">오피스텔</c:when>
								<c:when test="${vo.build == 'C01' }">원룸</c:when>
								<c:when test="${vo.build == 'C03' }">주택</c:when>
							</c:choose>
					</a><br> <a class="estaterentv"> <c:choose>
								<c:when test="${r.rentv == 'A1' }">매매 ${r.rpay}</c:when>
								<c:when test="${r.rentv == 'B1' }">전세 ${r.rpay}</c:when>
								<c:when test="${r.rentv == 'B2' }">월세 ${r.rpay}</c:when>
							</c:choose> <em class="moneyunit">(단위:만원)</em>
					</a></td>
					<td class="estateaddress">
						<p class="estaterltrnm">${vo.rltrnm}<br> <em
								class="estatename">이은희</em>
						</p>
					</td>
					<td class="estatetel"><a href="#"
						class="button3 estatebutton1"><i class="fas fa-comments"></i>&nbsp;대화하기</a>
					</td>
				</tr>
			</c:forEach>
		</table>
		<!-- detailHeader 끝 -->
		<!-- detailMiddle 시작 -->
		<div id="myTabContent" class="tab-content bg-white container">
			<div id="home">
				<input type="hidden" value="${vo.supply }" id="supply"> 
				<input type="hidden" value="${vo.exclusive }" id="exclusive">
				<table class="type11">
					<tbody>
						<tr>
							<td><strong>해당층/건물층 : </strong> ${vo.floor }층</td>
							<td><strong>공급/전용면적 : </strong> 
							<label id="text"> ${vo.supply } / ${vo.exclusive}㎡ </label> 
								<input type="button" onclick="change('↔평')" class="chbutton" value="↔평"> 
								<input type="hidden" onclick="change('↔㎡')" class="chbutton" value="↔㎡">
							</td>
							<td><strong>난방종류 : </strong> ${vo.addinfo.heating}</td>
						</tr>
						<tr>
							<td><strong>빌트인 : </strong> <c:choose>
									<c:when test="${vo.addinfo.built==1 }">있음</c:when>
									<c:otherwise> 없음</c:otherwise>
								</c:choose></td>
							<td><strong>엘리베이터 : </strong> <c:choose>
									<c:when test="${vo.addinfo.elevator==1 }">있음</c:when>
									<c:otherwise> 없음</c:otherwise>
								</c:choose></td>
							<td><strong>관리비 : </strong> ${vo.addinfo.aspay } 원</td>
						</tr>
						<tr>
							<td><strong>주차 : </strong> <c:choose>
									<c:when test="${vo.addinfo.park==1 }">가능</c:when>
									<c:otherwise> 불가능</c:otherwise>
								</c:choose></td>
							<td><strong>반려동물 : </strong> <c:choose>
									<c:when test="${vo.addinfo.pets==1 }">가능</c:when>
									<c:otherwise> 불가능</c:otherwise>
								</c:choose></td>
							<td><strong>베란다/발코니 : </strong> <c:choose>
									<c:when test="${vo.addinfo.balcony==1 }">있음</c:when>
									<c:otherwise> 없음</c:otherwise>
								</c:choose></td>
						</tr>
						<tr>
							<td><strong>전세자금대출 : </strong> <c:choose>
									<c:when test="${vo.addinfo.chartered==1 }">가능</c:when>
									<c:otherwise>불가능</c:otherwise>
								</c:choose></td>
							<td><strong>입주가능일 : </strong> ${vo.addinfo.pmove}</td>
							<td><strong>옵션 : </strong> <c:forEach
									items="${vo.addinfo.poption}" var="op" varStatus="i">
										${op.option }<c:choose>
										<c:when test="${i.last }"></c:when>
										<c:otherwise>,</c:otherwise>
									</c:choose>
								</c:forEach></td>
						</tr>
					</tbody>
				</table>
				<div class="container topma">
					<table class="type12">
						<thead>
							<tr>
								<th scope="col"><pre>${vo.title }</pre></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td><pre class="description">${vo.addinfo.description }</pre>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
				<!-- 이미지를 순서대로 보여주는 부분 시작 -->
			<div class="estateimage">
				<c:forEach items="${vo.img}" var="e" varStatus="i">
					<div style="cursor: pointer;">
						<img class="th_property_subimg" src="img/${e.img}"></img>
					</div>
				</c:forEach>
			</div>
			<!-- 이미지를 순서대로 보여주는 부분 끝 -->
		</div>
	</div>
	<div>
		<button type="button" class="listButton" onclick="location.href='product'"><i class="fas fa-bars"></i>&nbsp;목록으로</button>
	</div>
	<!-- <div class="th_card bg-white property_border_st">
		<div class="th_card-body">
			<table>
				<tr>
					<td><input type="button" value="뒤로가기"></td>
				</tr>
			</table>
		</div>
	</div> -->
</section>
<!-- detailMiddle 끝 -->

<!-- <div class="tab-pane fade th_page_space container" id="profile">

				<div id="p_list">
					<p>
						<a class="th_a" href="#a">가격 정보 </a>
					</p>
					<p>
						<a class="th_a" href="#b">옵션 </a>
					</p>
					<p>
						<a class="th_a" href="#c">위치 및 주변시설</a>
					</p>
					<p>
						<a class="th_a" href="#d">다방면 스코어</a>
					</p>
					<p>
						<a class="th_a" href="#e">이 공인중개사 다른방 </a>
					</p>
				</div>

				<div id="a" class="th_b">
					<p class="container">가격 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="b" class="th_b">
					<p class="container">옵션 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="c" class="th_b">
					<p class="container">위치 및 주변시설 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="d" class="th_b">
					<p class="container">다방면 스코어 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>
				<div id="e" class="th_b">
					<p class="container">이 공인중개사 다른방 정보를 확인 할수 있는 부분 입니다.</p>
					<div class="testestest">준비중</div>
				</div>




			</div> -->
<!-- 
			<div class="tab-pane fade th_page_space" id="quote"></div>
			<div class="tab-pane fade th_page_space" id="dropdown2">
				<p>Trust fund seitan letterpress, keytar raw denim keffiyeh etsy
					art party before they sold out master cleanse gluten-free squid
					scenester freegan cosby sweater. Fanny pack portland seitan DIY,
					art party locavore wolf cliche high life echo park Austin. Cred
					vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
					farm-to-table VHS viral locavore cosby sweater.</p>
			</div> -->


<!-- <div class="topma bg-white">
						<ul class="nav nav-tabs ">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">매물 정보 </a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">상세 설명</a></li>
					<li class="nav-item"><a class="nav-link " data-toggle="tab"
					href="#">그 외 만들고 싶은 탭 추가 하기</a></li>

			</ul>

		</div> -->

<script>
	function change(text) {
		var supply;
		var exclusive;
		$('.chbutton').each(function(i) {
			if ($(this).val() === text) {
				if (text === '↔평') {
					supply = $('#supply').val() / 3.305785;
					exclusive = $('#exclusive').val() / 3.305785;
					supply = Math.floor(supply);
					exclusive = Math.floor(exclusive);
				} else {
					supply = $('#supply').val();
					exclusive = $('#exclusive').val();
				}

			}
			if (text === $(this).val()) {
				$(this).attr("type", "hidden");
				$('#text').html(supply + '/' + exclusive + ' ' + text.substring(2,1));
			} else {
				$(this).attr("type", "button");
			}
		})
	}
</script>
<%@ include file="../include/footer.jsp"%>
