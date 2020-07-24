<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<link href="resources/css/community/writing.css" rel="stylesheet">
<script type="text/javascript" src="resources/edit/js/service/HuskyEZCreator.js" charset="UTF-8"></script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="updetail" method="post">
			<input type="hidden" value="${list.wgubun}" id="gubun" name="gubun">
			<input type="hidden" value="${list.wnum}" id="wnum" name="wnum">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active" data-toggle="tab" 
					href="#commercial" id="com">상가</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#estate" id="est">부동산</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					href="#auction" id="auc">경매</a></li>	
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
						<input type="text" class="form-control" id="title" name="wtitle" maxlength="50" value="${list.wtitle}">
					</div>
				</div>
				<div class="tab-pane fade show active" id="all">
					<br>
					<div class="form-inline form-group">
						<label for="Select1">구/동 선택</label> <select
							class="form-control col-md-2" id="Select1" name="wloc1">
							<option selected="selected">${list.wloc1}</option>
						</select> <select class="form-control col-md-2" id="Select2" name="wloc2">
							<option selected="selected">${list.wloc2}</option>
						</select>
					</div>
				</div>
				<textarea id="ir1" name="wcontents" class="form-control" rows="20" cols="100" contenteditable="true">
				${list.wcontents}
				</textarea>
				<div id="writebutton">
					<button id="runin" type="submit" class="btn btn-success">수정</button>
					<button type="button" class="btn btn-secondary" onclick="location.href='writingdetail?wnum=${list.wnum}'">취소</button>
				</div>
			</div>
		</form>
	</div>
</section>
<style>
#Select1, #Select2{
	margin-left: 10px;
	margin-right: 10px;
}
</style>
<script>
	$(function() {
		var oEditors = [];
		nhn.husky.EZCreator.createInIFrame({
		 oAppRef: oEditors,
		 elPlaceHolder: "ir1",
		 sSkinURI: "resources/edit/SmartEditor2Skin.html",
		 fCreator: "createSEditor2"
		});
		
		$('#runin').click(function() {
			var val1 = oEditors.getById["ir1"].exec("UPDATE_CONTENTS_FIELD",[]);
		});
		
		var url = "comugu";
		$.ajax({
			url : url,
			success : function(d) {
				$("#Select1").html(d);
			}
		})
		
		$("#Select1").change(function() {
			var guName = $(this).val();
			var url = "comudong?guName=" + guName;
			$.ajax({
				url : url,
				success : function(d) {
					$("#Select2").html(d);
				}
			})
		})
		
		if($('#gubun').val()=='상가'){
			$('#commercial').attr('class', 'tab-pane fade active show');
			$('#com').attr('class','nav-link active');
			
			$('#estate').attr('class', 'tab-pane fade');
			$('#est').attr('class','nav-link disabled');
			
			$('#auction').attr('class', 'tab-pane fade');
			$('#auc').attr('class','nav-link disabled');
			
		}else if($('#gubun').val()=='부동산'){
			$('#commercial').attr('class', 'tab-pane fade');
			$('#com').attr('class','nav-link disabled');
			
			$('#estate').attr('class', 'tab-pane fade active show');
			$('#est').attr('class','nav-link active');
			
			$('#auction').attr('class', 'tab-pane fade');
			$('#auc').attr('class','nav-link disabled');
		}else{
			$('#commercial').attr('class', 'tab-pane fade');
			$('#com').attr('class','nav-link disabled');
			
			$('#estate').attr('class', 'tab-pane fade');
			$('#est').attr('class','nav-link disabled');
			
			$('#auction').attr('class', 'tab-pane fade active show');
			$('#auc').attr('class','nav-link active');
		}
	});
</script>
<%@ include file="../include/footer.jsp"%>