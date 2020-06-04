<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="../include/header_index.jsp"%>
<link rel="stylesheet" href="resources/css/auction/bootstrap.css" />
<link rel="stylesheet" href="resources/css/auction/hyunstyle.css" />
<link rel="stylesheet" href="resources/css/auction/styles.css" />
<%@ include file="../include/header_menu.jsp"%>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://unpkg.com/swiper/js/swiper.min.js"></script>
<script>
	$(document).ready(function() {
		var $node = $('div').children();

		$('.cls').click(function() {

			$('#target img').attr('src', $(this).attr('src'));
		});
	});
	/* var i= 0;
	var menu =$('#bul > ul > li').length;
	var inter = setInterval(function() {
	if(i>= menu){
		i = 0;
	}
	$('#target img').attr('src',$('#bul > ul > li').eq(i).children().attr('src'));
	i++;
	}, 2000);
	$('#target img').attr('src',$(this).attr('src'));
	}); */
</script>
<section class="contact-section bg-white aa">
	<div class="card col-md-9 container" style="margin-top: 50px">
		<div class="container">
			<button type="button" class="btn btn-outline-primary">신건</button>
			<button type="button" class="btn btn-outline-secondary">유찰</button>
			<button type="button" class="btn btn-outline-success">진행</button>
			<button type="button" class="btn btn-outline-info">변경</button>
			<button type="button" class="btn btn-outline-warning">예정</button>
			<button type="button" class="btn btn-outline-danger">낙찰</button>
		

		
		</div>
	
			
			<div>
				<h2>
					<span class="C" style="float: left;">2019 타경 107180</span><br>
				</h2>
				<p>
					<span class="C" style="text-align: center;">[아파트] 서울 아파트</span>
				</p>
				<div class="container" style="position: relative; left: 300px; margin-bottom: 30px;" >
				<select name="place" id="place">
			<option value="">도시선택</option>
			<option value="도시">서울</option>
			<option value="도시">경기</option>
			<option value="도시">부산</option>
		</select> 
		<select name="loc" id="place">
			<option value="지역">시/군/구</option>
			<option value="지역">강남</option>
			<option value="지역">금천구청</option>
			<option value="지역">구로</option>
		</select> 
		<select name="oc" id="place">
			<option value="지역">읍/면/동</option>
			<option value="지역">세교동</option>
			<option value="지역">동삭동</option>
			<option value="지역">비전동</option>
		</select> <input type="button" value="검색" id="place"/>
		</div>
			</div>
		
		<div class="wrap">
			<div class="target">
				<table border="1px solid black;">
					<caption>매물정보</caption>
					<tbody>
						
						<tr>
							<th><div class="C">감정가</div></th>
							<td><div class="C Bold"></td>
							<td rowspan="11">
								<div id="target" class="bul">
									<img src="resources/image/bul1.png" id="main1"
										style="width: 100%; margin: 0 auto;">
								</div>
								<div id="bul">

									<ul>
										<li><img src="img/g0.jpg" class="cls"></li>
										<li><img src="img/g1.jpg" class="cls"></li>
										<li><img src="img/g2.jpg" class="cls"></li>
										<li><img src="img/g3.jpg" class="cls"></li>
									</ul>
								</div>
							
						</tr>
						<tr>
							<th><div class="C">최저가</div></th>
							<td><div class="C Bold">
									<span class='point_blueB'></span>
								</div></td>
						</tr>
						<tr>
							<th><div class="C">입찰보증금</div></th>
							<td><div class="C">1,000,000,000</div></td>
						</tr>
						<tr>
							<th><div class="C">용도</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">건물면적</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">토지면적</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">경매대상</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">진행단계</div></th>
							<td><div class="C Bold"></div></td>
						</tr>
						<tr>
							<th><div class="C">법원</div></th>
							<td><div class="C">
						</tr>
						<tr>
							<th class="border0">
								<div class="C">조회수</div>
							</th>
							<td class="border0"><div class="C"></div></td>
						</tr>

						<tr class="grayArea">
							<th><div class="C">경매상담신청</div></th>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>
