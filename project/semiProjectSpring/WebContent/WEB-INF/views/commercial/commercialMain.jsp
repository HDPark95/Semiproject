<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/commercial/sidebar.css" rel="stylesheet" />
  <link href="resources/css/commercial/style.css?after" rel="stylesheet" />
<%@ include file="../include/header_menu.jsp"%>
<%@include file="sidemenu.jsp"%>
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
	<div class="row align-items-center my-7">
		<div id="map" class="col-lg-7" style="width: 100%; height: 655px;z-index:0;">
			<!-- <img class="img-fluid rounded mb-4 mb-lg-0" src="http://placehold.it/900x400"> -->
		</div>
		<script type="text/javascript"
			src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=wejnreaybi"></script>
		<script type="js/MarkerClustering.js"></script>
		<!-- <script>
			var seoul = new naver.maps.LatLngBounds(new naver.maps.LatLng(
					37.42829747263545, 126.76620435615891),
					new naver.maps.LatLng(37.7010174173061, 127.18379493229875));
			var map = new naver.maps.Map(document.getElementById('map'), {
				minZoom : 10.5,
				zoom : 10.5,
				mapTypeId : 'normal',
				center : new naver.maps.LatLng(37.4098871, 126.989261),
				maxBounds : seoul,
				baseTileOpacity : 1,
				scaleControl : false,
				logoControl : false,
				mapDataControl : false,
				zoomControl : false,
				mapTypeControl : false,
				draggable:false,
				maxZoom : 10.5,
				disableKineticPan:false,
				pinchZoom:false,
				scrollWheel:false,
			});
			naver.maps.Event.once(map, 'init_stylemap', function() {
				$.ajax({
					url : 'js/seoul_municipalities_geo.json',
					dataType : 'json',
					success : startDataLayer
				});
			});
			//geoJson 레이어 추가하기
			function startDataLayer(geojson) {
				map.data.addGeoJson(geojson);
				map.data.setStyle(function(feature) {
					var color = 'white';
					if (feature.getProperty('isColorful')) {
						color = feature.getProperty('color');
					}
					return {
						fillColor : 'white',
						strokeColor : color,
						strokeWeight : 2,
						icon : null,
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
				map.data.addListener('mouseover', function(e) {
					map.data.overrideStyle(e.feature, {
						strokeWeight : 8,
						icon : 'js/seoul_municipalities_geo.json'
					});
				});
			}
		</script> -->
		<div class="col-lg-5" id="information">
			<h1 class="font-weight-light">입지 선정 서비스</h1>
			<p>창업을 원하시는 입지의 좌표를 선택해주세요. 그 입지 근처의 유동인구, 주변 상권분석, 실거래가 등 다양한
				정보를 제공해드립니다. 조금 더 자세한 정보를 얻고 싶으시면 상세하게 검색해보세요.</p>
		</div>
		<!-- <script>
		$(function() {
			$('#combobox1').change(function() {
							});
		});
		</script> -->
		<!-- /.col-md-4 -->
	</div>
	<!-- /.row -->
	<!-- Content Row -->
	<div class="row" id="product">
		<div class="col-md-4 mb-5">
			<div class="card h-100">
				<div class="card-body">
					<h2 class="card-title">매물 1</h2>
					<p class="card-text">매물 정보 이미지 등 들어올 자리</p>
				</div>
				<div class="card-footer">
					<button onclick="open_pop()" class="btn btn-primary btn-sm">More
						Info</button>
				</div>
			</div>
		</div>
		<!-- /.col-md-4 -->
		<div class="col-md-4 mb-5">
			<div class="card h-100">
				<div class="card-body">
					<h2 class="card-title">매물 2</h2>
					<p class="card-text">매물 정보 이미지 등 들어올 자리</p>
				</div>
				<div class="card-footer">
					<button onclick="open_pop()" class="btn btn-primary btn-sm">More
						Info</button>
				</div>
			</div>
		</div>
		<!-- /.col-md-4 -->
		<div class="col-md-4 mb-5">
			<div class="card h-100">
				<div class="card-body">
					<h2 class="card-title">매물 3</h2>
					<p class="card-text">매물 정보 이미지 등 들어올 자리</p>
				</div>
				<div class="card-footer">
					<button onclick="open_pop()" class="btn btn-primary btn-sm">More
						Info</button>
				</div>
			</div>
		</div>
		<!-- /.col-md-4 -->
	</div>
	<!-- /.row -->
</div>
<!-- /.container -->
<%@include file="modal.jsp"%>   
<script src="resources/js/commercial/script.js"></script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> 
<%@ include file="../include/footer.jsp"%>
</html>