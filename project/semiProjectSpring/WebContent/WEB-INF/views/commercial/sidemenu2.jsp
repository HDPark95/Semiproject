<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<link href="css/sidebar.css?after" rel="stylesheet" />
<div id="rightSide">

	<div id="right_zzim">

		<div class="recTit">
			비슷한 매물 정보 <span id=recentCnt></span>
		</div>
		<ul></ul>
		<!-- 본 상품이 뿌려질 부분  -->
		<div id="paging">
			<a class="btn_prev" style="cursor: pointer">이전</a><span
				id="currentPage"></span><span id="totalPageCount"></span><a
				class="btn_next" style="cursor: pointer">다음</a>
		</div>
	</div>
</div>