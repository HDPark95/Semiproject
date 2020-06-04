<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- Footer-->
<footer class="footer bg-black small text-center text-white-50">
	<div class="container">Copyright ⓒ Your Website 2020</div>
</footer>
<!-- Bootstrap core JS-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<!-- <script>
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
						$('#combobox1').change(function(){
							//마커 추가하기.
								var param = $(this).val();
								var url = 'hyundoo.Project?page=commercial&subcode=5&target='+encodeURIComponent(param);
								$.ajax({
									url : url,
									success : function(d) {
										console.log(typeof(d));
										var myObj = JSON.parse(d);
										var i = 0;
										//console.log(d);
										for ( var e in myObj) {
											//console.log("e : "+e);
											var marker= new naver.maps.Marker({
											    position: new naver.maps.LatLng(myObj[e].lat, myObj[e].lng),
											    map: map
											});
										};
									},
									error : function(e) {
										console.log("Error : " + e);
									}
								});
						})
					});
				</script>
				<script>
					$(function() {
						var url = 'hyundoo.Project?page=commercial&subcode=2'
						$.ajax({
							url : url,
							success : function(d) {
								$('#combobox2').html(d);
							},
							error : function(e) {
								console.log("Error : " + e);
							}
						});
					});
				</script>
				<script>
					$(function() {
						$('#combobox2')
								.change(
										function() {
											var param = $('#combobox2').val()
											var url = 'hyundoo.Project?page=commercial&subcode=3&largeName='
													+ encodeURIComponent(param)
											$
													.ajax({
														url : url,
														success : function(d) {
															$('#combobox3')
																	.html(d);
														},
														error : function(e) {
															console
																	.log("Error : "
																			+ e);
														}
													});
										});
					});
					</script>
					<script>
					$(function() {
						$('#combobox3')
								.change(
										function() {
											var largeName = $('#combobox2')
													.val();
											var mediumName = $('#combobox3')
													.val();
											var url = 'hyundoo.Project?page=commercial&subcode=4&largeName='
													+ encodeURIComponent(largeName)
													+ "&mediumName="
													+ encodeURIComponent(mediumName)
											$
													.ajax({
														url : url,
														success : function(d) {
															$('#combobox4')
																	.html(d);
														},
														error : function(e) {
															console
																	.log("Error : "
																			+ e);
														}
													});
										});
					});
					function goPopup(){
						// 주소검색을 수행할 팝업 페이지를 호출합니다.
						// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
						var pop = window.open("semi.Project?page=commercial&subcode=96","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
						
						// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
					    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
					}function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
						// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
						//document.form.roadFullAddr.value = roadFullAddr;
						$('#roadAddrPart1').val(roadAddrPart1);
						$("#addrDetail").val(addrDetail);
						$("#zipNo").val(zipNo);
				}

				</script> -->
<script>
	$(function() {
		$("#type").change(function() {
			var type = $(this).val();
			console.log(type);
			if (type === '매매') {
				$('#sales').prop("disabled", "false");
				$('#monthly').prop("disabled", "true");
				$('#charter').prop("disabled", "true");
			} else if (type === '월세') {
				$('#sales').prop("disabled", "true");
				$('#monthly').prop("disabled", "false");
				$('#charter').prop("disabled", "true");
			} else if (type === '전세') {
				$('#sales').prop("disabled", "true");
				$('#monthly').prop("disabled", "true");
				$('#charter').prop("disabled", "false");
			}
		})
	})
</script>
<script src="//d1p7wdleee1q2z.cloudfront.net/post/search.min.js"></script>
<!-- "검색" 단추를 누르면 팝업 레이어가 열리도록 설정한다 -->
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
