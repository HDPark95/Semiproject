<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="css/modal.css?after" rel="stylesheet" />
<div id="myModal" class="modal">
	<!-- Modal content -->
	<div class="modal-content">
		<h3>��/���� �Ź���� ��û</h3>
		<div class="row" id="regist">
			<div class="col-md-12 mb-4 mb-md-0">
				<!-- <div class="card-body text-center"> -->
				���� ����
				<div class="card py-6 h-100"
					style="width: 100%; border-top: 0.25rem solid #64a19d; border-bottom: none;">
					<table
						style="text-align: left; margin: 0 auto; width: 500px; height: 200px;"
						class="regist">
						<tr>
							<th>������
							<td colspan="3"><input type="text" id='zipNo' name="zipNo"
								style="margin-bottom: 10px" disabled>
								<button id="postcodify_search_button" onclick="goPopup();">�˻�</button>
								<br /> <input type="text" id="roadAddrPart1"
								name="roadAddrPart1" disabled style="width: 300px"> <input
								type="text" id="addrDetail" name="addrDetail"></td>
						</tr>
						<tr>
							<th>���� ����
							<td><select id="law"><option>����</option>
									<option value="�ٸ���">�ٸ���</option>
									<option value="��������">��������</option>
									<option value="���ջ�">���ջ�</option>
									<option value="�Ϲݻ�">�Ϲݻ�</option>
									<option value="��Ÿ��">��Ÿ��</option>
							</select></td>
							<td>�Ź� ����</td>
							<td><select id="law"><option>����</option>
									<option value="�Ÿ�">�Ÿ�</option>
									<option value="����">����</option>
									<option value="����">����</option>
							</select></td>
						</tr>
						<tr>
							<th>��ȣ��
							<td><input type="text" id="size" name="size"></td>
							<td>�ش� ��</td>
							<td><input type="text" id="size" name="size"></td>
						</tr>
						<tr>
							<th>����
							<td><input type="text" id="size" name="size"> ��</td>
							<td>�Ǹ���</td>
							<td><input type="text" id="size" name="size"> ��</td>
						</tr>
						<tr>
							<th>������
							<td><input type="text" id="size" name="size"></td>
							<td>��������</td>
							<td><select id="law"><option>����</option>
									<option value="1">���</option>
									<option value="0">����</option>
							</select></td>
						</tr>
					</table>
					<!-- <hr class="my-4" /> -->
					<!-- <div class="small text-black-50">���� ���</div> -->
					<!-- </div> -->
				</div>
			</div>
			<div class="image-container">
				<img src="img/building1.jpg"> - <img src="img/building1.jpg">
				- <img src="img/building1.jpg">
			</div>
			<div
				style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 10px; padding-top: 10px;"
				onClick="close_pop();">
				<span class="pop_bt" style="font-size: 13pt;"> �ݱ� </span>
			</div>
		</div>
	</div>
</div>
<script>
	function open_pop() {
		$('#myModal').show();  
	};
	//�˾� Close ���
	function close_pop(flag) {
		$('#myModal').hide();
	};
</script>