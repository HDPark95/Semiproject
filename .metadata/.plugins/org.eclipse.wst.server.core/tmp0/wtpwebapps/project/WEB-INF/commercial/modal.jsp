<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="css/modal.css?after" rel="stylesheet" />
<div id="myModal" class="modal">
	<!-- Modal content -->
	<div class="modal-content">
		<h3>��/���� �Ź���� ��û</h3>
		<div class="row" id="regist">
			<div class="col-md-6 mb-4 mb-md-0">
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
							<th>
								��ȣ��
							<td><input type="text" id="size" name="size"></td>
							<td>�ش� ��</td>
							<td><input type="text" id="size" name="size"></td>
						</tr>
						<tr>
							<th>
								����
							<td><input type="text" id="size" name="size"> ��</td>
							<td>�Ǹ���</td>
							<td><input type="text" id="size" name="size"> ��</td>
						</tr>
						<tr>
							<th>
								������
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
			<div class="col-md-6 mb-4 mb-md-0">
				��� ����
				<div class="card py-6 h-100"
					style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
					<div class="card-body text-center">
						<table
							style="text-align: left; margin: 0 auto; width: 500px; height: 200px;"
							class="regist">
							<tr>
								<th>
									Ư¡
								<td colspan="3"><input type="text" id='feature'
									name="feature" style="width: 370px; height: 40px;"></td>
							</tr>
							<tr>
								<th>
									�ֺ� ȯ��
								<td><input type="text" id=""></td>
								<td>��õ ����</td>
								<td><select id="law"
									style="width: 185px; height: 30px; margin-bottom: 10px;"><option>����</option>
										<option value="1">������������</option>
										<option value="���񽺾�">���񽺾�</option>
										<option value="�п�/������">�п�/������</option>
										<option value="������">������</option>
										<option value="��������">��������</option>
										<option value="�Ƿ���">�Ƿ���</option>
										<option value="������">������</option>
										<option value="��ȭ��">��ȭ��</option>
										<option value="������">������</option>
										<option value="�ַ�/�����">�ַ�/�����</option>
										<option value="����/�Ƿ��">����/�Ƿ��</option>
										<option value="��Ÿ">��Ÿ</option>
								</select> <br /> <input type="text" id=""></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6 mb-3 mb-md-0">
				���� ����
				<span style="text-align: right; color: red;"> �ش�κ��� ������ 0��
					�Է��ϼ���.</span>
				<div class="card py-6 h-100"
					style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
					<div class="card-body text-center">
						<table
							style="text-align: left; margin: 0 auto; width: 500px; height: 200px;"
							class="regist">
							<tr>
								<th>
									�ŸŰ�
								<td><input type="text" id='address' name="address">
								</td>
								<td>������</td>
								<td><input type="text" id='address' name="address"></td>
							</tr>
							<tr>
								<th>
									������
								<td><input type="text" id='address' name="address"></td>
								<td>����</td>
								<td><input type="text" id='address' name="address"></td>
							</tr>
							<tr>
								<th>
									�Ǹ���
								<td><input type="text" id='address' name="address"></td>
								<td>����</td>
								<td><input type="text" id='address' name="address"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<div class="col-md-6 mb-3 mb-md-0">
				����� ����
				<div class="card py-6 h-100"
					style="border-top: 0.25rem solid #64a19d; border-bottom: none;">
					<div class="card-body text-center">
						<table
							style="text-align: left; margin: 0 auto; width: 500px; height: 200px;"
							class="regist">
							<tr>
								<th>
									�̸�
								</th>
								<td><input type="text" id='managerName' name="managerName">
								</td>
								<th>�޴���ȭ��ȣ</th>
								<td><select name="phoneIdx" id="phoneIdx"
									style="height: 30px">
										<option>����</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="016">016</option>
										<option value="017">017</option>
										<option value="018">018</option>
										<option value="019">019</option>
								</select> - <input type="tel" id='managerPhone' name="managerPhone"
									style="width: 100px">- <input type="tel"
									id='managerPhone' name="managerPhone" style="width: 100px">
								</td>
							</tr>
							<tr>
								<th>
									�̸���
								<td><input type="email" id="email"></td>
								<th>��ȭ</th>
								<td><select name="" id="" class="stx" style="height: 30px">
										<option>����</option>
										<option value="02">02</option>
										<option value="031">031</option>
										<option value="032">032</option>
										<option value="033">033</option>
										<option value="041">041</option>
										<option value="042">042</option>
										<option value="043">043</option>
										<option value="051">051</option>
										<option value="052">052</option>
										<option value="053">053</option>
										<option value="054">054</option>
										<option value="055">055</option>
										<option value="061">061</option>
										<option value="062">062</option>
										<option value="063">063</option>
										<option value="064">064</option>
										<option value="070">070</option>
										<option value="050">050</option>
								</select> - <input type="tel" id='managerPhone2' name="managerPhone2"
									style="width: 100px">- <input type="tel"
									id='managerPhone2' name="managerPhone2" style="width: 100px"></td>
							</tr>
						</table>
					</div>
				</div>
			</div>
		</div>
		<div class="image-container">
			<img src="img/building1.jpg"> -
			<img src="img/building1.jpg"> -
			<img src="img/building1.jpg">
		</div>
		<div
			style="cursor: pointer; background-color: #DDDDDD; text-align: center; padding-bottom: 10px; padding-top: 10px;"
			onClick="close_pop();">
			<span class="pop_bt" style="font-size: 13pt;"> �ݱ� </span>
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