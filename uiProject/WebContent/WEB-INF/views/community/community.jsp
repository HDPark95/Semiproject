<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>

<section class="projects-section bg-light" id="projects">
	<div class="container">
		<ul class="nav nav-tabs">
			<li class="nav-item"><a class="nav-link active"
				data-toggle="tab" href="#all">��ü</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#qna">����</a></li>
			<li class="nav-item"><a class="nav-link" data-toggle="tab"
				href="#story">�̾߱�</a></li>
		</ul>
		<div id="myTabContent" class="tab-content">
			<div class="tab-pane fade show active" id="all">
				<br>
				<p>'��'�� �ݵ�� �����Ͽ��� �ϸ�, �� ���� ������ �����Ͽ� �˻��˴ϴ�.</p>
				<div class="form-inline form-group">
					<label for="Select1">����</label> <select
						class="form-control col-md-1" id="Select1"
						>
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
					</select> <label for="Select2"
						>�Ź�����</label> <select
						class="form-control col-md-1" id="Select2">
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
					<button type="button" class="btn-primary btn-sm"
						>�˻�</button>
				</div>
				<div id="checkorder1">
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="alloptions" id="alloptions1"
							value="option1" checked="checked" >�ֽż�
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="alloptions" id="alloptions2"
							value="option2">��ȸ��
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="alloptions" id="alloptions3"
							value="option3">��õ��
						</label>&nbsp;
						<button type="button" class="btn-primary btn-sm" id="writeBtn1">�۾���</button>
					</div>
				</div>
				<br><br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">����</th>
							<th scope="col">����</th>
							<th scope="col">�����</th>
							<th scope="col">��ȸ</th>
							<th scope="col">��õ</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">������</th>
							<td >�ȳ��ϼ���!</td>
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
				<p>'��'�� �ݵ�� �����Ͽ��� �ϸ�, �� ���� ������ �����Ͽ� �˻��˴ϴ�.</p>
				<div class="form-inline form-group">
					<label for="Select1">����</label> <select
						class="form-control col-md-1" id="Select1"
						>
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
					</select> <label for="Select2"
						>�Ź�����</label> <select
						class="form-control col-md-1" id="Select2">
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
					<button type="button" class="btn-primary btn-sm"
						>�˻�</button>
				</div>
				<div id="checkorder2">
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="queoption" id="queoption1"
							value="option4" checked="checked">�ֽż�
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="queoption" id="queoption2"
							value="option5">��ȸ��
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="queoption" id="queoption3"
							value="option6">��õ��
						</label>&nbsp;
						<button type="button" class="btn-primary btn-sm" id="writeBtn2">�۾���</button>
					</div>
				</div>
				<br><br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">����</th>
							<th scope="col">����</th>
							<th scope="col">�����</th>
							<th scope="col">��ȸ</th>
							<th scope="col">��õ</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">������</th>
							<td >�ȳ��ϼ���!</td>
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
				<p>'��'�� �ݵ�� �����Ͽ��� �ϸ�, �� ���� ������ �����Ͽ� �˻��˴ϴ�.</p>
				<div class="form-inline form-group">
					<label for="Select1">����</label> <select
						class="form-control col-md-1" id="Select1"
						>
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
					</select> <label for="Select2">�Ź�����</label> <select
						class="form-control col-md-1" id="Select2"
						>
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
					<button type="button" class="btn-primary btn-sm"
						>�˻�</button>
				</div>
				<div id="checkorder3">
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="storyoption" id="storyoption1"
							value="option7" checked="checked">�ֽż�
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="storyoption" id="storyoption2"
							value="option8">��ȸ��
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="storyoption" id="storyoption3"
							value="option9">��õ��
						</label>&nbsp;
						<button type="button" class="btn-primary btn-sm" id="writeBtn3">�۾���</button>
					</div>
				</div>
				<br><br>
				<table class="table table-hover">
					<thead>
						<tr>
							<th scope="col">����</th>
							<th scope="col">����</th>
							<th scope="col">�����</th>
							<th scope="col">��ȸ</th>
							<th scope="col">��õ</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<th scope="row">������</th>
							<td >�ȳ��ϼ���!</td>
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
