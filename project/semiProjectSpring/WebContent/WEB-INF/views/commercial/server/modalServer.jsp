<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<div class="modal-content">
	<h3>�Ź� ����</h3>
	<div class="row" id="productdesc">
		<table class="table">
			<tr>
				<td>�Ź� Ư¡</td>
				<td colspan="3">${result.atclfetrdesc}</td>
			</tr>
			<tr>
				<td>���/���� ����</td>
				<td colspan="3">${result.spc1}/${result.spc2}</td>
			</tr>
			<tr>
				<td>�Ź�����</td>
				<td>${result.tradtpcd}</td>
				<td>Ư¡</td>
				<td>${result.taglist}</td>
			</tr>
			<tr>
				<td>����</td>
				<td>${result.prc}����</td>
				<td>�Ź���ȣ</td>
				<td>${result.atclno}</td>
			</tr>
			<tr>
				<td rowspan="3">�߰���</td>
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
			�ݱ� </span>
	</div>
</div>