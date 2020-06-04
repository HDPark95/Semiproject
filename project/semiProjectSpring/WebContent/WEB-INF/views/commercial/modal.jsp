<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link href="css/modal.css?after" rel="stylesheet" />
<div id="myModal" class="modal">
	<!-- Modal content -->
	<div class="modal-content">
		<h3>상가/점포 매물등록 신청</h3>
		<div class="row" id="regist">
			<div class="col-md-12 mb-4 mb-md-0">
				<!-- <div class="card-body text-center"> -->
				물건 정보
				<div class="card py-6 h-100"
					style="width: 100%; border-top: 0.25rem solid #64a19d; border-bottom: none;">
					<table
						style="text-align: left; margin: 0 auto; width: 500px; height: 200px;"
						class="regist">
						<tr>
							<th>소재지
							<td colspan="3"><input type="text" id='zipNo' name="zipNo"
								style="margin-bottom: 10px" disabled>
								<button id="postcodify_search_button" onclick="goPopup();">검색</button>
								<br /> <input type="text" id="roadAddrPart1"
								name="roadAddrPart1" disabled style="width: 300px"> <input
								type="text" id="addrDetail" name="addrDetail"></td>
						</tr>
						<tr>
							<th>물건 구분
							<td><select id="law"><option>선택</option>
									<option value="근린상가">근린상가</option>
									<option value="단지내상가">단지내상가</option>
									<option value="복합상가">복합상가</option>
									<option value="일반상가">일반상가</option>
									<option value="기타상가">기타상가</option>
							</select></td>
							<td>매물 종류</td>
							<td><select id="law"><option>선택</option>
									<option value="매매">매매</option>
									<option value="전세">전세</option>
									<option value="월세">월세</option>
							</select></td>
						</tr>
						<tr>
							<th>상호상가
							<td><input type="text" id="size" name="size"></td>
							<td>해당 층</td>
							<td><input type="text" id="size" name="size"></td>
						</tr>
						<tr>
							<th>면적
							<td><input type="text" id="size" name="size"> 평</td>
							<td>실면적</td>
							<td><input type="text" id="size" name="size"> 평</td>
						</tr>
						<tr>
							<th>현업종
							<td><input type="text" id="size" name="size"></td>
							<td>상가입차법</td>
							<td><select id="law"><option>선택</option>
									<option value="1">대상</option>
									<option value="0">비대상</option>
							</select></td>
						</tr>
					</table>
					<!-- <hr class="my-4" /> -->
					<!-- <div class="small text-black-50">현두 담당</div> -->
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
				<span class="pop_bt" style="font-size: 13pt;"> 닫기 </span>
			</div>
		</div>
	</div>
</div>
<script>
	function open_pop() {
		$('#myModal').show();  
	};
	//팝업 Close 기능
	function close_pop(flag) {
		$('#myModal').hide();
	};
</script>