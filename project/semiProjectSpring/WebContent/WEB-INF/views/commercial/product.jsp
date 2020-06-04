<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../commercial/header_index.jsp"%>



<section class="contact-section bg-white">
	<div class="container">
		<div id="map" class="col-lg-12" style="width: 100%; height: 820px;">
		</div>
		<script type="text/javascript"
			src="https://openapi.map.naver.com/openapi/v3/maps.js?ncpClientId=wejnreaybi"></script>
		<script>
			var seoul = new naver.maps.LatLngBounds(new naver.maps.LatLng(
					37.42829747263545, 126.76620435615891),
					new naver.maps.LatLng(37.7010174173061, 127.18379493229875));
			var map = new naver.maps.Map(document.getElementById('map'), {
				minZoom : 11.5,
				zoom : 11.5,
				mapTypeId : 'normal',
				center : new naver.maps.LatLng(37.4098871, 126.989261),
				maxBounds : seoul,
				logoControl : false,
				baseTileOpacity : 1
			});
			/* var HOME_PATH = window.HOME_PATH || '.'; */
			naver.maps.Event.once(map, 'init_stylemap', function() {
				$.ajax({
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
				map.data.addListener('mouseover', function(e) {
					map.data.overrideStyle(e.feature, {
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
	</div>
</section>
<%@include file="../commercial/sidemenu.jsp" %>

<%@ include file="../commercial/footer.jsp"%>