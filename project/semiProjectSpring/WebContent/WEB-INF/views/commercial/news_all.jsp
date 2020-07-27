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
}
</style>
<div class="tab-pane fade show active" id="all">
	<br>
	<div>
	<p>총 <a id="total">${total}</a>건의 글이 검색되어 있습니다.</p>
		<div id="checkorder1">
			<div class="form-check-inline">
				<input type="button" id="wnumBtn" name="wnumBtn" class="btn-outline-info btn-sm" value="최신순▼">
			</div>
			<input type="hidden" id="sortindex" name="sortindex" value="${paging.sortindex}">
		</div>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th scope="col">지역</th>
				<th scope="col">제목</th>
				<th scope="col">등록일</th>
				<th scope="col">신문사</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="nlist" items="${newsList}">
				<tr>
					<td>${nlist.searchlocation}</td>
					<td><a href="${nlist.link}">${nlist.title}</a></td>
					<td>${nlist.datetime}</td>
					<td>${nlist.source}</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
	<div class="form-check-inline" id="searchform1">
		<select class="custom-select" id="searchType" name="searchType">
			<option value="title">제목</option>
			<option value="contents">내용</option>
			<option value="comugu">구</option>
		</select> <input type="text" class="form-control" id="searchValue" name="searchValue">
		<button type="submit" class="btn-primary btn-sm" id="btnSearch" value="Search">검색</button>
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
		}
		// 매개변수가 변함에 따라 주소를 바꾸는 함수
		$("#wnumBtn").click(function(){
			var sortindex = $("#sortindex").val();
			if(sortindex == '2'){
				location.href="newsList?sortindex=1";
			}else{
				location.href="newsList?sortindex=2";
			}
		});	
		$("#whitBtn").click(function(){
			var sortindex = $("#sortindex").val();
			if(sortindex == '4'){
				location.href="newsList?sortindex=3";
			}else{
				location.href="newsList?sortindex=4";
			}
			
		});
		
		$("#wrecBtn").click(function(){
			var sortindex = $("#sortindex").val();
			if(sortindex == '6'){
				location.href="newsList?sortindex=5";
			}else{
				location.href="newsList?sortindex=6";
			}
		});
		
		 $(document).on('click', '#btnSearch', function(e){
			var url = "newsList";
			url = url + "?searchType=" + $('#searchType').val();
			url = url + "&searchValue=" + $('#searchValue').val();
			location.href = url;
		}); 
	});
</script>
