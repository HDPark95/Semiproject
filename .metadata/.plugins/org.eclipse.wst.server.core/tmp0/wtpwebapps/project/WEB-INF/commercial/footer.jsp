<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!-- Footer-->
<footer class="footer bg-black small text-center text-white-50">
	<div class="container">Copyright �� Your Website 2020</div>
</footer>
<!-- Bootstrap core JS-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
	$(function() {
		var url = 'hyundoo.Project?page=commercial&subcode=1'
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
							//��Ŀ �߰��ϱ�.
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
							var url = 'hyundoo.Project?page=commercial&subcode=2&guName='
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
							var url = 'hyundoo.Project?page=commercial&subcode=96&guName='
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
							var seoul = new naver.maps.LatLngBounds(new naver.maps.LatLng(
									37.42829747263545, 126.76620435615891),
									new naver.maps.LatLng(37.7010174173061, 127.18379493229875));
							var map = new naver.maps.Map(document.getElementById('map'), {
								minZoom : 10.5,
								zoom : 10.5,
								mapTypeId : 'normal',
								center : new naver.maps.LatLng(37.4098871, 126.989261),
								maxBounds : seoul,
								baseTileOpacity : 0,
								scaleControl: false,
					            logoControl: false,
					            mapDataControl: false,
					            zoomControl: false,
					            mapTypeControl: false
							});
							
							/* var HOME_PATH = window.HOME_PATH || '.'; */
							naver.maps.Event.once(map, 'init_stylemap', function() {
								$.ajax({
									url : 'json/'+$(this).val()+'.json',
									dataType : 'json',
									success : startDataLayer
								});
							});
						});
	});
</script>
<script>
	
</script>
<script>
	$(function() {
		var url = 'hyundoo.Project?page=commercial&subcode=3'
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
							var url = 'hyundoo.Project?page=commercial&subcode=4&largeName='
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
		$('#combobox4')
				.change(
						function() {
							var largeName = $('#combobox3').val();
							var mediumName = $('#combobox4').val();
							var url = 'hyundoo.Project?page=commercial&subcode=5&largeName='
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
		// �ּҰ˻��� ������ �˾� �������� ȣ���մϴ�.
		// ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
		var pop = window.open("semi.Project?page=commercial&subcode=96", "pop",
				"width=570,height=420, scrollbars=yes, resizable=yes");

		// ����� ���� ���, ȣ��� ������(jusopopup.jsp)���� ���� �ּҰ˻�URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)�� ȣ���ϰ� �˴ϴ�.
		//var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
	}
	function jusoCallBack(roadFullAddr, roadAddrPart1, addrDetail,
			roadAddrPart2, engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,
			detBdNmList, bdNm, bdKdcd, siNm, sggNm, emdNm, liNm, rn, udrtYn,
			buldMnnm, buldSlno, mtYn, lnbrMnnm, lnbrSlno, emdNo) {
		// �˾����������� �ּ��Է��� ������ �޾Ƽ�, �� �������� ������ ����մϴ�.
		//document.form.roadFullAddr.value = roadFullAddr;
		$('#roadAddrPart1').val(roadAddrPart1);
		$("#addrDetail").val(addrDetail);
		$("#zipNo").val(zipNo);
	}
</script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<!-- "�˻�" ���߸� ������ �˾� ���̾ �������� �����Ѵ� -->
<script>
	$(function() {
		$("#postcodify_search_button").postcodifyPopUp();
	});
</script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js"></script>
<!-- Third party plugin JS-->
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
