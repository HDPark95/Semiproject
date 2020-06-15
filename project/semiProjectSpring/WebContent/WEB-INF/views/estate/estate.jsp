<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ include file="../include/header_index.jsp"%>
<link  href="/resources/css/estate/paging.css"/>
<style>
.paging{
	color: #64a19d;
}
.paging:hover {
	cursor: pointer;
}
</style>
<%@ include file="../include/header_menu.jsp"%>
<section class="contact-section " >
	<%@ include file="../include/searchFilter.jsp" %>
	<div class="container2" style="margin-top: 50px; height: 80%;">
		<div class="row">
			<div class="col-md-12 mt-5">
				<!--  body -->
				<div class="col-md-8 col-sm-8 float-left">
					<p>지도</p>
				</div>
				<div class="col-md-4 col-sm-4 float-left" id="listtarget">
					<div class="col-md-12">
						<ul >
							<c:forEach begin="1" end="10" step="1" varStatus="i">
								<li class="list-inline">
									<div class="col-md-6 col-sm-6 float-left">
										<a href="#">
											<div class="col-md-12 col-sm-12">
												<img src="resources/images/estate/apt.jpg"  style="width: 100%; height: 100px;">
												
											</div>
											<div class="col-md-12 col-sm-12">
												<p>매물종류${i.index }</p>
												<span> 매물 가격${i.index }</span>
					 							<p>매물설명${i.index }</p>
											</div>
										</a>
									</div>
								</li>
							</c:forEach>
						</ul>
					</div>
				</div>

			</div>
		</div>
		<input type="hidden" value="${msg}" id="msg">
		<script>
			var msg=$("#msg").val();
			$(function(){
				if(msg!==''){
					alert(msg);
				}
				
				
				
				$.ajax({
					url:'estatelist',
					
					success:function(data){
						$('#listtarget').html(data);
					}
				});
				
				
				
				
			});
			function paging(text){
				var url='';
				if(text==='이후'){
					url='estatelist?nowPage='+$('#endPage').val()+'&cntPerPage='+$('#cntPerPage').val();
				}else if(text==='이전'){
					url='estatelist?nowPage='+$('#startPage').val()+'&cntPerPage='+$('#cntPerPage').val();
				}else{
					url='estatelist?nowPage='+text+'&cntPerPage='+$('#cntPerPage').val();
				}
				
				
				$.ajax({
					url:url,
					success: function(data){
						$('#listtarget').html(data);
					}
				});
			}
			
		</script>
	</div>
</section>
<%@ include file="../include/footer.jsp"%>