<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<table class="customers" id="managementTable">
	<tr>
		<th colspan="6" id="management">전체 선택 , 삭제 등 들어갈 자리</th>
	</tr>
	<tr>
		<th id="">번호</th>
		<th id="">담당 부동산</th>
		<th id="">종류</th>
		<th id="">매물정보</th>
		<th id="">지역</th>
		<th id="">Delete</th>
	</tr>
	<c:forEach items="${plist }" var="pro">
		<tr>
			<td>${pro.pdnum }</td>
			<td>${pro.rltrnm }</td>
			<td class="rlettpcd">${pro.rlettpcd }</td>
			<td><a
				href="goupdateCommercial?pdnum=${pro.pdnum}&aid=${user.aid}">${pro.atclfetrdesc}</a></td>
			<td>${pro.plocation }</td>
			<td><button
					onclick="deleteCommercial?pdnum=${pro.pdnum}&aid=${user.aid}"
					class="btn btn-primary btn-sm productdescmodal bg-green">
					등록<br>취소
				</button></td>
		</tr>
	</c:forEach>
</table>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script>
$(function() {
	$('.rlettpcd').each(function() {
		if($(this).text() == 'A01'){
			$(this).text('아파트');
		}else if($(this).text() == 'A02'){
			$(this).text('오피스텔');
		}else if($(this).text() == 'B01'){
			$(this).text('분양권');
		}else if($(this).text() =='C01'){
			$(this).text('원룸');
		}else if($(this).text() == 'C03'){
			$(this).text('주택');
		}else if($(this).text() == 'D01'){
			$(this).text('사무실');
		}else if($(this).text() == 'D02'){
			$(this).text('상가');
		}else if($(this).text() == 'D03'){
			$(this).text('건물');
		}else if($(this).text() == 'E02'){
			$(this).text('공장');
		}else if($(this).text() == 'E03'){
			$(this).text('토지');
		}else if($(this).text() == 'F01'){
			$(this).text('재개발');
		}
			});
			
			
	});
	

</script>
