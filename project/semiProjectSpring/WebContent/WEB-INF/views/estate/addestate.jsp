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
	            					  	<div class="seleted-div">
	            						<span class="square build false" onclick="changeSelect(0)">원룸 </span> 
	            						<span class="square build false"  onclick="changeSelect(1)">투룸</span> 
	            						<span class="square build false"  onclick="changeSelect(2)"> 쓰리룸</span> 
	            						<span class="square build false"  onclick="changeSelect(3)">오피스텔(도시형)</span> 
	            						<span class="square build false"  onclick="changeSelect(4)">아파트</span>
	            						</div> 
	            					</td>
	            				</tr>
	            				<tr id="select-target">
	            					<td >
	            						건물유형
	            					</td>
	            					<td>
	            						  	<div class="seleted-div">
	            						<span class="square sub-build false"  onclick="clicksub(0,'sub-build')">단독</span>
	            						<span class="square sub-build  false" onclick="clicksub(1,'sub-build')">다가구</span>
	            						<span class="square sub-build  false" onclick="clicksub(2,'sub-build')">빌라/연립/다세대</span>
	            						<span class="square sub-build  false" onclick="clicksub(3,'sub-build')">상가주택</span>
	            						</div>
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
	            						
		            					<div class="search-div">
		            						<input type="text" class="address-search" placeholder="강남구 역삼동" ><span class="btn address-btn" style="width: 150px;">주소검색</span><br>
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
	            							<div class="seleted-div col-md-12">
		            							<span class="square charter rent false"  onclick="rent(1)">전세</span>
		            							<span class="square rent false" id='monthly' onclick="rent(2)">월세</span>
		            							<span class="square rent false" id='trading' onclick="rent(3)">매매</span>
		            							<span class="square deal rent false" onclick="deal()">단기가능</span>
	            							</div>
	            							<div class="col-md-12">
	            							<div class="rent-input  col-md-12">
	            								
	            							</div>
	            							
	            							</div>
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
	            						<div class="col-md-12 " style="margin-top: 20px;">
	            							<label class="add-page">공급면적 <input type="text" id="supply"  onkeydown="startSuggest(1)" class="add-page">평
	            							<input type="text" id="supply-area"class="add-page">㎡</label>
	            						</div>
	            						<hr>
	            						<div class="col-md-12 " style="margin-bottom: 30xp;">
	            							<label class="add-page">전용면적 <input type="text" id="exclusive" onkeydown="startSuggest(2)" class="add-page">평
	            							<input type="text"id="exclusive-area"  class="add-page">㎡</label>

	            						</div>
	            					</td>
	            					<td >건물층수</td>
	            					<td >
	            					<div class="col-md-12 ">
	            					
	            						<label class="add-page">건물층수</label>
	            							<select class="add-page floor" id="floor">
	            								<option value="0">건물층수선택</option>
	            								<c:forEach begin="1" end="20" step="1" var="i">
	            									<option value="${i}">${i }층</option>
	            								</c:forEach>
	            							</select>
	            					</div>
	            						<hr>
	            						<div class="col-md-12 " >
	            							<label class="add-page">해당층수</label>
	            							<select class="add-page my-floor" id="myfloor">
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
	            					<div class="col-md-12 " >
	            						<select class="float-left heating" id="heating">
	            							<option selected="selected">난방종류 선택</option>
	            							<option>중앙난방</option>
	            							<option>개별난방</option>
	            							<option>지역난방</option>
	            						</select>
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						입주 가능일
	            					</td>
	            					<td colspan="3">
	            						<div class="seleted-div">
	            						<span class="square move-in  false" onclick="clicksub(0,'move-in')">즉시입주</span> 
	            						<span class="square move-in  false" onclick="clicksub(1,'move-in')">날짜협의 </span>
	            						<span class="square move-in  false" onclick="clicksub(2,'move-in')">날짜선택</span>
	            						</div>
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
	            					
	            						<div class="col-md-12 ">
	            							<input type="text" class="input-val adminpay" id="adminpay" value="0" class="address-search">만원 
	            						</div>
	            						<hr>
	            						<div class="col-md-12 text-left">
	            						<label>관리비항목 (다중선택가능) :</label>
	            							<span class="square administrative false" onclick="clicksub(0,'administrative')">인터넷</span>
	            							<span class="square administrative false" onclick="clicksub(1,'administrative')">유선TV</span>
	            							<span class="square administrative false" onclick="clicksub(2,'administrative')">청소비</span>
	            							<span class="square administrative false" onclick="clicksub(3,'administrative')">수도세</span>
	            							<span class="square administrative false" onclick="clicksub(4,'administrative')">도시가스</span>
	            							<span class="square administrative false" onclick="clicksub(5,'administrative')">전기세</span>
	            						</div>
	            				
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						주차여부
	            					</td>
	            					<td>
	            						<div class="seleted-div">
	            						<span class="square parking false" onclick="clickpark(0)">가능</span>
	            						<span class="square parking false" onclick="clickpark(1)">불가능</span>
	            						<input type="text" id="pamount" class="input-val"  disabled="disabled" placeholder="0" > 만원
	            						</div>
	            					
	            					</td>
	            					<td>
	            						반려동물
	            					</td>
	            					<td>
	            					<div class="seleted-div">
		            						<span class="square pets false" onclick="clicksubto(0,'pets')">가능</span>
		            						<span class="square pets false" onclick="clicksubto(1,'pets')">불가능</span>
	            						</div>
	            					</td>
	            				</tr>
	            					<tr>
	            					<td >
	            						엘리베이터
	            					</td>
	            					<td>
	            							<div class="seleted-div">
	            						<span class="square elevator false" onclick="clicksubto(0,'elevator')">있음</span>
	            						<span class="square elevator false" onclick="clicksubto(1,'elevator')">없음</span>
	            						</div>
	            					</td>
	            					<td >
	            						베란다/발코니
	            					</td>
	            					<td>
	            						<div class="seleted-div">
		            						<span class="square balcony false"  onclick="clicksubto(0,'balcony')">있음</span>
		            						<span class="square balcony false"  onclick="clicksubto(1,'balcony')">없음</span>
	            						</div>
	            					</td>
	            				</tr>
	            				
	            				<tr>
	            					<td >
	            						빌트인
	            					</td>
	            					<td>
	            						<div class="seleted-div">
		            						<span class="square built false" onclick="clicksubto(0,'built')">있음</span>
		            						<span class="square built false"onclick="clicksubto(1,'built')" >없음</span>
	            						</div>
	            					</td>
	            					<td >
	            						구조
	            					</td>
	            					<td>
	            						<div class="seleted-div">
			            						<span class="square structure false" onclick="clicksub(0,'structure')">복층</span>
			            						<span class="square structure false" onclick="clicksub(1,'structure')">1.5룸/주방분리형</span>
	            						</div>
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						옵션 항목
	            					</td>
	            					<td colspan="3">
	            						<div class="seleted-div">
			            					<span class="square option false" onclick="clicksub(0,'option')">에어컨</span>
			            					<span class="square option false" onclick="clicksub(1,'option')">세탁기</span>
			            					<span class="square option false" onclick="clicksub(2,'option')">침대</span>
			            					<span class="square option false" onclick="clicksub(3,'option')">책상</span>
			            					<span class="square option false" onclick="clicksub(4,'option')">옷장</span>
			            					<span class="square option false" onclick="clicksub(5,'option')">TV</span>
			            					<span class="square option false" onclick="clicksub(6,'option')">신발장</span>
			            					<span class="square option false" onclick="clicksub(7,'option')">냉장고</span>
			            					<span class="square option false" onclick="clicksub(8,'option')">가스레인지</span>
			            					<span class="square option false" onclick="clicksub(9,'option')">인덕션</span>
			            					<span class="square option false" onclick="clicksub(10,'option')">전자레인지</span>
			            					<span class="square option false" onclick="clicksub(11,'option')">전자 도어락</span>
			            					<span class="square option false" onclick="clicksub(12,'option')">비데</span>
	            						</div>
	            					</td>
	            					
	            				</tr>
	            				<tr>
	            					<td >
	            						전세 자금대출
	            					</td>
	            					<td colspan="3">
	            						<div class="seleted-div">
	            							<span class="square chartered false" onclick="clicksubto(0,'chartered')">가능</span>
	            							<span class="square chartered false" onclick="clicksubto(1,'chartered')">불가능</span>
	            						</div>
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
	            						<textarea rows="20" cols="150" maxlength="100" placeholder="
	            						상세설명 작성 주의사항 
	            						
	            							- 방 정보와 관련없는 홍보성 정보는 입력하실수 없습니다
	            								(홈페이지주소,블로그,SNS,메신저ID,전화번호,이메일등)
	            							- 중계수수료를 언급한 내용은 입력할 수 없습니다.
	            								(중계수수료무료, 공짜, 반값 등)
	            							- 100자 이내로입력해주세요. 
	            							
	            							* 주의사항 위반시 허위매물로 간주되어 매물 삭제 및 이용의 제한이 
	            								있을 수 있습니다.
	            							*  매물등록 규정에 위반되는 금칙어는 등록이 불가능합니다.
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
	            						사진
	            					</td>
	            					<td >
	            						<img src="">
	            					</td>
	            				</tr>
	            				<tr>
	            					<td >
	            						파일 업로드
	            					</td>
	            					<td>
	            						<form method="post" action="imgupload" enctype="multipart/form-data">
	            							<input  type="file" value=""><input type="submit" class="btn img-btn" value="이미지업로드">
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
	            				<a class="btn" id="filter_apply" onclick="addestate()">매물등록</a>
	            				<a class="btn" id="filter_close" href="semi.Project?page=estate&code=1">취소</a>
	            				</div>
	            		</div>
	          	 </div>
	          	 <div class="col-md-1"></div>
		</div>
	</div>
<script >
	// 부동산 종류
var estater=new estate();
		// 추가정보 
		var addyinfo=new addinfo(); 
	var classEach=["build","sub-build","rent","move-in","administrative","parking","pets","elevator","balcony","built","option","chartered","structure"];

	function estate(){
		this.build=''; //매물 종류
		this.subbuild='';//매물 세부종류
		this.rent=[]; // 거래종류	
		this.supply=''; //공급면적
		this.exclusive=''; // 전용면적
		this.floor=''; //층정보
		this.heating=''; // 난방여부
		this.move=''; // 이사협의
		this.addinfo={};
	}
	
	function addinfo(){
		this.administrative=new administrative(); // 관리비
		this.pets=false; // 애완동물
		this.parking=new parkingv(true, ""); // 주차
		this.elevator=false; // 엘리베이터
		this.balcony=false; // 발코니
		this.built=false; // 빌트인여부
		this.structure=''; // 구조
		this.option=new option(); // 옵션
		this.chartered=false; // 전세자금대출여부
	}
	function parkingv(parkv,payv){
		this.park=parkv;
		this.pay=payv;
	}
	function option(){
		this.option='';
	}
	function administrative(){
		this.pay='';
		this.administrat='';
	}
	
	function rentv(text,pay,dans){
		this.rent=text;
		this.rpay=pay;
		this.dan=dans;
	}
	
	function ajaxStart(estater,addyinfo){
		var data = [];
		estater.addyinfo=addyinfo;
	
		$.ajaxSettings.traditional = true; 
	 	$.ajax({
			type : 'POST',
			url : 'insertestate',
			data :estater,
			success:function(data){
				alert("성공입니다.");
			},
			error:function(data){
				alert("오류입니다.");
			}
		}); 
	}
	
	function addestate(){
		for(var e = 0;e<classEach.length;e++){
			var name='.'+classEach[e];
			var num=$(name+'.true').length;
		
			var inum=1;
			$(name).each(function(i) {
				if($(this).hasClass("true")){
					var text='';
					if(num>inum){
						text=$(this).text()+',';
						inum++;
					}else{
						text=$(this).text();
					}
					addData(classEach[e],text ,estater,addyinfo);
				}
			})
		}
		estater.exclusive=$('#exclusive-area').val();
		estater.supply=$('#supply-area').val();
		var floor=$('#myfloor').val()+"/"+$('#floor').val();
		estater.floor=floor;
		estater.heating=$('#heating').val();
		ajaxStart(estater,addyinfo);
	}
	
	
	function addData(className,text,estater,addyinfo){
		
		if(className==="build"){
			estater.build=text;
		
		}else if(className==="sub-build"){
			estater.subbuild+=text;
		
		}else if(className==="rent"){
			var num=0;
			var dans=false;
			if(text==='단기가능'){
				dans=true;
			}
			
			var num= text.toString().indexOf(',');
			if(num>-1){
				text=text.toString().substring(0,num);
				
			}
			
			if(text==='월세'){
				var rpay='';
				$('.deposit').each(function(i) {
					
					var thisv =$('.monthly');
					
					console.log($(this).val())
					console.log()
					
					rpay=thisv.val()+'/'+thisv[i].value;
					
					
					
					estater.rent.push(new rentv(text,rpay,dans));
					num+=i;
				});
			
			} if(text==='전세'){
		
				estater.rent.push(new rentv(text,$('#charter').val(),dans));
				num++;
			} if(text==='매매'){
			
					estater.rent.push(new rentv(text,$('#trading').val(),dans));
				num++;
			}
			
			for(var i =0; i<estater.rent.length;i++){
				console.log(estater.rent[i]);
			}
			
			
			
		}else if(className==="move-in"){
			estater.move+=text;
			console.log(estater.move);
		}else if(className==="administrative"){
			addyinfo.administrative.pay=$('#adminpay').val();
			addyinfo.administrative.administrat+=text;
		
		}else if(className==="parking"){
			var bool=false;
			if(text==='가능'){
				bool=true;
			}
			addyinfo.parking=new parkingv(bool, $('#pamount').val());
			
		
		}else if(className==="pets"){
			var bool=false;
			console.log("펫 :"+text)
			if(text==='가능'){
				bool=true;
			}
			addyinfo.pets=bool;
			
		}else if(className==="elevator"){
			var bool=false;
			console.log("엘리베이터 :"+text)
			if(text==='있음'){
				bool=true;
			}
			addyinfo.elevator=bool;
			
		}else if(className==="balcony"){
			var bool=false;
			if(text==='있음'){
				bool=true;
			}
			addyinfo.balcony=bool;
		
		}else if(className==="built"){
			var bool=false;
			if(text==='있음'){
				bool=true;
			}
			addyinfo.built=bool;
			
		}else if(className==="option"){
			addyinfo.option.option+=text;
			
		}else if(className==="chartered"){
			var bool=false;
			if(text==='가능'){
				bool=true;
			}
			addyinfo.chartered=bool;
			
		}else if(className==="structure"){
			addyinfo.structure+=text;
		}
	
	}
	

	
	function deal(){
		if($('.deal').hasClass('false')){
			$(".deal").css('color','white').css('background-color','#7db4ea');
			$(this).removeClass("false").addClass("true");		
		
		}else if($('.deal').hasClass('true')){
			$(".deal").css('color','black').css('background-color','white');
			$(this).removeClass("true").addClass("false");	
		
		}
		
	}

	function clicksub(num,className){
		$(('.'+className)).each(function(i) {
			
			
			if(i===num&&$(this).hasClass('false')){
				
					
					$(this).css('color','white').css('background-color','#7db4ea');
					
					$(this).removeClass("false").addClass("true");		
			
				
			}else if(i===num&&$(this).hasClass('true')){
				$(this).css('color','black').css('background-color','white');
				
				$(this).removeClass("true").addClass("false");	
			}
		})
	}
	
	
	function clicksubto(num,className){
		$(('.'+className)).each(function(i) {
			
			
			if(i===num&&$(this).hasClass('false')){
				$(this).css('color','white').css('background-color','#7db4ea');
				$(this).removeClass("false").addClass("true");	
				

					
				
			}else if(i===num&&$(this).hasClass('true')){
				
			}else{

				$(this).css('color','black').css('background-color','white');
				
				$(this).removeClass("true").addClass("false");	
			
			
				
				
				
			}
		})
	}
	
	function clickpark(num){
		$(('.parking')).each(function(i) {
			if(i===num){
				$(this).css('color','white').css('background-color','#7db4ea');
				$(this).removeClass("false").addClass("true");	
				if(num===0){
					 $('#pamount').attr("disabled",false);
				}else{
					
					 $('#pamount').attr("disabled",true);
				}
			}else{
				$(this).css('color','black').css('background-color','white');
				$(this).removeClass("true").addClass("false");	
			}
			
			
		})
		
	}
	
	function changeSelect(num){
		var html='';
		
		if(num===3){
			name=""
			html="<td >	종류선택</td>"+
				"<td >"+
				  	"<div class=\"seleted-div\">"+
					"<span class=\"square sub-build true\" onclick=\"clicksub(0,'sub-build')\" >오피스텔 </span>"+
					"<span class=\"square sub-build false\" onclick=\"clicksub(1,'sub-build')\" >도시형주택</span> "+
					
					"</div> "+
				"</td>";
		}else if(num==4){
			html="";
		}else{
			html="<td >	종류선택</td>"+
			"<td >"+
			  	"<div class=\"seleted-div\">"+
			  	"<span class=\"square sub-build false\" onclick=\"clicksub(0,'sub-build')\">단독</span>\n"+
				"<span class=\"square sub-build false\" onclick=\"clicksub(1,'sub-build')\" >다가구</span>\n"+
				"<span class=\"square sub-build false\" onclick=\"clicksub(2,'sub-build')\" >빌라/연립/다세대</span>\n"+
				"<span class=\"square sub-build false\" onclick=\"clicksub(3,'sub-build')\" >상가주택</span>\n"+
				"</div> "+
			"</td>";
		}
		
		$('#select-target').html(html);
		$('.build').each(function(i) {
			if(i===num&&$(this).hasClass('false')){
				$(this).css('color','white').css('background-color','#7db4ea');

				$(this).removeClass("false").addClass("true");	
			}else if(i===num&&$(this).hasClass('true')){
				
			}else{
				$(this).css('color','black').css('background-color','white');
				$(this).removeClass("true").addClass("false");	
			}
		})
		
	}
	
	var lnum=1;
	var nnum=0;
	var tnum=0;
	var mnum=0;
	function rent(num){
		var html='';
		var close='';
		var text='';
		$('.rent').each(function(i) {
			if(i===(num-1)){
				$(this).removeClass("false").addClass("true");
			}
		})
		if(num===1 ){
			if(nnum===0){
				
				html=
					"<label class='lnum-"+lnum+"'>"+
						"<span>전세</span>"+
						"<input type='text' class='rpay' id='charter' required  placeholder='전세' >"+
						"<span>만원</span>"+
					"</label>";
				nnum++;
				$('.charter').css("background-color", "gray");
				
			}else{
				return;
				
			}

		}else if(num===3){
			if(tnum===0){
			
						html="<label class='lnum-"+lnum+"'>"+
						"<span>매매</span>"+
						"<input type='text' class='rpay'id='trading'  required placeholder='매매가' >"+
						"<span>만원</span>"+
					"</label>";
					tnum++;
			}
			else{
				return;
				
			}
		}else if(num===2){
			
				html="<label class='lnum-"+lnum+"'>"+
				"<span>월세</span>"+
				"<input type='text' class='rpay deposit' required placeholder='보증금' > / <input type='text'  class='rpay monthly' required placeholder='월세' >"+
				"<span>만원</span>"+
			"</label>";
			mnum++;
		}
		html+="<label class='close-x lnum-"+lnum+" label-"+lnum+"' onclick='closen("+lnum+")' > x </label><br>";
		$('.rent-input').append(html);
		lnum++;

	}
	
	function closen(num){
		var name=".lnum-"+num;
		if(nnum>0){
			nnum--;
		$('.charter').css("background-color", "white");
		
		}
		if(nnum===0){
			$('.charter').removeClass("true").addClass("false");
		}
		if(tnum>0){
			tnum--;
			
		}
		if(tnum===0){
			$('#trading').removeClass("true").addClass("false");
		}
		if(mnum>0){
			mnum--;
			
		}else if(mnum===0){
			$('#monthly').removeClass("true").addClass("false");
		}
		$('.label-'+num+' + br').remove();
		$(name).remove(name);
		
	}
	
	
	
	
	
	var lastKey=''; //최종키
	var check = false; //검색체크상태
	var loopKey = false; // 루프상태
	var vD=null;

	function startSuggest(num){
		if(num===1){
			check = false;
		}else if(num===2){
			check = false;
		}
		vD=document.getElementById("view");
		if(check===false){ // 최초 검색일 경우 0.5대기후 sendKeyword()호출
			setTimeout("sendKeyword("+num+");",500);
			loopKey=true;
		}
		check = true;
	}

	function sendKeyword(num){
		
		
		if(loopKey===false){return}
		var key;
			if(num===1){
				key =$('#supply').val();
			}else if(num===2){
				key =$('#exclusive').val();
			}
		
		if(key===''||key===' '){ //값이 없거나 공백인경우
			lastKey='';
			
		}else if(key!==lastKey){ // 검색값이 다를경우 서버로 전송한다.
			lastKey=key;
		
		
			
			key=parseInt(key)*3.305785;
			if(num===1){
				$('#supply-area').val(key);
			}else if(num===2){
				$('#exclusive-area').val(key);
			}
		
			
		}
		setTimeout("sendKeyword("+num+");",500);
	}
	

	function select(i){ // 리스트 중에서 선택한 단어를 폼필드에 출력및 나머지 초기화
		f.word.value=jsonObj[i];
		vD.style.display='none';
		check=false;
		loopKey=false;
	}
</script>
</div>
</section>

<%@ include file="../include/footer.jsp"%>


