<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/commercial/sidebar.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css"
	href="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.css">
<%@ include file="../include/header_menu.jsp"%>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/Swiper/4.5.1/css/swiper.min.css">
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
					src="//dapi.kakao.com/v2/maps/sdk.js?appkey=5d751c35293b0473bc14f09aa6b0ca97&libraries=services,clusterer,drawing"></script>
				<script>
			// 마커를 담을 배열입니다
			var markers = [];
		
			var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
			mapOption = {
				center : new kakao.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
				level : 3
			// 지도의 확대 레벨
			};

			// 지도를 생성합니다    
			var map = new kakao.maps.Map(mapContainer, mapOption);

			// 장소 검색 객체를 생성합니다
			var ps = new kakao.maps.services.Places();

			// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
			var infowindow = new kakao.maps.InfoWindow({
				zIndex : 1
			});

		

			// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
			function placesSearchCB(data, status, pagination) {
				if (status === kakao.maps.services.Status.OK) {

					// 정상적으로 검색이 완료됐으면
					// 검색 목록과 마커를 표출합니다
					displayPlaces(data);

					// 페이지 번호를 표출합니다
					displayPagination(pagination);

				} else if (status === kakao.maps.services.Status.ZERO_RESULT) {

					alert('검색 결과가 존재하지 않습니다.');
					return;

				} else if (status === kakao.maps.services.Status.ERROR) {

					alert('검색 결과 중 오류가 발생했습니다.');
					return;

				}
			}

			// 검색 결과 목록과 마커를 표출하는 함수입니다
			function displayPlaces(places) {

				var listEl = document.getElementById('placesList'), menuEl = document
						.getElementById('menu_wrap'), fragment = document
						.createDocumentFragment(), bounds = new kakao.maps.LatLngBounds(), listStr = '';

				// 검색 결과 목록에 추가된 항목들을 제거합니다
				removeAllChildNods(listEl);

				// 지도에 표시되고 있는 마커를 제거합니다
				removeMarker();

				for (var i = 0; i < places.length; i++) {

					// 마커를 생성하고 지도에 표시합니다
					var placePosition = new kakao.maps.LatLng(places[i].y,
							places[i].x), marker = addMarker(placePosition, i), itemEl = getListItem(
							i, places[i]); // 검색 결과 항목 Element를 생성합니다

					// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
					// LatLngBounds 객체에 좌표를 추가합니다
					bounds.extend(placePosition);

					// 마커와 검색결과 항목에 mouseover 했을때
					// 해당 장소에 인포윈도우에 장소명을 표시합니다
					// mouseout 했을 때는 인포윈도우를 닫습니다
					(function(marker, title) {
						kakao.maps.event.addListener(marker, 'mouseover',
								function() {
									displayInfowindow(marker, title);
								});

						kakao.maps.event.addListener(marker, 'mouseout',
								function() {
									infowindow.close();
								});

						itemEl.onmouseover = function() {
							displayInfowindow(marker, title);
						};

						itemEl.onmouseout = function() {
							infowindow.close();
						};
					})(marker, places[i].place_name);

					fragment.appendChild(itemEl);
				}

				// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
				listEl.appendChild(fragment);
				menuEl.scrollTop = 0;

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				map.setBounds(bounds);
			}

			// 검색결과 항목을 Element로 반환하는 함수입니다
			function getListItem(index, places) {

				var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
						+ (index + 1)
						+ '"></span>'
						+ '<div class="info">'
						+ '   <h5>' + places.place_name + '</h5>';

				if (places.road_address_name) {
					itemStr += '    <span>' + places.road_address_name
							+ '</span>' + '   <span class="jibun gray">'
							+ places.address_name + '</span>';
				} else {
					itemStr += '    <span>' + places.address_name + '</span>';
				}

				itemStr += '  <span class="tel">' + places.phone + '</span>'
						+ '</div>';

				el.innerHTML = itemStr;
				el.className = 'item';

				return el;
			}

			// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
			function addMarker(position, idx, title) {
				var imageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
				imageSize = new kakao.maps.Size(36, 37), // 마커 이미지의 크기
				imgOptions = {
					spriteSize : new kakao.maps.Size(36, 691), // 스프라이트 이미지의 크기
					spriteOrigin : new kakao.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
					offset : new kakao.maps.Point(13, 37)
				// 마커 좌표에 일치시킬 이미지 내에서의 좌표
				}, markerImage = new kakao.maps.MarkerImage(imageSrc,
						imageSize, imgOptions), marker = new kakao.maps.Marker(
						{
							position : position, // 마커의 위치
							image : markerImage
						});

				marker.setMap(map); // 지도 위에 마커를 표출합니다
				markers.push(marker); // 배열에 생성된 마커를 추가합니다

				return marker;
			}

			// 지도 위에 표시되고 있는 마커를 모두 제거합니다
			function removeMarker() {
				for (var i = 0; i < markers.length; i++) {
					markers[i].setMap(null);
				}
				markers = [];
			}

			// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
			function displayPagination(pagination) {
				var paginationEl = document.getElementById('pagination'), fragment = document
						.createDocumentFragment(), i;

				// 기존에 추가된 페이지번호를 삭제합니다
				while (paginationEl.hasChildNodes()) {
					paginationEl.removeChild(paginationEl.lastChild);
				}

				for (i = 1; i <= pagination.last; i++) {
					var el = document.createElement('a');
					el.href = "#";
					el.innerHTML = i;

					if (i === pagination.current) {
						el.className = 'on';
					} else {
						el.onclick = (function(i) {
							return function() {
								pagination.gotoPage(i);
							}
						})(i);
					}

					fragment.appendChild(el);
				}
				paginationEl.appendChild(fragment);
			}

			// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
			// 인포윈도우에 장소명을 표시합니다
			function displayInfowindow(marker, title) {
				var content = '<div style="padding:5px;z-index:1;">' + title
						+ '</div>';

				infowindow.setContent(content);
				infowindow.open(map, marker);
			}

			// 검색결과 목록의 자식 Element를 제거하는 함수입니다
			function removeAllChildNods(el) {
				while (el.hasChildNodes()) {
					el.removeChild(el.lastChild);
				}
			}
		</script>
				<div class="col-lg-4" id="information">
					<h2>현재 영업중인 상권정보</h2>
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
		<div id='loadingmessage' style='display: none'>
			<img style="margin: 0 auto; display: block;"
				src='resources/images/ajax-loader.gif' />
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
		$("#myModal").html("")
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
							
						

							/* var HOME_PATH = window.HOME_PATH || '.'; */
							
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
			var key = 0;
			var quater = 0;
			var meanOper = 0;
			var meanClose = 0;
			var seoulMeanOper = 0;
			var seoulMeanClose = 0;
			var openBusiBarChart = 0;
			var timePopChart = 0;
			var timePopChartSplitGender=0;
			var openBusiBarChart=0;
			getOpenBusiData();
			draw_timePop();
			draw_OpenBusiBarChart();
			$('#myModal2').show();
		};
	// 팝업 Close 기능
	function close_pop2(flag) {
		$('#myModal2').hide();
	};
	function draw_timePop(){
		var guName = $("#combobox1").val();
		var url = "getTimePopChart?guName=" + encodeURIComponent(guName);
		$('#timePopChart').html(loadingMessage);
		$.ajax({
			url : url,
			dataType:"json",
			success : function(d) {
				key = d["key"]
				console.log(key)
				$("#keyValue").attr("value", key)
				var value = d["value"]
				timePopChart = c3.generate({
					bindto: "#timePopChart",
					data : {
						columns : [value]
					},
					axis: {
				        x: {
				            type: 'category',
				            categories:key
				        }
				    }
				});
				$("#location").text(guName);
				$("#timePopButton").attr("onclick", "split_gender()")
				$("#timePopButton > span").text("성별 그래프")
			}
		});
	}
	function split_gender(){
		var guName = $("#combobox1").val(); 
		var url = "getTimePopChartByGender?guName=" + encodeURIComponent(guName);
		$('#timePopChart').html(loadingMessage);
		$.ajax({
			url:url,
			type:"get",
			dataType:"json",
			success : function(d){
			 	var valueFemale = d["여성"]
				var valueMale = d["남성"]
			 	timePopChartSplitGender = c3.generate({
					bindto: "#timePopChart",
					data : {
						columns : [valueFemale,valueMale],
						/* types:{
							남자: "area-spline",
							여자: "area-spline"
						} */
					},
					axis: {
				        x: {
				            type: 'category',
				            categories:key
				        }
				    }
				});
				$("#location").text(guName);
				$("#timePopButton").attr("onclick", "draw_timePop()")
				$("#timePopButton > span").text("통합 그래프")
			},
			error:function(e){
				console.log(e);
			}
		})
	}
	function getOpenBusiData(){
		var guName = $("#combobox1").val();
		var dongName = $("#combobox2").val();
		if (dongName === "동 선택"){
			var url = "outerDataBusi?guname=" + encodeURIComponent(guName);	
		}else{
			var url = "outerDataBusi?guname=" + encodeURIComponent(guName)+"&dongname="+encodeURIComponent(dongName);
		}
		$.ajax({
			url:url,
			success : function(d){
					$("#myModal2").html(d);
				},
			error:function(e){
				console.log(e);
			}
		})
	}
	function draw_OpenBusiBarChart(){
		var guName = $("#combobox1").val();
		var url = "getOuterDataforChart?guName=" + encodeURIComponent(guName);
		$('#quaterOpenChart').html(loadingMessage);
		$.ajax({
			url : url,
			dataType:"json",
			success : function(d) {
				quater = d["key"]
				meanOper = d["MeanOper"]
				meanClose = d["MeanClose"]
				seoulMeanOper = d["SeoulMeanOper"]
				seoulMeanClose = d["SeoulMeanClose"]
				console.log(quater)
				console.log(meanOper)
				console.log(meanClose)
				openBusiBarChart = c3.generate({
					bindto: "#quaterOpenChart",
					data : {
						columns : [meanOper],
						type: 'bar'
					},
					axis: {
				        x: {
				            type: 'category',
				            categories:quater
				        }
				    }
				});
				$('#loadingmessage').hide();
			}
		});
	}
	function addMeanOper(){
		openBusiBarChart.load({
			columns:[meanOper]
		})
		$("#add_button1").attr("onclick", "deleteMeanOper()")
	}
	function addmeanClose(){
		openBusiBarChart.load({
			columns:[meanClose]
		})
		$("#add_button2").attr("onclick", "deletemeanClose()")
		}
	function addseoulMeanOper(){
		openBusiBarChart.load({
			columns:[seoulMeanOper]
		})
		$("#add_button3").attr("onclick", "deleteseoulMeanOper()")
	}function addseoulMeanClose(){
		openBusiBarChart.load({
			columns:[seoulMeanClose]
		})
		$("#add_button4").attr("onclick", "deleteseoulMeanOper()")
	}
	function deleteMeanOper(){
		openBusiBarChart.unload({
			ids:'평균 운영 개월'
		})
		$("#add_button1").attr("onclick", "addMeanOper()")
	}
	function deletemeanClose(){
		openBusiBarChart.unload({
			ids:'평균 폐업 개월'
		})
		$("#add_button2").attr("onclick", "addmeanClose()")
		}
	function deleteseoulMeanOper(){
		openBusiBarChart.unload({
			ids:'서울 평균 운영 개월'
		})
		$("#add_button3").attr("onclick", "addseoulMeanOper()")
	}function deleteseoulMeanClose(){
		openBusiBarChart.unload({
			ids:'서울 평균 폐업 개월'
		})
		$("#add_button4").attr("onclick", "addseoulMeanClose()")
	}
	$('#loadingmessage').hide();
	var loadingMessage = $("#loadingmessage").html();
	/*구별 검색 기능*/
/*	
	$(function(){
		$("")
	})*/
</script>
	<script src="http://d3js.org/d3.v3.min.js" charset="utf-8"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/c3/0.4.10/c3.min.js"></script>
</section>
<%@include file="modal.jsp"%>
<%@include file="modal2.jsp"%>
<!-- <script src="resources/js/commercial/script.js"></script> -->
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<%@ include file="../include/footer.jsp"%>
</html>