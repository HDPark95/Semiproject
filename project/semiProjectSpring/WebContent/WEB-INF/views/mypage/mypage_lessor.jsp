<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>


<%@ include file="../include/header_index.jsp"%>
<link href="resources/css/myPage/th_bootstrap.css?after"
	rel="stylesheet" />
<link href="resources/css/myPage/th_styles.css?after" rel="stylesheet" />

<%@ include file="../include/header_menu.jsp"%>


<section class="contact-section container topma " style="">


	<h2 class="th_mypage_maintext">MY 부동산 페이지(일반)</h2>


	<ul class="nav nav-tabs th_ul">
		<li class="th_li"><a class="nav-link active th_atwi"
			data-toggle="tab" href="#myinformation">정보수정</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#b">쓴 게시글 관리</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#c">연락한 부동산</a></li>
		<li class="th_li"><a class="nav-link th_atwi " data-toggle="tab"
			href="#d">내 문의 내역</a></li>

	</ul>
	<div id="myTabContent" class="tab-content">
		<div class="tab-pane  th_page_space  fade show active "
			style="text-align: center;" id="myinformation">

			<%@ include file="../mypage/myinformation.jsp"%>

		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="b">

			<ul class="nav nav-tabs">
				<li class="th_li_sub"><a class="th_nav-link active th_atwi"
					data-toggle="tab" href="#sub_a">커뮤니디</a></li>
				<li class="th_li_sub"><a class="th_nav-link th_atwi "
					data-toggle="tab" href="#sub_b">고객센터 문의</a></li>
			</ul>

			<div id="myTabContent" class="tab-content">
				<div class="tab-pane  th_page_space  fade show active "
					style="text-align: center;" id="sub_a">
					<table id="customers">
						<tr>
							<th colspan="5" id="management">전체 선택 , 삭제 등 들어갈 자리</th>

						</tr>
						<tr>
							<th id="">작성일자</th>
							<th id="">카테고리</th>
							<th id="">글 제목</th>
							<th id="">댓글수</th>
							<th id="">조회수</th>
						</tr>
						<tr>
							<td>2020-06-05</td>
							<td>커뮤니티/유머</td>
							<td>요즘 게임난이도</td>
							<td>1</td>
							<td>100</td>
						</tr>
						<tr>
							<td>2020-05-23</td>
							<td>커뮤니티/유머</td>
							<td>그때 그곳 그맛</td>
							<td>3</td>
							<td>33</td>
						</tr>
						<tr>
							<td>2020-05-20</td>
							<td>커뮤니티/질문</td>
							<td>서울시 금천구 집값이...</td>
							<td>2</td>
							<td>55</td>
						</tr>
						<tr>
							<td>2020-05-19</td>
							<td>커뮤니티/유머</td>
							<td>만나면 안되는 사람</td>
							<td>1</td>
							<td>21</td>
						</tr>
						<tr>
							<td>2020-05-10</td>
							<td>커뮤니티/질문</td>
							<td>인천시 코로나 상황</td>
							<td>10</td>
							<td>805</td>
						</tr>

					</table>

				</div>

				<div class="tab-pane  th_page_space  fade show active "
					style="text-align: center;" id="sub_b">
					아무 것도 없다.
					
					</div>

			</div>

		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="c">
			<h2 class="container" style="margin-top: 300px; color: black;">나에게
				연락온 부동산 목록을 볼수 있습니다.</h2>
		</div>
		<div class="tab-pane fade th_page_space" style="text-align: center;"
			id="d">
			<h2 class="container" style="margin-top: 300px; color: black;">내
				문의 내역 목록을 볼수 있는 페이지 입니다.</h2>
		</div>
	</div>

</section>



<%@ include file="../include/footer.jsp"%>



