<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/myPage/th_bootstrap.css?after"
	rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />
<%@ include file="../include/header_menu.jsp"%>


	<script src="https://code.jquery.com/jquery-latest.js"></script>

<style>
.modal {
            display: none; /* Hidden by default */
            position: fixed; /* Stay in place */
            z-index: 1; /* Sit on top */
            left: 0;
            top: 0;
            width: 100%; /* Full width */
            height: 100%; /* Full height */
            overflow: auto; /* Enable scroll if needed */
            background-color: rgb(0,0,0); /* Fallback color */
            background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
        }
    
        /* Modal Content/Box */
 .modal-content {
            background-color: #fefefe;
            margin: 15% auto; /* 15% from the top and centered */
            padding: 20px;
            border: 1px solid #888;
            width: 30%; /* Could be more or less, depending on screen size */                          
        }
.th_li {
	width: 25%;
}

.table-hover2 tbody tr:hover {
	background-color: rgba(0, 0, 0, 0.075);
}

.modal{
    overflow-x: hidden;
    overflow-y: auto;
	opacity: 1;
	text-align: center;
    padding: 0!important;
    position: fixed;
    z-index: 1050;
    outline: 0;
    position:fixed; 
    top:50%; 
    left:50%; 
    transform: translate(-50%,-50%);
    max-width: 1000px;
}

#myModal2{
width: 700px;
height: 260px;
}
#modal-dialog{
    display: inline-block;
    text-align: left;
    vertical-align: middle;
    width: 600px;
    margin: 30px auto;
    position: relative;
}
.modal a.close-modal {
    top: 0px;
    right: 0px;
}
        
</style>
<section class="contact-section container topma mypagesection" style=""> 

	<div id="my_pop" class="modal">
		<div class="modal-content">
		</div>
	</div>

	<h2 class="th_mypage_maintext">MY 부동산 페이지(${vo.agubun })</h2>
  

	<ul class="nav nav-tabs th_ul">
		<li class="th_li"><a class="nav-link active th_atwi"
			data-toggle="tab" href="#myinformation">정보수정</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab" id="selectmyposts"
			href="#myposts">쓴 게시글 관리</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab" id="selectmyproduct"
			href="#myproduct">내 매물관리</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab" id="selectmyauction"
			href="#myauction">내 경매관리</a></li>	

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
		<div class="tab-pane fade th_page_space" id="myauction">
<%--         <%@ include file="../auction/auctionmypage.jsp"%> --%>
		</div>
	</div>

</section>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() { 
		$('#memberdetail_btn').click(function() {
			$('#my_pop').show();
			$.ajax({
				url : "inforDetail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
		});
		$('#logindetail_btn').click(function() {
			$('#my_pop').show();
			$.ajax({
				url : "loginDetail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"
						,anum : "${vo.anum }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
		});
		$('#paymentdetail_btn').click(function() {
			$('#my_pop').show();
			$.ajax({
				url : "Pay_Detail" ,
				type : "post" ,
				data : {aid : "${vo.aid }"
					,anum : "${vo.anum }"},
				success : function(result) {
					$('.modal-content').html(result);
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
					console.log(result)
					$('#myproduct').html(result);
				}
			});
			
		});
		
		$('#member_secession_btn').click(function() {
			
			$.ajax({
				url : "member_secession" ,
				type : "post" ,
				data : {aid : "${vo.aid }"},
				success : function(result) {
					$('.modal-content').html(result);
				}
			});
			$('#my_pop').show();
		});
		
		$('#my_pop_btn').click(function(){
			
			function close_pop(flag) {
				$('#my_pop').hide();
			}
			
		});
		
		$('#selectmyauction').click(function() {
			$.ajax({
				url : "auction_myinfo" ,
				type : "post" ,
				data : {aid : "${vo.aid}"},
				success : function(result) {
					console.log(result)
 					$('#myauction').html(result);
				}
			});			
		});
	});
</script>

<%@ include file="../include/footer.jsp"%>



