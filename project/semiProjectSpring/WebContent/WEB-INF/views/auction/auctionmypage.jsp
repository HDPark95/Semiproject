<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />        	
<style>
.modal{
    overflow-x: hidden;
    overflow-y: auto;
	opacity: 1;
	text-align: center;
    padding: 0!important;
    position: fixed;
    z-index: 1050;
    outline: 0;
    position:fixed; 
    top:50%; 
    left:50%; 
    transform: translate(-50%,-50%);
    max-width: 1000px;
}

#myModal2{
width: 800px;
height: 700px;
}
#modal-dialog{
    display: inline-block;
    text-align: left;
    vertical-align: middle;
    width: 600px;
    margin: 30px auto;
    position: relative;
}
.modal a.close-modal {
    top: 0px;
    right: 0px;
}
</style>
<script type="text/javascript">
function day1(val,a){
	//alert(val);
	var countDownDate = new Date(val).getTime();
	var now = new Date().getTime();
	var distance = countDownDate - now;
	var days = Math.floor(distance / (1000 * 60 * 60 * 24));
	var hours = Math.floor((distance % (1000 * 60 * 60 * 24))
			/ (1000 * 60 * 60));
	var minutes = Math.floor((distance % (1000 * 60 * 60)) / (1000 * 60));
	if (distance < 0) {
		console.log("y:"+a);
		//alert('만료');//'만료';
		document.getElementById("exday"+a).innerHTML = '만료';
	}else{
		console.log("n:"+a);
		//alert(val);//val;
		document.getElementById("exday"+a).innerHTML = val;
	}
}
  
</script>

<script>
function ipbtn(num){
	$.ajax({
		url : "auction_iplist?ipnum="+num+"&aid="+$('#aid').val(),
		type : "get" ,
		success : function(result) {
				$('#target1').html(result);
		}
	});
	event.preventDefault();
    $('#myModal2').modal({
      fadeDuration: 250
    });
    
//     $.ajax({
// 		url : "auction_iplist?ipnum=65" ,
// 		type : "get" ,
// 		success : function(result) {
// 				$('#target1').html(result);
// 		}
// 	}); 
  };
</script>	
<h4 style="margin-top: 50px;margin-bottom: 50px;">입찰관리</h4>
		<c:choose>
			<c:when test="${iplist=='[]'}">
				 <span style="margin-left: 50%;">입찰 내역이 없습니다.</span>
			</c:when>
			<c:otherwise>
	<table class="table table-hover2" style="color: black;border-bottom: solid 1px black;">	
			<tr>
				<th></th>
				<th>제목/건물용도/주소/경매만료일자</th>
				<th style="text-align: center;">입찰상태</th>
				<th style="text-align: center;">입찰내역</th>
			</tr>
		<c:forEach var="iplist" items="${iplist}" varStatus="idx">
			<tr>
				<td id="colchk1" scope="row" style="width: 130px;"><img
					src="img/${iplist.wimage}"
					style="width: 120px; height: 120px; float: left;" onerror="this.src='img/noimg.jpg'"></td>
				<td id="coltd1_2" style="width: 630px;"><label id="t1addr1_1">
					<span id="mainsubject">${iplist.subject}</span><br />
							<b>[${iplist.yongdo}]</b><br />${iplist.addr}</label><br/><label id="t1addr1_3"
					style="font-size: 11pt; height: 6px;"><b>경매만료일자</b>&nbsp;&nbsp;<span
						style="color: blue; font-weight: bold;"></span><span style="color: blue;" id="exday${idx.count}"></span><script>day1("${iplist.todate}",${idx.count})</script></label></td>
				<td style="text-align: center;"><span style="color: blue;font-weight: bold;"><br/><br/>${iplist.status}</span></td>
				<td style="text-align: center;"><input type="button" class="p_modal1" value="입찰내역" style="margin-top: 40px;" onclick="ipbtn(${iplist.ipnum})"></td> 
			</tr>
		</c:forEach>
		<input type="hidden" id="aid" name="aid" value="${param.aid}">
		</table>	
		</c:otherwise>
		</c:choose>
   <div id="myModal2" class="modal fade" role="dialog">
		<div id="modal-dialog">
			<!-- Modal content-->
			<div>
				<div>
					<button type="button" class="close" data-dismiss="modal"></button>
				</div>
				<div id="target1"></div>
			</div>
		</div>
	</div>		
