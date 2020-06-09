<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<div class="modal-content">
	<h3>매물 정보</h3>
	<div class="row" id="productdesc">
		<table class="table">
			<tr>
				<td>매물 특징</td>
				<td colspan="3">${result.atclfetrdesc}</td>
			</tr>
			<tr>
				<td>계약/전용 면적</td>
				<td colspan="3">${result.spc1}/${result.spc2}</td>
			</tr>
			<tr>
				<td>매물종류</td>
				<td>${result.tradtpcd}</td>
				<td>특징</td>
				<td>${result.taglist}</td>
			</tr>
			<tr>
				<td>가격</td>
				<td>${result.prc}만원</td>
				<td>매물번호</td>
				<td>${result.atclno}</td>
			</tr>
			<tr>
				<td rowspan="3">중개인</td>
				<td rowspan="3" colspan="3">${result.rltrnm}</td>
			</tr>
		</table>
		<div class="row centered" id="product" style="margin:0 auto;">
			<div class="modalimg">
				<img src="resources/images/commercial/gangdong1.jpg"
					class="modalImage">
			</div>
			<div class="modalimg">
				<img src="resources/images/commercial/gangdong2.jpg"
					class="modalImage">
			</div>
			<div class="modalimg">
				<img src="resources/images/commercial/gangdong3.jpg"
					class="modalImage">
			</div>
		</div>
	</div>
	<div class="button"
		style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top:2px;"
		onClick="close_pop();">
		<span class="btn btn-primary btn-sm" style="font-size: 13pt;">
			닫기 </span>
	</div>
</div>