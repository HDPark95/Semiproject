<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>

<%@ include file="../include/header_index.jsp"%>
 <link href="resources/css/community/writing_question.css" rel="stylesheet">
<%@ include file="../include/header_menu.jsp"%>


<section class="projects-section bg-light" id="projects">
	<div class="container">
		<form action="" method="post">
			<ul class="nav nav-tabs">
				<li class="nav-item"><a class="nav-link active"
					data-toggle="tab" onclick="location.href='semi.Project?page=community&code=7'">����</a></li>
				<li class="nav-item"><a class="nav-link" data-toggle="tab"
					onclick="location.href='semi.Project?page=community&code=8'">�̾߱�</a></li>
			</ul>
			<div id="myTabContent" class="tab-content">
				<div class="tab-pane fade show active" id="question">
					<p>�Ź� ������ ���� �ñ����� ���� ������ �ּ���.</p>
				</div>
				<div class="tab-pane fade" id="story">
					<p>���� ���, �˰� �ִ� ������ ���� ������ �˷��ּ���.</p>
				</div>
			</div>
			<div class="form-group">
				<div class="form-inline form-group">
					<label for="title" class="col-sm-2 control-label"
						>����</label>
					<div class="col-sm-10">
						<input type="text" class="form-control" id="title" maxlength="80">
					</div> 
				</div>
				<div class="tab-pane fade show active" id="all">
					<br>
					<div class="form-inline form-group">
						<label for="Select1">����/�Ź�����</label> <select
							class="form-control col-md-1" id="Select1">
							<option selected="selected">����</option>
							<option>������</option>
							<option>������</option>
							<option>���ϱ�</option>
							<option>������</option>
							<option>���Ǳ�</option>
							<option>������</option>
							<option>���α�</option>
							<option>��õ��</option>
							<option>�����</option>
							<option>������</option>
							<option>���빮��</option>
							<option>���۱�</option>
							<option>������</option>
							<option>���빮��</option>
							<option>���ʱ�</option>
							<option>������</option>
							<option>���ϱ�</option>
							<option>���ı�</option>
							<option>��õ��</option>
							<option>��������</option>
							<option>��걸</option>
							<option>����</option>
							<option>���α�</option>
							<option>�߱�</option>
							<option>�߶���</option>
						</select> <select class="form-control col-md-1" id="Select2">
							<option selected="selected">��ü</option>
							<option>����Ʈ</option>
							<option>���ǽ���</option>
							<option>�о��</option>
							<option>����</option>
							<option>����</option>
							<option>����</option>
							<option>��</option>
							<option>�繫��</option>
							<option>����</option>
							<option>�簳��</option>
							<option>�ǹ�</option>
						</select>
					</div>
				</div>
				<textarea class="form-control" rows="20" contenteditable="true"></textarea>
				<div id="writebutton">
					<button type="button" class="btn btn-success">Ȯ��</button>
					<button type="button" class="btn btn-secondary" onclick="location='community.jsp'">���</button>
				</div>
			</div>
		</form>
	</div>
</section>

<%@ include file="../include/footer.jsp"%>
