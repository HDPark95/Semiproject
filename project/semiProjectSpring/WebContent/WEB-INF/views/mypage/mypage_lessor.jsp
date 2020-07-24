<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/myPage/th_bootstrap.css?after"
	rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />

<%@ include file="../include/header_menu.jsp"%>


<section class="contact-section container topma mypagesection" style=""> 


	<h2 class="th_mypage_maintext">MY 부동산 페이지(${vo.agubun })</h2>
  

	<ul class="nav nav-tabs th_ul">
		<li class="th_li"><a class="nav-link active th_atwi"
			data-toggle="tab" href="#myinformation">정보수정</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab" id="selectmyposts"
			href="#myposts">쓴 게시글 관리</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab" id="selectmyproduct"
			href="#myproduct">내 매물관리</a></li>

	</ul>
	<div id="myTabContent" class="tab-content" >
		<div class="tab-pane  th_page_space  fade show active row "
			style="text-align: center; margin-top: 30px;" id="myinformation">
 
			<%@ include file="../mypage/myinformation.jsp"%>

		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="myposts">
			

			<ul class="nav nav-tabs">
				<li class="th_li_sub"><a class="th_nav-link active th_atwi" id="myposts_1"
					data-toggle="tab" href="#mypage_posts">커뮤니티</a></li>
				<li class="th_li_sub"><a class="th_nav-link th_atwi "	id="mycustomer_1"
					data-toggle="tab" href="#mypage_posts">고객센터 문의</a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<div class="tab-pane  th_page_space  fade show active "
					style="text-align: center;" id="mypage_posts">
					

				</div>

				

			</div>
		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="myproduct">
			<%@ include file="../mypage/include/infor_management.jsp"%>
		</div>
	</div>

</section>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() { 
		
		$('#memberdetail_btn').click(function() {
			$('.mypagesection').css("height", "1500px");
			$.ajax({
				url : "inforDetail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"},
				success : function(result) {
					$('#infor_memberdetail').html(result);
				}
			});
		});
		$('#logindetail_btn').click(function() {
			$.ajax({
				url : "loginDetail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"
						,anum : "${vo.anum }"},
				success : function(result) {
					$('#infor_logindata').html(result);
				}
			});
		});
		$('#paymentdetail_btn').click(function() {
			$('.mypagesection').css("height", "1900px");
			$.ajax({
				url : "Pay_Detail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"
					,anum : "${vo.anum }"},
				success : function(result) {
					$('#infor_paymentdatail').html(result);
				}
			});
		});
		$('#member_secession_btn').click(function() {
			
		});
		
		$('#selectmyposts').click(function() {
			$.ajax({
				url : "infor_posts" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#mypage_posts').html(result);
				}
			});
		});
		
		$('#myposts_1').click(function() {
			$.ajax({
				url : "infor_posts" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#mypage_posts').html(result);
				}
			});
		});
		
		$('#mycustomer_1').click(function() {
			$.ajax({
				url : "infor_customer" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#mypage_posts').html(result);
				}
			});
		});
		
		
		$('#selectmyproduct').click(function() {
			$.ajax({
				url : "infor_product" ,
				type : "post" ,
				data : {anum : "${vo.anum }"},
				success : function(result) {
					$('#myproduct').html(result);
				}
			});
		});
		
		$('#member_secession_btn').click(function() {
			$('.mypagesection').css("height", "1900px");
			$.ajax({
				url : "member_secession" ,
				type : "post" ,
				data : {aid : "${vo.aid }"},
				success : function(result) {
					$('#member_secession').html(result);
				}
			});
		});
		
	});
</script>


<%@ include file="../include/footer.jsp"%>



