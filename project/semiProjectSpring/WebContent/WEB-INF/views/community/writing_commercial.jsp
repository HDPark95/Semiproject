<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link href="resources/css/community/writing.css" rel="stylesheet">
<script type="text/javascript" src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="" method="post">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active" data-toggle="tab" 
					>상가</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					>부동산</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					>경매</a></li>	
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade active show" id="commercial">
					<p>내가 사는, 알고 있는 지역에 관한 상가 정보를 알려주세요.</p>
				</div>
				<div class="tab-pane fade" id="estate">
					<p>내가 사는, 알고 있는 지역에 관한 부동산 정보를 알려주세요.</p>
				</div>
				<div class="tab-pane fade" id="auction">
					<p>내가 사는, 알고 있는 지역에 관한 경매 정보를 알려주세요.</p>
				</div>
			</div>
			<div class="form-group">
				<div class="form-inline form-group">
					<label for="title" class="col-sm-2 control-label">제목</label>
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
				<textarea id="ir1" class="form-control" rows="20" cols="100" contenteditable="true">
				</textarea>
				<div id="writebutton">
					<button type="button" class="btn btn-success">확인</button>
					<button type="button" class="btn btn-secondary" onclick="location='community.jsp'">취소</button>
				</div>
			</div>
		</form>
	</div>
</section>
<script>
	$(function() {
		$('#est').click(function() {
			location = 'wriEst';
		});
		$('#auc').click(function() {
			location = 'wriAuc';
		});
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "ir1",
		 sSkinURI: "resources/edit/SmartEditor2Skin.html",
		 fCreator: "createSEditor2"
		});
		
		//
		$('#runin').click(function() {
			var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]);
			alert($('#ir1').val());
		})
	});
</script>
<%@ include file="../include/footer.jsp"%>
