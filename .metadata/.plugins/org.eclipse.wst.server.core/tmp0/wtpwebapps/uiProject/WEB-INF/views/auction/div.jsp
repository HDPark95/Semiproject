<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
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
			<button type="button" class="btn btn-outline-primary">�Ű�</button>
			<button type="button" class="btn btn-outline-secondary">����</button>
			<button type="button" class="btn btn-outline-success">����</button>
			<button type="button" class="btn btn-outline-info">����</button>
			<button type="button" class="btn btn-outline-warning">����</button>
			<button type="button" class="btn btn-outline-danger">����</button>
		

		
		</div>
	
			
			<div>
				<h2>
					<span class="C" style="float: left;">2019 Ÿ�� 107180</span><br>
				</h2>
				<p>
					<span class="C" style="text-align: center;">[����Ʈ] ���� ����Ʈ</span>
				</p>
				<div class="container" style="position: relative; left: 300px; margin-bottom: 30px;" >
				<select name="place" id="place">
			<option value="">���ü���</option>
			<option value="����">����</option>
			<option value="����">���</option>
			<option value="����">�λ�</option>
		</select> 
		<select name="loc" id="place">
			<option value="����">��/��/��</option>
			<option value="����">����</option>
			<option value="����">��õ��û</option>
			<option value="����">����</option>
		</select> 
		<select name="oc" id="place">
			<option value="����">��/��/��</option>
			<option value="����">������</option>
			<option value="����">���赿</option>
			<option value="����">������</option>
		</select> <input type="button" value="�˻�" id="place"/>
		</div>
			</div>
		
		<div class="wrap">
			<div class="target">
				<table border="1px solid black;">
					<caption>�Ź�����</caption>
					<tbody>
						
						<tr>
							<th><div class="C">������</div></th>
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
							<th><div class="C">������</div></th>
							<td><div class="C Bold">
									<span class='point_blueB'></span>
								</div></td>
						</tr>
						<tr>
							<th><div class="C">����������</div></th>
							<td><div class="C">1,000,000,000</div></td>
						</tr>
						<tr>
							<th><div class="C">�뵵</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">�ǹ�����</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">��������</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">��Ŵ��</div></th>
							<td><div class="C"></div></td>
						</tr>
						<tr>
							<th><div class="C">����ܰ�</div></th>
							<td><div class="C Bold"></div></td>
						</tr>
						<tr>
							<th><div class="C">����</div></th>
							<td><div class="C">
						</tr>
						<tr>
							<th class="border0">
								<div class="C">��ȸ��</div>
							</th>
							<td class="border0"><div class="C"></div></td>
						</tr>

						<tr class="grayArea">
							<th><div class="C">��Ż���û</div></th>
							<td></td>
						</tr>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>
