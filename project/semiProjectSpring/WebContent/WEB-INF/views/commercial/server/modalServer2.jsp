<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Load c3.css -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="modal-content2" style="z-index: 999;">
	<h3>
		���� ���� <span id="location"></span>
	</h3>
	<div class="row" id="productdesc">
		<input type="hidden" id="keyValue">
		<table class="table">
			<tr>
				<th>��� � ����</th>
				<th>��� ��� ����</th>
				<th>���� ��տ��� ����</th>
				<th>���� ��� ���� ����</th>
			</tr>
			<tr>
				<td>${closebusi.meanoper}</td>
				<td>${closebusi.closeoper}</td>
				<td>${closebusi.totalopermean}</td>
				<td>${closebusi.totalclosemean}</td>
			</tr>
			<tr>
				<th>���ü ��</th>
				<th>�� ������ ��</th>
				<th>��� ������</th>
				<th>���ü â����</th>
			</tr>
			<tr>
				<td>${openbusi.businum}</td>
				<td>${openbusi.emplynum}</td>
				<td>${openbusi.meanemply}</td>
				<td>${openbusi.busiopenratio}%</td>
			</tr>
			<tr>
			</tr>
		</table>
	</div>
	<h1>�����α�</h1>
	<div>
		<div class="row">
			<div class="col-6" id="product" style="margin: 0 auto;">
				<div id="timePopChart"></div>
				<div class="button" id="timePopButton"
					style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top: 2px;"
					onClick="split_gender();">
					<span class="btn btn-primary btn-sm" style="font-size: 13pt;">
						�����׷��� </span>
				</div>
			</div>
			<div class="col-6" id="product" style="margin: 0 auto;">
				<div id="quaterOpenChart"></div>
				<table class="col-12">
					<tr>
						<td><div class="button" id="add_button1" style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top: 2px;" onClick="deleteMeanOper();"><span class="btn btn-primary btn-sm" style="font-size: 13pt;">��տ����</span></div></td>
						<td><div class="button" id="add_button2" style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top: 2px;" onClick="addmeanClose();"><span class="btn btn-primary btn-sm" style="font-size: 13pt;">����������</span></div></td>
						<td><div class="button" id="add_button3" style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top: 2px;" onClick="addseoulMeanOper();"><span class="btn btn-primary btn-sm" style="font-size: 13pt;">������տ����</span></div></td>
						<td><div class="button" id="add_button4" style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top: 2px;" onClick="addseoulMeanClose();"><span class="btn btn-primary btn-sm" style="font-size: 13pt;">��������������</span></div></td>
					</tr>
				</table>
			</div>
			<div class="col-3" id="product" style="margin: 0 auto;">
				<div id="quaterOpenChart2"></div>
			</div>
			<div class="col-3" id="product" style="margin: 0 auto;">
				<div id="quaterOpenChart3"></div>
			</div>
		</div>
	</div>
	<div class="button"
		style="cursor: pointer; background-color: white; text-align: center; padding-bottom: 2px; padding-top: 2px;"
		onClick="close_pop2();">
		<span class="btn btn-primary btn-sm" style="font-size: 13pt;">
			�ݱ� </span>
	</div>
</div>

