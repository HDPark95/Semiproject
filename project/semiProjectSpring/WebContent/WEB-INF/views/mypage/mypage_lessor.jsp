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
			href="#b">내가쓴 리뷰</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#c">연락한 부동산</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#d">내 문의 내역</a></li>

	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center;" id="myinformation">
			
			<form action="inforDetail" method="post">
				<div class="card" style="max-width: 449px; height: 298">
					<div class="card-header">회원정보</div>
					<div class="card-body">
						<h4 class="card-title">${vo.name } 님 의 회원개인정보 입니다.</h4>
						<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
						<input type="hidden" value="${vo.id }" name="id">

						<button type="submit" class="btn btn-success">확인하기</button>
					</div>
				</div>
			</form>
			
			<form action="inforSignup" method="post">
				<div class="card" style="max-width: 449px; height: 298">
					<div class="card-header">로그인 정보</div>
					<div class="card-body">
						<h4 class="card-title">${vo.name } 님 의 로그인 관련 정보 입니다.</h4>
						<p class="card-text">확인하시려면 버튼을 눌러주세요.</p>
						<input type="hidden" value="${vo.id }" name="id">

						<button type="submit" class="btn btn-success">확인하기</button>
					</div>
				</div>
			</form>


		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="b">
			<h2 class="container" style="margin-top: 300px; color: black;">내가
				쓴 리뷰 목록을 볼수있는 페이지 입니다.</h2>
		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="c">
			<h2 class="container" style="margin-top: 300px; color: black;">나에게
				연락온 부동산 목록을 볼수 있습니다.</h2>
		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="d">
			<h2 class="container" style="margin-top: 300px; color: black;">내
				문의 내역 목록을 볼수 있는 페이지 입니다.</h2>
		</div>
	</div>

</section>



<%@ include file="../include/footer.jsp"%>



