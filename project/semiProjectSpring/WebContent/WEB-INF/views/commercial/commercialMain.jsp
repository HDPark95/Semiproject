<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/commercial/sidebar.css" rel="stylesheet" />
<%@ include file="../include/header_menu.jsp"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
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
				<script type="text/javascript"
					src="resources/js/commercial/MarkerClustering.js"></script>
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
							}), markers = [];
					var htmlMarker1 = {
							        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(resources/images/commercial/marker/cluster-marker-1.png);background-size:contain;"></div>',
							        size: N.Size(40, 40),
							        anchor: N.Point(20, 20)
							    },
							    htmlMarker2 = {
							        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(resources/images/commercial/marker/cluster-marker-2.png);background-size:contain;"></div>',
							        size: N.Size(40, 40),
							        anchor: N.Point(20, 20)
							    },
							    htmlMarker3 = {
							        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(resources/images/commercial/marker/cluster-marker-3.png);background-size:contain;"></div>',
							        size: N.Size(40, 40),
							        anchor: N.Point(20, 20)
							    },
							    htmlMarker4 = {
							        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(resources/images/commercial/marker/cluster-marker-4.png);background-size:contain;"></div>',
							        size: N.Size(40, 40),
							        anchor: N.Point(20, 20)
							    },
							    htmlMarker5 = {
							        content: '<div style="cursor:pointer;width:40px;height:40px;line-height:42px;font-size:10px;color:white;text-align:center;font-weight:bold;background:url(resources/images/commercial/marker/cluster-marker-5.png);background-size:contain;"></div>',
							        size: N.Size(40, 40),
							        anchor: N.Point(20, 20)
							    };
							   $(function(){ $("#combobox5").change(function(){
							    	var	param1 = $("#combobox1").val()
							    	var	param2 = $("#combobox2").val()
							   		var	param3 = $("#combobox3").val()
							    	var	param4 = $("#combobox4").val()
							    	var	param5 = $("#combobox5").val()
							    	$.ajax(
							    		{url:"markerDetail?guName="+encodeURIComponent(param1)+"&dongName="+encodeURIComponent(param2)+"&largeName="+encodeURIComponent(param3)+"&mediumName="+
							    				encodeURIComponent(param4)+"&smallName="+encodeURIComponent(param5),
										dataType:"json",
										success: function(d){										
											for (var i = 0, ii = d.length; i < ii; i++) {
													var spot = d[i];
										            latlng = new naver.maps.LatLng(spot.lat, spot.lng);
										            marker = new naver.maps.Marker({
										                position: latlng,
										                draggable: true
										            });
										        markers.push(marker);
										   }
										}
									});
								    var markerClustering = new MarkerClustering({
								        minClusterSize: 2,
								        maxZoom: 8,
								        map: map,
								        markers: markers,
								        disableClickZoom: false,
								        gridSize: 120,
								        icons: [htmlMarker1, htmlMarker2, htmlMarker3, htmlMarker4, htmlMarker5],
								        indexGenerator: [10, 100, 200, 500, 1000],
								        stylingFunction: function(clusterMarker, count) {
								            $(clusterMarker.getElement()).find('div:first-child').text(count);
								        }
								    });
							    });
							   });
					/* 제이슨추가 */
					naver.maps.Event.once(
									map,
									'init_stylemap',
									function() {
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
						map.data.addListener('dblclick', function(e) {
							 
						});
					}
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
<script>
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
	$(function() {
		var cate = $('#combobox1').attr('id');
		var url = 'gu?&cate=' + encodeURIComponent(cate);
		$.ajax({
			url : url,
			success : function(d) {
				console.log(d);
				$('#combobox1').html(d);
			},
			error : function(e) {
				console.log("Error : " + e);
			}
		});
		var url = 'largename?cate=combobox3'
			$.ajax({
				url : url,
				success : function(d) {
					$('#combobox3').html(d);
				},
				error : function(e) {
					console.log("Error : " + e);
				}
			});
	});
	<!-- Hyundoo JS-->
	/*
	 * $(function() { var url = 'gu' $.ajax({ url : url, success : function(d) {
	 * $('#combobox1').html(d); }, error : function(e) { console.log("Error : " +
	 * e); } });
	 */
		/*
		 * $('#combobox1') .change( function() { //마커 추가하기. var param =
		 * $(this).val(); var url =
		 * 'hyundoo.Project?page=commercial&subcode=6&guname=' +
		 * encodeURIComponent(param); $ .ajax({ url : url, success : function(d) {
		 * console.log(typeof (d)); var myObj = JSON.parse(d); var i = 0;
		 * //console.log(d); for ( var e in myObj) { //console.log("e : "+e);
		 * var marker = new naver.maps.Marker( { position : new
		 * naver.maps.LatLng( myObj[e].lat, myObj[e].lng), map : map }); } ; },
		 * error : function(e) { console.log("Error : " + e); } }); })
		 */
	// });
	$(function() {
		$('#combobox1').change(
						function() {
							var param = $('#combobox1').val()
							var cate = $(this).attr('id')
							var url = 'dong?guName='
									+ encodeURIComponent(param) + '&cate=combobox2' 
							$.ajax({
								url : url,
								success : function(d) {
									$('#combobox2').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
							var url = 'information?guName='
									+ encodeURIComponent(param)
							$.ajax({
								url : url,
								success : function(d) { 
									$('#information').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
							var seoul = new naver.maps.LatLngBounds(
									new naver.maps.LatLng(37.42829747263545,
											126.76620435615891),
									new naver.maps.LatLng(37.7010174173061,
											127.18379493229875));
							var map = new naver.maps.Map(document
									.getElementById('map'), {
								minZoom : 10.5,
								zoom : 10.5,
								mapTypeId : 'normal',
								center : new naver.maps.LatLng(37.4098871,
										126.989261),
								maxBounds : seoul,
								baseTileOpacity : 0,
								scaleControl : false,
								logoControl : false,
								mapDataControl : false,
								zoomControl : false,
								mapTypeControl : false
							});

							/* var HOME_PATH = window.HOME_PATH || '.'; */
							naver.maps.Event.once(map, 'init_stylemap',
									function() {
										$.ajax({
											url : 'json/' + $(this).val()
													+ '.json',
											dataType : 'json',
											success : startDataLayer
										});
									});
							var location = $(this).val();
							console.log(location);
							var url = "productdesc?location="+encodeURIComponent(location);
							$.ajax({
								url: url,
								success : function(d){
									$('#product').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							})
						});
		open_pop();
						});
	$(function() {
		$('#combobox2')
				.change(
						function() {
							var param = $('#combobox1').val()
							var param2 = $('#combobox2').val()
							var cate = $(this).attr('id')
							var url = 'information2?guName='
									+ encodeURIComponent(param)
									+ '&dongName='
									+ encodeURIComponent(param2) + '&cate=combobox3'
							$.ajax({
								url : url,
								success : function(d) {
									$('#information').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
						});
	});
	$(function() {
		$('#combobox3')
				.change(
						function() {
							var param = $('#combobox3').val()
							var cate = $(this).attr('id')
							var url = 'mediumname?largeName='
									+ encodeURIComponent(param) + '&cate=combobox4'
							$.ajax({
								url : url,
								success : function(d) {
									$('#combobox4').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
						});
	});

	$(function() {
		$('#combobox4')
				.change(
						function() {
							var largeName = $('#combobox3').val();
							var cate = $(this).attr('id')
							var url = 'smallname?largeName='
									+ encodeURIComponent(largeName)
									+ "&mediumName="
									+ encodeURIComponent(mediumName) + '&cate=combobox5'
							$.ajax({
								url : url,
								success : function(d) {
									$('#combobox5').html(d);
								},
								error : function(e) {
									console.log("Error : " + e);
								}
							});
						});
	});
	function goPopup() {
		// 주소검색을 수행할 팝업 페이지를 호출합니다.
		// 호출된 페이지(jusopopup.jsp)에서 실제
		// 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("juso", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제
		// 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게
		// 됩니다.
		// var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes,
		// resizable=yes");
	}
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		// document.form.roadFullAddr.value = roadFullAddr;
		$('#roadAddrPart1').val(roadAddrPart1);
		$("#addrDetail").val(addrDetail);
		$("#zipNo").val(zipNo);
	}
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
	});
/*	function open_pop(){
		console.log('바뀜2??')
		$(".productdescmodal").click(function(){
		var atclno = $(this).val();
		console.log(atclno);
		var url = "productModal?atclno=" + atclno;
		$.ajax({
			url : url,
			success : function(d) {
				$("#myModal").html(d);
			},
			error:function(e){
				console.log(e);
			}
		})
		$("#myModal").show();
	});
	}*/
    $( document ).on('click', '.productdescmodal',function() {
    		if($("button.Cntcount").length>=3){
    			$("button.Cntcount").last().remove();
    		}
    		var pdnum = $(this).val();
    		console.log(pdnum);
    		var url = "productModal?pdnum=" + pdnum;
    		$.ajax({
			url : url,
			success : function(d) {
				$("#myModal").html(d);
			},
			error:function(e){
				console.log(e);
			}
    		})
			$("#myModal").show();
    		var pdnum = $(this).attr('value');
    		url = "recentCnt?pdnum="+ pdnum;
    		$.ajax({
    			url:url,
    			success : function(data){
    				$("#recentCnt").prepend(data); 
    			}
    		});
    	});
	function close_pop(flag) {
		$('#myModal').hide();
	};
	
	function open_pop2() {
		$('#myModal2').show();
	};
	// 팝업 Close 기능
	function close_pop2(flag) {
		$('#myModal2').hide();
	};
	/*구별 검색 기능*/
/*	
	$(function(){
		$("")
	})*/
</script>
</section>
<!-- /.container -->
<%@include file="modal.jsp"%>
<!-- <script src="resources/js/commercial/script.js"></script> -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<%@ include file="../include/footer.jsp"%>
</html>