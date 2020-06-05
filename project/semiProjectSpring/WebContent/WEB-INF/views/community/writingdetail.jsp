<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/community/writing_question.css"
	rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>
<style>
#area {
	text-align: center;
}

#tag {
	display: block;
	margin: auto;
	width: 700px;
}

#writing0001 {
	border: 1px solid;
	width: 700px;
	height: 700px;
	margin: auto;
}

#tag2 {
	width: 700px;
	font-size: 20px;
	color: seagreen;
}

#head {
	width: 698px;
	height: 105px;
	border-bottom: 1px solid;
}

#title {
	text-align: left;
	margin-top: 20px;
	margin-left: 20px;
	width: 500px;
}

#toggle {
	text-align: left;
	margin-left: 20px;
	font-size: 15px;
	width: 500px;
}

#totalRec {
	width: 100px;
	color: red;
	font-size: 15px;
	padding: 0.5px 0.5px;
}

#rec {
	padding-top: 30px;
	width: 170px;
	font-size: 13px;
}

#writing, #list, #delete {
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #64A19D;
	color: #FFFFFF;
}

#buttons {
	width: 698px;
	margin: 0 auto;
	float: right;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#writing').hover(function() {
			$('#writing').css('background-color', '#548B87');
		}, function() {
			$('#writing').css('background-color', '#64A19D');
		});
		$('#list').hover(function() {
			$('#list').css('background-color', '#548B87');
		}, function() {
			$('#list').css('background-color', '#64A19D');
		});
		$('#delete').hover(function() {
			$('#delete').css('background-color', '#548B87');
		}, function() {
			$('#delete').css('background-color', '#64A19D');
		});
		$('#writing').click(function() {
			location = 'wriCom';
		});
		$('#list').click(function() {
			location = 'comuMain';
		});
		$('#delete').click(function() {

		});
		$('#totalRec').hover(function() {
			$('#totalRec').css('border', '1px solid red');
		},function(){
			$('#totalRec').css('border', '1px solid white');
		});
	});
</script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
		<div id="area">
			<div id="location">
				<h2>우리동네 상가 이야기</h2>
				<div id="tag">
					<p id="tag2">#강남구&nbsp;#상가</p>
				</div>
			</div>
			<div id="writing0001">
				<div id="head">
					<table>
						<tr>
							<td><h3 id="title">글의 제목이 들어갈 부분입니다.</h3></td>
							<td id="rec">추천하기</td>
						</tr>
						<tr>
							<td><div id="toggle">
									<span>아이디가 들어감</span> <span>올린 날짜가 들어감 </span> <span>조회
										조회수</span>
								</div></td>
							<td id="total">
								<div>
									<button type="button" class="btn btn-default" id="totalRec">추천
										0</button>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="buttons">
				<button type="button" class="btn btn-default btn-sm" id="writing">글쓰기
				</button>
				<button type="button" class="btn btn-default btn-sm" id="list">목록으로
				</button>
				<button type="button" class="btn btn-default btn-sm" id="delete">삭제하기
				</button>
			</div>
		</div>
	</div>
</section>
