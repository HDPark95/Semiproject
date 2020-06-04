<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>

<section class="projects-section bg-light" id="projects">
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#all">전체</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#qna">질문</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#story">이야기</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade show active" id="all">
				<br>
				<p>'구'는 반드시 선택하여야 하며, 그 하위 지역을 포함하여 검색됩니다.</p>
				<div class="form-inline form-group">
					<label for="Select1">지역</label> <select
						class="form-control col-md-1" id="Select1"
						>
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
					</select> <label for="Select2"
						>매물종류</label> <select
						class="form-control col-md-1" id="Select2">
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
					<button type="button" class="btn-primary btn-sm"
						>검색</button>
				</div>
				<div id="checkorder1">
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="alloptions" id="alloptions1"
							value="option1" checked="checked" >최신순
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
				<br><br>
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
							<td >안녕하세요!</td>
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
			<div class="tab-pane fade" id="qna">
				<br>
				<p>'구'는 반드시 선택하여야 하며, 그 하위 지역을 포함하여 검색됩니다.</p>
				<div class="form-inline form-group">
					<label for="Select1">지역</label> <select
						class="form-control col-md-1" id="Select1"
						>
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
					</select> <label for="Select2"
						>매물종류</label> <select
						class="form-control col-md-1" id="Select2">
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
					<button type="button" class="btn-primary btn-sm"
						>검색</button>
				</div>
				<div id="checkorder2">
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="queoption" id="queoption1"
							value="option4" checked="checked">최신순
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="queoption" id="queoption2"
							value="option5">조회순
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="queoption" id="queoption3"
							value="option6">추천순
						</label>&nbsp;
						<button type="button" class="btn-primary btn-sm" id="writeBtn2">글쓰기</button>
					</div>
				</div>
				<br><br>
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
							<td >안녕하세요!</td>
							<td>2020-05-27</td>
							<td>27</td>
							<td>5</td>
						</tr>
					</tbody>
				</table>
				<div id="pagenum2">
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
			<div class="tab-pane fade" id="story">
				<br>
				<p>'구'는 반드시 선택하여야 하며, 그 하위 지역을 포함하여 검색됩니다.</p>
				<div class="form-inline form-group">
					<label for="Select1">지역</label> <select
						class="form-control col-md-1" id="Select1"
						>
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
					</select> <label for="Select2">매물종류</label> <select
						class="form-control col-md-1" id="Select2"
						>
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
					<button type="button" class="btn-primary btn-sm"
						>검색</button>
				</div>
				<div id="checkorder3">
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="storyoption" id="storyoption1"
							value="option7" checked="checked">최신순
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="storyoption" id="storyoption2"
							value="option8">조회순
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="storyoption" id="storyoption3"
							value="option9">추천순
						</label>&nbsp;
						<button type="button" class="btn-primary btn-sm" id="writeBtn3">글쓰기</button>
					</div>
				</div>
				<br><br>
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
							<td >안녕하세요!</td>
							<td>2020-05-27</td>
							<td>27</td>
							<td>5</td>
						</tr>
					</tbody>
				</table>
				<div id="pagenum3">
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
		</div>
	</div>
</section>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#writeBtn1').click(function() {
			location = 'semi.Project?page=community&code=7';
		});
		$('#writeBtn2').click(function() {
			location = 'semi.Project?page=community&code=7';
		});
		$('#writeBtn3').click(function() {
			location = 'semi.Project?page=community&code=8';
		});
	});
</script>

<%@ include file="../include/footer.jsp"%>
