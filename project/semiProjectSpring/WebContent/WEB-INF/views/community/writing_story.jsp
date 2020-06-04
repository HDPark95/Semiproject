<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/writing_story.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>

<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="" method="post">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link"
					data-toggle="tab" onclick="location.href='semi.Project?page=community&code=7'">질문</a></li>
				<li class="nav-item"><a class="nav-link active" data-toggle="tab"
					onclick="location.href='semi.Project?page=community&code=8'">이야기</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade show active" id="question">
					<p>매물 정보에 대한 궁금증에 대해 질문해 주세요.</p>
				</div>
				<div class="tab-pane fade" id="story">
					<p>내가 사는, 알고 있는 지역에 대한 정보를 알려주세요.</p>
				</div>
			</div>
			<div class="form-group">
				<div class="form-inline form-group">
					<label for="title" class="col-sm-2 control-label"
						>제목</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title" maxlength="80">
					</div>
				</div>
				<div class="tab-pane fade show active" id="all">
					<br>
					<div class="form-inline form-group">
						<label for="Select1">지역/매물종류</label> <select
							class="form-control col-md-1" id="Select1">
							<option selected="selected">선택</option>
							<option>강남구</option>
							<option>강동구</option>
							<option>강북구</option>
							<option>강서구</option>
							<option>관악구</option>
							<option>광진구</option>
							<option>구로구</option>
							<option>금천구</option>
							<option>노원구</option>
							<option>도봉구</option>
							<option>동대문구</option>
							<option>동작구</option>
							<option>마포구</option>
							<option>서대문구</option>
							<option>서초구</option>
							<option>성동구</option>
							<option>성북구</option>
							<option>송파구</option>
							<option>양천구</option>
							<option>영등포구</option>
							<option>용산구</option>
							<option>은평구</option>
							<option>종로구</option>
							<option>중구</option>
							<option>중랑구</option>
						</select> <select class="form-control col-md-1" id="Select2">
							<option selected="selected">전체</option>
							<option>아파트</option>
							<option>오피스텔</option>
							<option>분양권</option>
							<option>주택</option>
							<option>토지</option>
							<option>원룸</option>
							<option>상가</option>
							<option>사무실</option>
							<option>공장</option>
							<option>재개발</option>
							<option>건물</option>
						</select>
					</div>
				</div>
				<textarea class="form-control" rows="20" contenteditable="true"></textarea>
				<div id="writebutton">
					<button type="button" class="btn btn-success">확인</button>
					<button type="button" class="btn btn-secondary" onclick="location='community.jsp'">취소</button>
				</div>
			</div>
		</form>
	</div>
</section>


<%@ include file="../include/footer.jsp"%>
