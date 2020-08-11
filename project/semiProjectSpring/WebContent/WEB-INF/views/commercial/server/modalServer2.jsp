<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<!-- Load c3.css -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<div class="modal-content2">
	<div class="row" id="productdesc">
	<p class="locationinfo">���� ����</p>
		<input type="hidden" id="keyValue">
		<table class="modalServer table">
			<tr>
				<th>������ - �<br><em style="font-size:15px;">(����:��� ����)</em></th>
				<th>������ - ���<br><em style="font-size:15px;">(����:��� ����)</em></th>
				<th>���� - �<br><em style="font-size:15px;">(����:��� ����)</em></th>
				<th>���� - ���<br><em style="font-size:15px;">(����:��� ����)</em></th>
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
	<div>
		<div class="row" style="margin-bottom: 10px;">
			<div class="col-6" id="product1" style="margin: 0 auto;">
				<p class="locationinfo">�����α�</p>
				<div id="timePopChart" style="margin-bottom:9px;"></div>
				<a class="populationButton" id="timePopButton" onClick="split_gender();">
					<span>���� ��Ʈ ����</span>
				</a>
			</div>
			<div class="col-6" id="product2" style="margin: 0 auto;">
			<p class="locationinfo" style="padding-left: 62px;">�/���<em>(����:��� ����)</em></p>
				<div id="quaterOpenChart" style="margin-bottom: 9px;"></div>
				<table class="col-12">
					<tr>
						<td><a class="infobutton2" id="add_button1"
								onClick="deleteMeanOper();" style="border: 2px solid #0174DF;">
								<span>������ - �</span>
							</a></td>
						<td><a class="infobutton2" id="add_button2" style="border: 2px solid #FD7400;"
								onClick="addmeanClose();">
								<span>������ - ���</span>
							</a></td>
						<td><a class="infobutton2" id="add_button3" style="border: 2px solid #04B45F;"
								onClick="addseoulMeanOper();">
								<span>���� - �</span>
							</a></td>
						<td><a class="infobutton2" id="add_button4" style="border: 2px solid #DF0101;"
								onClick="addseoulMeanClose();">
								<span>���� - ���</span>
							</a></td>
					</tr>
				</table>
			</div>
 			<div class="col-3" id="product3" style="margin: 0 auto;">
				<div id="quaterOpenChart2"></div>
			</div>
			<div class="col-3" id="product4" style="margin: 0 auto;">
				<div id="quaterOpenChart3"></div>
			</div>
		</div>
	</div>
</div>

