<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- <%@include file="header.jsp"%> --%>
<script>
	$(function(){
		$("#communitywrite").click(){
			
		};
	});
</script>
<body>
	<!-- �������� ������ �ϴ� ��ư ���� ���� -->
	<div class="row"
		style="width: 695px; height: 34px; border: 1px solid black;">
		<div>
			<input type="button" value="��ü" id="community_All"
				class="col-xs-6 col-md-3" style="width: 78px; height: 33px;">
			<input type="button" value="Q&A" id="community_Q&A"
				class="col-xs-6 col-md-3" style="width: 119px; height: 33px;">
			<input type="button" value="�̾߱�" id="community_Story"
				class="col-xs-6 col-md-3" style="width: 119px; height: 33px;">
		</div>
	</div>
	<!-- �������� ������ �ϴ� ��ư ���� �� -->
	<!-- ���� �� �Ź��� �����ϴ� ���� ���� -->
	<div style="width: 680px; height: 125px; border: 1px solid black;">
		�� ������ ���� �� �Ź��� �����ϴ� �����Դϴ�.</div>
	<!-- ���� �� �Ź��� �����ϴ� ���� �� -->
	<!-- �ֽż�, ��ȸ��, ��õ������ �����ϴ� üũ�� ��ư�� �۾��� ��ư�� �ִ� ���� ���� -->
	<div style="width: 680px; height: 40px; border: 1px solid black;">
		<div>
			<div class="checkbox">
				<label> <input type="checkbox" id="checkboxnew"
					value="check">�ֽż�
				</label> <label> <input type="checkbox" id="checkboxhit"
					value="check">��ȸ��
				</label> <label> <input type="checkbox" id="checkboxrec"
					value="check">��õ��
				</label> <input type="button" id="communitywrite" value="�۾���"
					style="position: absolute; left: 600px; bottom: 0.05px;">
			</div>
		</div>
	</div>
	<!-- �ֽż�, ��ȸ��, ��õ������ �����ϴ� üũ�� ��ư�� �۾��� ��ư�� �ִ� ���� �� -->
	<!-- ����, ����, �����, ��ȸ �� ��õ ������ �����ϴ� ���� ���� -->
	<table border="1">
		<colgroup>
			<col width="98">
			<col width="464">
			<col width="50">
			<col width="35">
			<col width="32">
		</colgroup>
		<thead>
			<tr>
				<th scope="col" class="txt_left"><span>����</span></th>
				<th scope="col"><span class="tit">����</span></th>
				<th scope="col">�����</th>
				<th scope="col">��ȸ</th>
				<th scope="col">��õ</th>
			</tr>
		</thead>
		<!-- ����, ����, �����, ��ȸ �� ��õ ������ �����ϴ� ���� �� -->
		<!-- Ŭ���� �� �ִ� ���� ������ ������ ���� ���� -->
		<tbody>

		</tbody>
	</table>
	<!-- Ŭ���� �� �ִ� ���� ������ ������ ���� �� -->
	<!-- Ư�� �������� �� �� �ִ� ��ư�� ������ ���� ���� -->
	<div class="pagn NEI=a:opb.page"
		style="border: 1px solid black; width: 680px; height: 43px; text-align: center;">
		<a style="margin-right: 0px; padding: 0px 0px 0px 0px;"><strong>1</strong></a>
		<a class="NP=r:2">2</a> <a class="NP=r:3">3</a> <a class="NP=r:4">4</a>
		<a class="NP=r:5">5</a> <a class="NP=r:6">6</a> <a class="NP=r:7">7</a>
		<a class="NP=r:8">8</a> <a class="NP=r:9">9</a> <a class="NP=r:10">10</a>
		<a class="next NP=r:2">���� </a> <a class="next_end NP=r:2963">�� </a>
	</div>
	<!-- Ư�� �������� �� �� �ִ� ��ư�� ������ ���� �� -->
	<!-- �˻��� ������ �ۼ� �� Ŭ���� ��ư�� �ִ� ���� ���� -->
	<form name="searchform" id="searchform" method="get">
	<div style="width: 680px; height: 30px; border: 1px solid black;">
	<input type="text" title="�˻��� �Է�" class="txt" id="search" name="search" maxlength="20">
	<input type="button" value="�˻�">
	</div>
	</form>
	<!-- �˻��� ������ �ۼ� �� Ŭ���� ��ư�� �ִ� ���� �� -->
</body>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<%-- <%@include file="footer.jsp"%> --%>