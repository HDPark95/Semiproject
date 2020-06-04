<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

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
	margin-left:
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
			$('#writing').css('background-color', '#E6E6E6');
		}, function() {
			$('#writing').css('background-color', 'white');
		});
		$('#list').hover(function() {
			$('#list').css('background-color', '#E6E6E6');
		}, function() {
			$('#list').css('background-color', 'white');
		});
		$('#delete').hover(function() {
			$('#delete').css('background-color', '#E6E6E6');
		}, function() {
			$('#delete').css('background-color', 'white');
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
				<h2>�츮���� �� �̾߱�</h2>
				<div id="tag">
					<p id="tag2">#������&nbsp;#��</p>
				</div>
			</div>
			<div id="writing0001">
				<div id="head">
					<table>
						<tr>
							<td><h3 id="title">���� ������ �� �κ��Դϴ�.</h3></td>
							<td id="rec">��õ�ϱ�</td>
						</tr>
						<tr>
							<td><div id="toggle">
									<span>���̵� ��</span> <span>�ø� ��¥�� �� </span> <span>��ȸ
										��ȸ��</span>
								</div></td>
							<td id="total">
								<div>
									<button type="button" class="btn btn-default" id="totalRec">��õ
										0</button>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</div>
			<div id="buttons">
				<button type="button" class="btn btn-default btn-sm" id="writing">�۾���
				</button>
				<button type="button" class="btn btn-default btn-sm" id="list">�������
				</button>
				<button type="button" class="btn btn-default btn-sm" id="delete">�����ϱ�
				</button>
			</div>
		</div>
	</div>
</section>
