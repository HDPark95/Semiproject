<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>

<c:forEach begin="1" end="10" step="1" varStatus="i">
							<li class="list-inline">
								<div class="col-md-6 col-sm-6 float-left">
									<a href="#">
										<div class="col-md-12 col-sm-12">
											<img src="resources/images/estate/apt.jpg"  style="width: 100%; height: 100px;">
											
											<p>이미지!</p>
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