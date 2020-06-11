<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#Select1, #Select2 {
	margin-left: 10px;
	margin-right: 10px;
}

#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location1 {
	margin-bottom: 0;
}

#inputSearch1 {
	width: 900px;
	margin-right: 5px;
}

#searchselect1 {
	width: 100px;
	margin: 5px;
}

#searchform1 {
	margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;
}

#searchtext1 {
	margin-right: 5px;
}

#pagenum1{
	text-align: center;
}
</style>

<div class="tab-pane fade show active" id="all">

	<br>
	<p>선택하신 '구'와 '행정동'을 기준으로 검색됩니다.</p>
	<div>
		<div class="form-inline form-group" id="location1">
			<label for="Select1">구 선택</label> <select id="Select1"
				class="form-control col-md-2">
				<option>전체</option>
			</select> <label for="Select2">동 선택</label> <select id="Select2"
				class="form-control col-md-2">
				<option>전체</option>
			</select>
		</div>
		<div id="checkorder1">
			<div class="form-check-inline">
				<label class="form-check-label"> <input type="radio"
					class="form-check-input" name="alloptions" id="alloptions1"
					value="option1">최신순
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label"> <input type="radio"
					class="form-check-input" name="alloptions" id="alloptions2"
					value="option2">조회순
				</label>
			</div>
			<div class="form-check-inline">
				<label class="form-check-label"> <input type="radio"
					class="form-check-input" name="alloptions" id="alloptions3"
					value="option3">추천순
				</label>&nbsp;
				<button type="button" class="btn-primary btn-sm" id="writeBtn1">글쓰기</button>
			</div>
		</div>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">지역</th>
				<th scope="col">제목</th>
				<th scope="col">등록일</th>
				<th scope="col">조회</th>
				<th scope="col">추천</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="alist" items="${listall}">
				<tr>
					<th scope="row">${alist.wloc1}&nbsp;${alist.wloc2}</th>
					<td><a href="writingdetail?wnum=${alist.wnum}">${alist.wtitle}</a></td>
					<td>${alist.wchgdate}</td>
					<td>${alist.whit}</td>
					<td>${alist.wrec}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<form method="post" action="searchlistall">
	<div class="form-check-inline" id="searchform1">
		<select class="custom-select" id="searchselect1" name="searchType">
			<option value="1">전체</option>
			<option value="2">제목</option>
			<option value="3">내용</option>
		</select> <input type="text" class="form-control" id="inputSearch1" name="searchValue">
		<button type="submit" class="btn-primary btn-sm" id="searchtext1" value="Search">검색</button>
	</div>
	</form>
	<!-- 페이지 프로세스 include 처리 -->
	<%@include file="pageprocess_all.jsp"%>
</div>
<script>
	$(function() {
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
	});
</script>
