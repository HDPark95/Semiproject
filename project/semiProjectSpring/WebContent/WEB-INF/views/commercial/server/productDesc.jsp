<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page trimDirectiveWhitespaces="true"%>
<c:forEach items="${result}" var="e" varStatus="idx" begin="1" end="3">
<div class="col-md-4 mb-5 productmain">
					<div class="card h-100">
						<div class="card-body">
							<!-- <h2 class="card-title">[�Ÿ�] �Ϲݻ�</h2> -->
							<h2 class="card-title">${e.atclfetrdesc}...</h2>
							<div class="commercialimg">
								<img src="resources/images/commercial/commercial${idx.index}.jpg"
									class="mainImage">
							</div>
						</div>
						<div class="card-footer">
							<button onclick="open_pop()" class="btn btn-primary btn-sm">More Info</button>
						</div>							
					</div>
</div>
</c:forEach>