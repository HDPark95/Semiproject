<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer-->
<footer class="footer bg-black small text-center text-white-50">
	<div class="container">Copyright ⓒ Your Website 2020</div>
</footer>
<!-- Bootstrap core JS-->

	   <script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Core theme JS-->
<script src="resources/js/scripts.js"></script>
<script src="resources/js/text.js"></script>
<script>
	$(function() {
		$(".typer").typed({
			strings : [ " C조 Project", " Test용 문구", " 조장 : 박현두", " 대박임" ],
			typeSpeed : 500,
			backDelay : 1500,
			showCursor : false
		});
		$('#filter_close').click(
				function() {
					$('.filter-page').slideUp(1000).addClass('invisible').removeClass('visible');
					className = 'invisible';
					invisible = 'invisible';
					visible = 'visible';
				})
		$('.card').click(function() {
			var num = $(this).index();
			console.log(num)
		});
		var invisible = 'invisible';
		var visible = 'visible';
		var className = 'invisible';
		$('.filter-div').children('.btn').click(function() {

			$('.filter-page').removeClass(invisible);
			$('.filter-page').addClass(visible);
			if (className === 'visible') {

				$('.filter-page').slideUp(1000);

			} else {

				$('.filter-page').slideDown(1000);
			}
			className = visible;
			visible = invisible;
			invisible = className;
		});
		$('.sub-menu').parent("li").hover(
				function() {
					// 인
					$(this).children('.sub-menu').removeClass("invisible")
							.addClass('visible');
					$('#mainnav2').css("z-index", '0');
					$('#search-nav').css("z-index", '10');
				},
				function() {
					// 아웃
					$(this).children('.sub-menu').removeClass("visible")
							.addClass('invisible');
					$('#mainnav2').css("z-index", '1030');
					$('#search-nav').css("z-index", '1030');
				});
	});
</script>

<!-- Hyundoo JS-->
 <script>
	$(function() {
		var url = 'gu'
		$.ajax({
			url : url,
			success : function(d) {
				$('#combobox1').html(d);
			},
			error : function(e) {
				console.log("Error : " + e);
			}
		});
		/* 	$('#combobox1')
					.change(
							function() {
								//마커 추가하기.
								var param = $(this).val();
								var url = 'hyundoo.Project?page=commercial&subcode=6&guname='
										+ encodeURIComponent(param);
								$
										.ajax({
											url : url,
											success : function(d) {
												console.log(typeof (d));
												var myObj = JSON.parse(d);
												var i = 0;
												//console.log(d);
												for ( var e in myObj) {
													//console.log("e : "+e);
													var marker = new naver.maps.Marker(
															{
																position : new naver.maps.LatLng(
																		myObj[e].lat,
																		myObj[e].lng),
																map : map
															});
												}
												;
											},
											error : function(e) {
												console.log("Error : " + e);
											}
										});
							}) */
	});
</script>
<script>
	$(function() {
		$('#combobox1')
				.change(
						function() {
							var param = $('#combobox1').val()
							var url = 'dong?guName='
									+ encodeURIComponent(param)
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
						});
	});
</script>
<script>
	$(function() {
		$('#combobox2')
				.change(
						function() {
							var param = $('#combobox1').val()
							var param2 = $('#combobox2').val()
							var url = 'information2?guName='
									+ encodeURIComponent(param)
									+ '&dongName='
									+ encodeURIComponent(param2)
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
</script>
<script>
	$(function() {
		var url = 'largename'
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
</script>
<script>
	$(function() {
		$('#combobox3')
				.change(
						function() {
							var param = $('#combobox3').val()
							var url = 'mediumname?largeName='
									+ encodeURIComponent(param)
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
</script>
<script>
	 $(function() {
		$('#combobox4').change(
						function() {
							var largeName = $('#combobox3').val();
							var mediumName = $('#combobox4').val();
							var url = 'smallname?largeName='
									+ encodeURIComponent(largeName)
									+ "&mediumName="
									+ encodeURIComponent(mediumName)
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
		// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
		var pop = window.open("juso", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");
		// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		//document.form.roadFullAddr.value = roadFullAddr;
		$('#roadAddrPart1').val(roadAddrPart1);
		$("#addrDetail").val(addrDetail);
		$("#zipNo").val(zipNo);
	}
	</script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script> 
<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
<script>
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
	});
</script>

<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
</body>
</html>
