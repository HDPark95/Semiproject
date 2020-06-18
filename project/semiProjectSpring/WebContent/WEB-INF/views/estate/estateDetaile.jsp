<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ include file="../include/header_index.jsp"%>
	  <link href="resources/css/estate_one/estate_on.css" rel="stylesheet" />
	    <link href="resources/css/estate_one/th_bootstrap.css" rel="stylesheet" />
	      <link href="resources/css/estate_one/th_styles.css" rel="stylesheet" />
	         <link href="resources/css/estate_one/sideber.css" rel="stylesheet" />
<%@ include file="../include/header_menu.jsp"%>



<section class="contact-section container topma ">

	<div class="th_card bg-white property_border_st">

		<h3 class="th_card-header  property_color bg-white">
			<c:choose>
				<c:when test="${vo.build == 'A01' }">아파트</c:when>
				<c:when test="${vo.build == 'A02' }">오피스텔</c:when>
				<c:when test="${vo.build == 'C01' }">원룸</c:when>
				<c:when test="${vo.build == 'C03' }">주택</c:when>
			</c:choose>
		·
			${vo.title}</h3>
		<div class="th_card-body bg-white">
			<c:forEach items="${vo.rent}" var="r">
					<h3 class="th_card-title ">
			<c:choose>
				<c:when test="${r.rentv == 'A1' }">매매</c:when>
				<c:when test="${r.rentv == 'B1' }">전세</c:when>
				<c:when test="${r.rentv == 'B2' }">월세</c:when>
				
			</c:choose>
				
					
					 : ${r.rpay}만원</h3>
			</c:forEach>
			
			
			
		</div>
		<div>
		<div>
		<img class="th_property_img" src="img/${vo.img[0].img }"
			alt="Card image" >
			</div>
			<div >
			<c:forEach items="${vo.img}" var="e">
				<img class="th_property_subimg" src="img/${e.img }"
					alt="Card image">
			</c:forEach>
			</div>
			
			
			</div> 

		<div class="topma bg-white">
			<ul class="nav nav-tabs ">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" href="#home">매물 정보 </a></li>
				<!-- <li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#profile">상세 설명</a></li> -->
			<!-- 	<li class="nav-item"><a class="nav-link " data-toggle="tab"
					href="#">그 외 만들고 싶은 탭 추가 하기</a></li> -->

			</ul>




			<div id="myTabContent" class="tab-content bg-white container">

				<div
					class="tab-pane fade active show th_page_space img-circle"
					style="text-align: center;" id="home">
					<input type="hidden" value="${vo.supply }" id="supply">
					<input type="hidden" value="${vo.exclusive }" id="exclusive">
					
					<table class="type11">

						<tbody>
							<tr>
								<td><strong>해당층/건물층 : </strong> ${vo.floor }층</td>
								<td><strong>공급/전용면적 : </strong> <lable id="text"> ${vo.supply } / ${vo.exclusive}㎡
									 
								</lable>
								<input type="button" onclick="change('평')"  class="chbutton" value="평">
								<input type="hidden" onclick="change('㎡')" class="chbutton" value="㎡">
								</td>
								<td><strong>난방종류 : </strong> ${vo.addinfo.heating}</td>
							</tr>
							<tr>
								<td><strong>빌트인 : </strong> 
								<c:choose>
									<c:when test="${vo.addinfo.built==1 }">있음</c:when>
									<c:otherwise> 없음</c:otherwise>
								</c:choose>
								</td>
								<td><strong>엘리베이터 : </strong>
								<c:choose>
									<c:when test="${vo.addinfo.elevator==1 }">있음</c:when>
									<c:otherwise> 없음</c:otherwise>
								</c:choose> 
								 </td>
								<td><strong>관리비 : </strong> ${vo.addinfo.aspay } 원</td>
							</tr>
							<tr>
								<td><strong>주차 : </strong>
								<c:choose>
									<c:when test="${vo.addinfo.park==1 }">가능</c:when>
									<c:otherwise> 불가능</c:otherwise>
								</c:choose>
								</td>
								<td><strong>반려동물 : </strong>
								<c:choose>
									<c:when test="${vo.addinfo.pets==1 }">가능</c:when>
									<c:otherwise> 불가능</c:otherwise>
								</c:choose>
								 </td>
								<td><strong>베란다/발코니 : </strong>
								<c:choose>
									<c:when test="${vo.addinfo.balcony==1 }">있음</c:when>
									<c:otherwise> 없음</c:otherwise>
								</c:choose>

								 </td>
							</tr>
							<tr>
								<td><strong>전세자금대출 : </strong>
								<c:choose>
									<c:when test="${vo.addinfo.chartered==1 }">가능</c:when>
									<c:otherwise>불가능</c:otherwise>
								</c:choose>	
								</td>
								<td><strong>입주가능일 : </strong> ${vo.addinfo.pmove}</td>
								<td><strong>옵션 : </strong>
									<c:forEach items="${vo.addinfo.poption}" var="op" varStatus="i">
										${op.option }<c:choose>
											<c:when test="${i.last }"></c:when>
											<c:otherwise>,</c:otherwise>
										</c:choose>
									</c:forEach>
								</td>
							</tr>

						</tbody>
					</table>

					<div class="container topma">
						<table class="type12">
							<thead>
								<tr>
									<th scope="cols">
									<pre>${vo.title }</pre>
									</th>

								</tr>
							</thead>
							<tbody>
								<tr>
									<td> <pre>
	${vo.addinfo.description }
  </pre></td>
								</tr>

							</tbody>
						</table>



					</div>

				</div>


				<div class="tab-pane fade th_page_space container" id="profile">

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
						<p class="container" >가격 정보를 확인 할수 있는
							부분 입니다.</p>
							<div class="testestest">
								준비중
							</div>
					</div>
					<div id="b" class="th_b">
						<p class="container" >옵션 정보를 확인 할수 있는
							부분 입니다.</p>
							<div class="testestest">
								준비중
							</div>
					</div>
					<div id="c" class="th_b">
						<p class="container" >위치 및 주변시설 정보를 확인
							할수 있는 부분 입니다.</p>
							<div class="testestest">
							준비중
							</div>
					</div>
					<div id="d" class="th_b">
						<p class="container" >다방면 스코어 정보를 확인 할수
							있는 부분 입니다.</p>
							<div class="testestest">
							준비중
							</div>
					</div>
					<div id="e" class="th_b">
						<p class="container" >이 공인중개사 다른방 정보를
							확인 할수 있는 부분 입니다.</p>
							<div class="testestest">
							준비중
							</div>
					</div>




				</div>

				<div class="tab-pane fade th_page_space" id="quote"></div>
				<div class="tab-pane fade th_page_space" id="dropdown2">
					<p>Trust fund seitan letterpress, keytar raw denim keffiyeh
						etsy art party before they sold out master cleanse gluten-free
						squid scenester freegan cosby sweater. Fanny pack portland seitan
						DIY, art party locavore wolf cliche high life echo park Austin.
						Cred vinyl keffiyeh DIY salvia PBR, banh mi before they sold out
						farm-to-table VHS viral locavore cosby sweater.</p>
				</div>
			</div>
		</div>

	</div>


	<div class="th_card bg-white property_border_st">
		<div class="th_card-body">
			<h3 class="th_card-title">${vo.rltrnm}</h3>
			<h4 class="th_card-subtitle mb-2 text-muted">이은희</h4>
			<p class="th_card-text">언제든지 편하게 연락주세요 .</p>
			<p class="th_card-text">tel - 010-5555-6666 , 02) 222 - 5656</p>
			<a href="#" class="th_card-link">전화 걸기</a> <a href="#"
				class="th_card-link">지도 표시 하기</a>
		</div>
	</div>
		<div class="th_card bg-white property_border_st">
		<div class="th_card-body">
			<table>
				<tr>
					<td>
						<input type="button" value="뒤로가기">
						
						
					</td>
				</tr>
			</table>
		</div>
	</div>
	

</section>
	
<script>

	function change(text){
	
		var supply;
		var exclusive;
		$('.chbutton').each(function(i) {
			
		
			
			if($(this).val()===text){
				if(text==='평'){
					 supply=$('#supply').val()/3.305785;
					 exclusive=$('#exclusive').val()/3.305785;
				}else{
					 supply=$('#supply').val();
					 exclusive=$('#exclusive').val();
				}
				
			
			}
			if(text===$(this).val()){
				$(this).attr("type", "hidden");
				$('#text').html(supply+'/'+exclusive+' '+text);
			}else{
				$(this).attr("type", "button");
			}
		})
		
	}
	
</script>
<%@ include file="../estate/side.jsp"%>

<%@ include file="../include/footer.jsp"%>
