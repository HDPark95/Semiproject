<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<button type="button" class="btn-primary btn-sm">검색</button>
		</div>
		<div id="checkorder1">
			<div class="form-check-inline">
				<label class="form-check-label"> <input type="radio"
					class="form-check-input" name="alloptions" id="alloptions1"
					value="option1" checked="checked">최신순
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
			<tr>
				<th scope="row">강남구</th>
				<td>안녕하세요!</td>
				<td>2020-05-27</td>
				<td>27</td>
				<td>5</td>
			</tr>
		</tbody>
	</table>
	<div id="pagenum1">
		<ul class="pagination pagination-lg">
			<li class="page-item disabled"><a class="page-link" href="#">&laquo;</a>
			</li>
			<li class="page-item active"><a class="page-link" href="#">1</a>
			</li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>
			<li class="page-item"><a class="page-link" href="#">6</a></li>
			<li class="page-item"><a class="page-link" href="#">7</a></li>
			<li class="page-item"><a class="page-link" href="#">8</a></li>
			<li class="page-item"><a class="page-link" href="#">9</a></li>
			<li class="page-item"><a class="page-link" href="#">10</a></li>
			<li class="page-item"><a class="page-link" href="#">&raquo;</a>
			</li>
		</ul>
	</div>
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
	})
</script>