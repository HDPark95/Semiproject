<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
#checkorder1 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location1 {
	margin-bottom: 0;
}
<<<<<<< HEAD
#inputSearch1{
	width: 900px;
	margin-right: 5px;
}
#searchselect1{
	width: 100px;
	margin: 5px;
}
#searchform1{
	margin-top: 20px;
	margin-bottom: 20px;
	border: 1px solid gray;
	border-radius: 5px 5px 5px 5px;
	border-style: groove;
	border-color: #BDBDBD;
}
#searchtext1{
	margin-right: 5px;
=======

#searchValue {
	width: 900px;
	margin-right: 5px;
}

#searchType {
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

#btnSearch {
	margin-right: 5px;
}

#pagenum1{
	display: table;
	margin-left: auto;
	margin-right: auto;
}
#total{
	color: blue;
>>>>>>> refs/heads/master
}
</style>
<div class="tab-pane fade show active" id="all">
	<br>
	<div>
<<<<<<< HEAD
		<div class="form-inline form-group" id="location1">
			<label for="Select1">구 선택</label> <select id="Select1"
				class="form-control col-md-2">
				<option>전체</option>
			</select> <label for="Select2">동 선택</label> <select id="Select2"
				class="form-control col-md-2">
				<option>전체</option>
			</select>
		</div>
=======
	<p>총 <a id="total">${total}</a>건의 글이 검색되어 있습니다.</p>
>>>>>>> refs/heads/master
		<div id="checkorder1">
			<div class="form-check-inline">
				<input type="button" id="wnumBtn" name="wnumBtn" class="btn-outline-info btn-sm" value="최신순▼">
			</div>
			<div class="form-check-inline">
				<input type="button" id="whitBtn" name="whitBtn" class="btn-outline-secondary btn-sm" value="조회순■">
			</div>
			<div class="form-check-inline">
				<input type="button" id="wrecBtn" name="wrecBtn" class="btn-outline-secondary btn-sm" value="추천순■">
				&nbsp;&nbsp;&nbsp;
			<input type="hidden" id="sortindex" name="sortindex" value="${paging.sortindex}">
				<button type="button" class="btn-primary btn-sm" id="writeBtn1">글쓰기</button>
			</div>
		</div>
	</div>
	<input type="hidden" value="${alist.wdel}">
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
					<th scope="row">${alist.wloc1}&nbsp;${alist.wloc2}&nbsp;[${alist.wgubun}]</th>
					<td><a href="writing_detail?wnum=${alist.wnum}">${alist.wtitle}</a></td>
					<td>${alist.wchgdate}</td>
					<td>${alist.whit}</td>
					<td>${alist.wrec}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
<<<<<<< HEAD
	<div class="form-check-inline" id="searchform1">
    <select class="custom-select" id="searchselect1">
      <option selected="selected">제목</option>
      <option value="1">내용</option>
    </select>
		<input type="text" class="form-control" id="inputSearch1">
		<button type="button" class="btn-primary btn-sm" id="searchtext1">검색</button>
	</div>
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
=======
	
	<div class="form-check-inline" id="searchform1">
		<select class="custom-select" id="searchType" name="searchType">
			<option value="title">제목</option>
			<option value="contents">내용</option>
			<option value="comugu">구</option>
			<option value="comudong">동</option>
		</select> <input type="text" class="form-control" id="searchValue" name="searchValue">
		<button type="submit" class="btn-primary btn-sm" id="btnSearch" value="Search">검색</button>
>>>>>>> refs/heads/master
	</div>
	<!-- 페이지 프로세스 include 처리 -->
	<%@include file="pageprocess_all.jsp"%>
</div>
<script>
	$(function() {
		// 매개변수가 변함에 따라 버튼을 바꾸는 함수
		if($('#sortindex').val()==='2'){
			$("#wnumBtn").val('최신순▲');
			$("#wnumBtn").attr('class','btn-outline-danger btn-sm');
		}else if($('#sortindex').val()==='1'){
			$("#wnumBtn").val('최신순▼');
		}else if($('#sortindex').val()==='4'){
			$("#whitBtn").val('조회순▲');
			$("#whitBtn").attr('class','btn-outline-danger btn-sm');
		}else if($('#sortindex').val()==='3'){
			$("#whitBtn").val('조회순▼');
			$("#whitBtn").attr('class','btn-outline-info btn-sm');
		}else if($('#sortindex').val()==='6'){
			$("#wrecBtn").val('추천순▲');
			$("#wrecBtn").attr('class','btn-outline-danger btn-sm');
		}else{
			$("#wrecBtn").val('추천순▼');
			$("#wrecBtn").attr('class','btn-outline-info btn-sm');
		}
		
		
		// 매개변수가 변함에 따라 주소를 바꾸는 함수
		$("#wnumBtn").click(function(){
			var sortindex = $("#sortindex").val();
			if(sortindex == '2'){
				location.href="comuMain?sortindex=1";
			}else{
				location.href="comuMain?sortindex=2";
			}
		});
		
		$("#whitBtn").click(function(){
			var sortindex = $("#sortindex").val();
			if(sortindex == '4'){
				location.href="comuMain?sortindex=3";
			}else{
				location.href="comuMain?sortindex=4";
			}
			
		});
		
		$("#wrecBtn").click(function(){
			var sortindex = $("#sortindex").val();
			if(sortindex == '6'){
				location.href="comuMain?sortindex=5";
			}else{
				location.href="comuMain?sortindex=6";
			}
		});
		
		 $(document).on('click', '#btnSearch', function(e){
			var url = "comuMain";
			url = url + "?searchType=" + $('#searchType').val();
			url = url + "&searchValue=" + $('#searchValue').val();
			location.href = url;
		}); 
	});
</script>
