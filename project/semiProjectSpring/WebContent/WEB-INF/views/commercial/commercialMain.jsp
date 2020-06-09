<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/commercial/sidebar.css" rel="stylesheet" />
<%@ include file="../include/header_menu.jsp"%>
<%@include file="sidemenu.jsp"%>
<section class="contact-section ">
	<!-- Page Content -->
	<div class="container">
		<!-- Call to Action Well -->
		<script src="resources/js/commercial/json2.js"></script>
		<div
			class="card text-white bg-secondary my-6 py-4 text-center col-lg-12">
			<div class="card-body">
				<form class="form-inline">
					<select id="combobox1" class="form-control"
						style="margin-right: 30px; width: 120px">
						<!-- <input type="text" autocomplete="off" placeholder="Select a State" class="combobox input-large form-control"> -->
						<option>구 선택</option>
					</select> <select id="combobox2" class="form-control"
						style="margin-right: 30px; width: 120px">
						<!-- <input type="text" autocomplete="off" placeholder="Select a State" class="combobox input-large form-control"> -->
						<option>동 선택</option>
					</select> <select id="combobox3" class="form-control"
						style="margin-right: 30px; width: 200px">
						<option>업종대분류</option>
					</select> <select id="combobox4" class="form-control"
						style="margin-right: 30px; width: 250px">
						<option>업종중분류</option>
					</select> <select id="combobox5" class="form-control"
						style="margin-right: 30px; width: 200px">
						<option>업종소분류</option>
					</select>
				</form>
				<!-- <p class="text-white m-0">지도 위치 선택 버튼 들어올 자리</p> -->
			</div>
		</div>
		<!-- Heading Row -->
		<blockquote class="border">
			<div class="row align-items-center my-7">
				<div id="map" class="col-lg-7"
					style="width: 100%; height: 655px; z-index: 0; margin-left: 10px">
					<!-- <img class="img-fluid rounded mb-4 mb-lg-0" src="http://placehold.it/900x400"> -->
				</div>
				<script type="text/javascript"
					src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=zfozw8jz6o"></script>
				<script>
					var seoul = new naver.maps.LatLngBounds(
							new naver.maps.LatLng(37.42829747263545,
									126.76620435615891), new naver.maps.LatLng(
									37.7010174173061, 127.18379493229875));
					var map = new naver.maps.Map(
							document.getElementById('map'), {
								minZoom : 10.5,
								zoom : 10.5,
								mapTypeId : 'normal',
								center : new naver.maps.LatLng(37.4098871,
										126.989261),
								maxBounds : seoul,
								/* baseTileOpacity : 0, */
								scaleControl : false,
								logoControl : false,
								mapDataControl : false,
								zoomControl : false,
								mapTypeControl : false,
								draggable : false,
								maxZoom : 10.5,
								disableKineticPan : false,
								pinchZoom : false,
								scrollWheel : false,
							});
					/* var HOME_PATH = window.HOME_PATH || '.'; */
					naver.maps.Event
							.once(
									map,
									'init_stylemap',
									function() {
										$
												.ajax({
													url : 'resources/js/commercial/seoul_municipalities_geo.json',
													dataType : 'json',
													success : startDataLayer
												});
									});
					//geoJson 레이어 추가하기
					function startDataLayer(geojson) {
						map.data.addGeoJson(geojson);
						map.data.setStyle(function(feature) {
							var color = 'black';
							if (feature.getProperty('isColorful')) {
								color = feature.getProperty('color');
							}
							return {
								fillColor : 'white',
								strokeColor : color,
								strokeWeight : 2,
								icon : null
							};
						});
						map.data.addListener('click', function(e) {
							e.feature.setProperty('isColorful', true);

						});
						map.data.addListener('dblclick', function(e) {
							var bounds = e.feature.getBounds();

							if (bounds) {
								map.panToBounds(bounds);
							}
						});
						map.data
								.addListener(
										'mouseover',
										function(e) {
											map.data
													.overrideStyle(
															e.feature,
															{
																strokeWeight : 8,
																icon : 'resources/js/commercial/seoul_municipalities_geo.json'
															});
										});
						map.data.addListener('mouseout', function(e) {
							map.data.revertStyle();
						});
					}
					/* 	for (var i = 0; i < ${array.length}; i++) {
							var marker = new naver.maps.Marker({
								position: new naver.maps.LatLng(x,y),
								map : map,
								title : '항목'
							})
						}*/
				</script>
				<div class="col-lg-4" id="information">
					<h1 class="font-weight-light">현재 영업중인 상권정보</h1>
					<p>창업을 원하시는 입지의 좌표를 선택해주세요. 그 입지 근처의 유동인구, 주변 상권분석, 실거래가 등 다양한
						정보를 제공해드립니다. 조금 더 자세한 정보를 얻고 싶으시면 상세하게 검색해보세요.</p>
				</div>
				<!-- /.col-md-4 -->
			</div>
		</blockquote>
		<!-- /.row -->
		<!-- Content Row -->
		<div
			class="card text-black bg-secondary my-6 py-4 text-center col-lg-12 bg-white">
			<h3>Best3 상가/점포 매물정보</h3>
			<div class="row" id="product" style="text-align: center;">
				<h4>검색 된 결과가 없습니다.</h4>
			</div>
			<!-- /.row -->
		</div>
	</div>
<!-- <script>
	function open_pop() {
		$(".productdescmodal").click(function(){
			var atclno = $(this).val();
			console.log(atclno);
			var url = "productModal?atclno=" + atclno;
			$.ajax({
				url : url,
				success : function(d) {
					$("#myModal").html(d);
				}
			});
			$('#myModal').show();
		});
	};
	//팝업 Close 기능
	function close_pop(flag) {
		$('#myModal').hide();
	};
	</script> -->
	<script src="resources/js/commercial/script.js?ver=1"></script>
</section>
<!-- /.container -->
<%@include file="modal.jsp"%>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<%@ include file="../include/footer.jsp"%>
</html>