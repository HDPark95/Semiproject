<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>		
<%@ include file="../include/header_index.jsp"%>
<%@ include file="../include/header_menu.jsp"%>
<style>
#area {
	text-align: center;
}

#tag {
	display: block;
	margin: auto;
	width: 700px;
}

#writingarea {
	border: 5px solid #D8D8D8;
	width: 700px;
	height: auto;
	margin: auto;
}

#tag2 {
	width: 700px;
	font-size: 20px;
	font-weight: bold;
	color: seagreen;
}

#head {
	width: 695px;
	height: 105px;
	border-bottom: 5px solid #D8D8D8;
}

#title {
	text-align: left;
	margin-top: 20px;
	margin-left: 20px;
	width: 500px;
	font-size: 17px;
	font-weight: bold;
}

#toggle {
	text-align: left;
	margin-left: 20px;
	font-size: 15px;
	width: 500px;
	color: #787878;
}

#rec_update {
	width: 100px;
	color: blue;
	font-size: 15px;
	padding: 4.5px 0.5px;
}

#rec {
	padding-top: 30px;
	width: 170px;
	font-size: 13px;
}

#updatedetail{
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #FF8000;
	color: #FFFFFF;
	float: right;
	margin-left: 5px;
}

#golist{
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #0174DF;
	color: #FFFFFF;
	float: left;
}

#deletedetail{
	padding: 0.5rem 0.5rem;
	margin-top: 5px;
	background-color: #FE2E2E;
	color: #FFFFFF;
	float: right;
}
#buttons {
	width: 698px;
	margin: 0 auto;
}
#textbody{
	padding: 15px 15px 15px 15px;
	text-align: left;
}
</style>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
	$(function() {
		$('#updatedetail').hover(function() {
			$('#updatedetail').css('background-color', '#DF7401');
		}, function() {
			$('#updatedetail').css('background-color', '#FF8000');
		});
		$('#golist').hover(function() {
			$('#golist').css('background-color', '#045FB4');
		}, function() {
			$('#golist').css('background-color', '#0174DF');
		});
		$('#deletedetail').hover(function() {
			$('#deletedetail').css('background-color', '#FF0000');
		}, function() {
			$('#deletedetail').css('background-color', '#FE2E2E');
		});
		$('#golist').click(function() {
			location = 'comuMain';
		});
		$('#rec_update').hover(function() {
			$('#rec_update').css('border', '1px solid blue');
		},function(){
			$('#rec_update').css('border', '1px solid white');
		});
			
	});
	function deleteClick(){
		var result = confirm('정말 삭제하시겠습니까?');
		if(result) {
			alert('글이 삭제되었습니다.');
			$.ajax({
				url:"dedetail?wnum="+${list.wnum},
				success:location="comuMain"				
			})
		}
	}
	
	function upWrec(){
		location = "updateWrec?&wnum="+${list.wnum};
	}
	
</script>
<section class="projects-section bg-light" id="projects">
	<div class="container">
	<input type="hidden" id="list" name="list" value="${list}">
		<div id="area">
			<div id="location">
				<h4>우리동네 ${list.wgubun}이야기</h4>
				<div id="tag">
					<p id="tag2"><i class="fas fa-vihara"></i>&nbsp;${list.wloc1}
					<i class="fas fa-home"></i>&nbsp;${list.wloc2}
					<i class="fas fa-comments-dollar"></i>&nbsp;${list.wgubun}</p>
				</div>
			</div>
			<div id="writingarea">
				<div id="head">
					<table>
						<tr>
							<td><h3 id="title">${list.wtitle}</h3></td>
							<td id="rec" rowspan="2">추천하기
								<form action="updateWrec" method="post">	
									<button type="button" class="btn btn-default" onclick="upWrec()" id="rec_update">
										<i class="fas fa-thumbs-up"></i>&nbsp; <span id="wrec">${list.wrec}</span>
									</button>
								</form>
							</td>	
						</tr>
						<tr>
							<td><div id="toggle">
									<span><i class="fas fa-portrait"></i>&nbsp;${list.aid}****</span>&nbsp;||
									<span><i class="fas fa-calendar-day"></i>&nbsp;${list.wchgdate}</span>&nbsp;||
									<span><i class="fas fa-mouse"></i>&nbsp;${list.whit}</span>
							</div></td>	
						</tr>
					</table>
				</div>
				<div id="textbody">
				${list.wcontents}
				</div>
			</div>
			<div id="buttons">
				<button type="button" class="btn btn-default btn-sm" id="golist">
				<i class="fas fa-bars"></i>&nbsp;목록
				</button>
				<button type="button" class="btn btn-default btn-sm" id="updatedetail"
				onclick="location.href='updatedetailform?wnum=${list.wnum}'">
				<i class="fas fa-feather-alt"></i>&nbsp;수정
				</button>
				<form name="delete" action="dedetail">
				<button type="button" class="btn btn-default btn-sm" id="deletedetail" onclick="deleteClick()">
				<i class="fas fa-times"></i>&nbsp;삭제
				</button>
				</form>
			</div>
		</div>
	</div>
</section>