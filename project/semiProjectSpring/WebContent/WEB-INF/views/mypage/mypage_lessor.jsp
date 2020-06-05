<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/myPage/th_bootstrap.css?after"
	rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />

<%@ include file="../include/header_menu.jsp"%>


<section class="contact-section container topma " style="">


	<h2 class="th_mypage_maintext">MY 부동산 페이지(일반)</h2>


	<ul class="nav nav-tabs th_ul">
		<li class="th_li"><a class="nav-link active th_atwi"
			data-toggle="tab" href="#myinformation">정보수정</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#b">쓴 게시글 관리</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#c">연락한 부동산</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#d">내 문의 내역</a></li>

	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center;" id="myinformation">

			<%@ include file="../mypage/include/myinformation.jsp"%>

		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="b">
			<%@ include file="../mypage/include/infor_posts.jsp"%>
		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="c">
			<h2 class="container" style="margin-top: 300px; color: black;">나에게
				연락온 부동산 목록을 볼수 있습니다. </h2>
		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="d">
			<h2 class="container" style="margin-top: 300px; color: black;">내
				문의 내역 목록을 볼수 있는 페이지 입니다.</h2>
		</div>
	</div>

</section>



<%@ include file="../include/footer.jsp"%>



