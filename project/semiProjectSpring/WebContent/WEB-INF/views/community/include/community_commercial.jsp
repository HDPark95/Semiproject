<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<style>
#Select1, #Select2 {
	margin-left: 10px;
	margin-right: 10px;
	width: 370px;
}

#checkorder2 {
	text-align: right;
	margin-bottom: 0.5rem;
}

#location2 {
	margin-bottom: 0;
}

</style>
<div class="tab-pane fade" id="commercial">
				<br>
				<p>'��'�� �ݵ�� �����Ͽ��� �ϸ�, �� ���� ������ �����Ͽ� �˻��˴ϴ�.</p>
				<div class="form-inline form-group" id="location2">
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
							class="form-check-input" name="comoption" id="comoption1"
							value="option4" checked="checked">�ֽż�
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="comoption" id="comoption2"
							value="option5">��ȸ��
						</label>
					</div>
					<div class="form-check-inline">
						<label class="form-check-label"> <input type="radio"
							class="form-check-input" name="comoption" id="comoption3"
							value="option6">��õ��
						</label>&nbsp;
						<button type="button" class="btn-primary btn-sm" id="writeBtn2">�۾���</button>
					</div>
				</div>
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