<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<section class="contact-section " >

<div class="container2">
	<div class="row">
		<div class="col-md-12 mt-4 add-page" >
			<h1>방 내놓기</h1>
			<hr>
			<div class="col-md-1"></div>
				<div class="col-md-9 add-page" style="margin: auto;">
						<div class="col-md-12 mt-12 add-sub-page ">
	            			<table >
	            				<tr>
	            					<td colspan="2">매물종류</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						종류선택
	            					</td>
	            					<td >
	            					  
	            						<span>원룸 </span> 
	            						<span>투룸</span> 
	            						<span> 쓰리룸</span> 
	            						<span>오피스텔(도시형)</span> 
	            						<span>아파트</span> 
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						건물유형
	            					</td>
	            					<td>
	            						  
	            						<span>단독</span>
	            						<span>다가구 </span>
	            						<span>빌라/연립/다세대</span>
	            						<span>상가주택</span>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            		<table >
	            				<tr>
	            					<td colspan="3">위치정보</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						주소
	            					</td>
	            					<td >
		            					<div class="search">
		            						<input type="text" class="address-search" placeholder="강남구 역삼동" ><span class="btn" style="width: 150px;">주소검색</span><br>
	            						주소 API사용
		            					</div>
	            				
	            					</td>
	            					<td >
	            				<div class="col-md-12" style="width:300px; ">지도API</div>
	            					</td>
	            				</tr>
	            				
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12 add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="2">거래정보</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						거래종류
	            					</td>
	            					<td >
	            							   
	            							<span>전세</span>
	            							<span>월세</span>
	            							<span>단기가능</span>
	            					</td>
	            				</tr>
	            				
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="4">기본정보</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						건물크기
	            					</td>
	            					<td >
	            						<div class="col-md-12">
	            							<label class="add-page">공급면적 <input type="text" class="add-page">평
	            							<input type="text"class="add-page">㎡</label>
	            						</div>
	            						<hr>
	            						<div class="col-md-12">
	            							<label class="add-page">전용면적 <input type="text" class="add-page">평
	            							<input type="text"class="add-page">㎡</label>
	            							
	            							<label class="add-page"></label>
	            						</div>
	            					</td>
	            					<td >건물층수</td>
	            					<td >
	            					<div class="col-md-12">
	            						<label class="add-page">건물층수</label>
	            							<select class="add-page">
	            								<option value="0">건물층수선택</option>
	            								<c:forEach begin="1" end="20" step="1" var="i">
	            									<option value="${i}">${i }층</option>
	            								</c:forEach>
	            							</select>
	            					</div>
	            						<hr>
	            						<div class="col-md-12">
	            							<label class="add-page">해당층수</label>
	            							<select class="add-page">
	            								<option value="0">건물층수선택</option>
	            								<option value="-1">반지층</option>
	            								<option value="99">옥탑</option>
	            								<c:forEach begin="1" end="20" step="1" var="i">
	            									<option value="${i}">${i }층</option>
	            								</c:forEach>
	            							</select>
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						난방종류선택
	            					</td>
	            					<td colspan="3">
	            						<select class="float-left">
	            							<option selected="selected">난방종류 선택</option>
	            							<option>중앙난방</option>
	            							<option>개별난방</option>
	            							<option>지역난방</option>
	            						</select>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						입주 가능일
	            					</td>
	            					<td colspan="3">
	            						<label>즉시입주</label> 
	            						<label>날짜협의 </label>
	            						<label>날짜선택</label>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="4">추가정보</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						관리비
	            					</td>
	            					<td colspan="3" >
	            						<div class="col-md-12">
	            							<input type="text" class="address-search">만원 
	            						</div>
	            						<hr>
	            						<div class="col-md-12 text-left">
	            							관리비항목  : 인터넷 , 유선TV, 청소비, 수도세, 도시가스, 전기세, 기타
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						주차여부
	            					</td>
	            					<td>
	            						가능 불가능 
	            					</td>
	            					<td>
	            						반려동물
	            					</td>
	            					<td>
	            						가능 불가능 
	            					</td>
	            				</tr>
	            					<tr>
	            					<td >
	            						엘리베이터
	            					</td>
	            					<td>
	            						있음 없음
	            					</td>
	            					<td >
	            						베란다/발코니
	            					</td>
	            					<td>
	            						있음없음
	            					</td>
	            				</tr>
	            				
	            				<tr>
	            					<td >
	            						빌트인
	            					</td>
	            					<td>
	            						있음 없음
	            					</td>
	            					<td >
	            						구조
	            					</td>
	            					<td>
	            						복층 , 1.5룸/주방분리형
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						옵션 항목
	            					</td>
	            					<td colspan="3">
	            						에어컨 , 세탁기 , 침대, 책상, 옷장, TV, 신발장, 냉장고, 가스레인지, 인덕션, 전자레인지, 전자 도어락, 비데
	            					</td>
	            					
	            				</tr>
	            				<tr>
	            					<td >
	            						전세 자금대출
	            					</td>
	            					<td colspan="3">
	            						가능, 불가능
	            					</td>
	            					
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="2">상세설명</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						제목
	            					</td>
	            					<td style="text-align: left;">
	            					<input type="text" style="width: 50%;" placeholder="예)신논현역 도보 5분거리,혼자살기 좋은방입니다.">
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						상세 설명
	            					</td>
	            					<td>
	            						<textarea rows="20" cols="200" placeholder="상세설명 작성 주의사항 
	            							- 방 정보와 관련없는 홍보성 정보는 입력하실수 없습니다
	            								(홈페이지주소,블로그,SNS,메신저ID,전화번호,이메일등)
	            							- 중계수수료를 언급한 내용은 입력할 수 없습니다.
	            								(중계수수료무료, 공짜, 반값 등)
	            							
	            							* 주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 
	            								있을 수 있습니다.
	            							* 다방의 매물등록 규정에 위반되는 금칙어는 등록이 불가능합니다.
	            						"></textarea>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						비공개메모
	            					</td>
	            					<td >
	            					<textarea rows="10" cols="200" placeholder="
	            					외부에는 공개되지 않으며, 등록자에게만 보이는 메모입니다.
	            						"></textarea>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  add-sub-page">
	            			<table >
	            				<tr>
	            					<td colspan="2">사진등록</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						업로드할 사진
	            					</td>
	            					<td >
	            						<img src="resources/assets/img/main.jpg" style="width: 300px; height: 300px;">
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						파일 업로드
	            					</td>
	            					<td>
	            						<form action="imgupload" method="post" enctype="multipart" enctype="multipart/form-data">
	            							<input type="file" value="파일선택"><br>
	            							<input type="submit" value="파일업로드">
	            						</form>
	            					</td>
	            				</tr>
	            			</table>
	            		</div>
	            		<div class="col-md-12 mt-12  last  add-sub-page" style="padding-top: 0px; margin-bottom: 30px;">
	            			<div class="col-md-12">
	            				<div class="col-md-2" style="width: 100px;"></div>
	            				<div class="col-md-10" style="text-align: center;">
	            					<input type="checkbox" >
	            									매물 관리 규정을 확인하였으며 입력한 정보는 실제 매물과 다름이 없습니다.
	            				</div>
	            				
	            			</div>
	            			<div class="col-md-12"  style="text-align: center;">
	            				<a class="btn" id="filter_apply" href="">매물등록</a>
	            				<a class="btn" id="filter_close" href="semi.Project?page=estate&code=1">취소</a>
	            				</div>
	            		</div>
	          	 </div>
	          	 <div class="col-md-1"></div>
		</div>
	</div>

</div>
</section>

<%@ include file="../include/footer.jsp"%>


