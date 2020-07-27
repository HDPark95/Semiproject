<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page trimDirectiveWhitespaces="true"%>

	<div class="col-md-12">
		<div>
						<ul id="listtarget">
							<c:forEach items="${list }" var="e" varStatus="i">
								<li class="list-inline" style="text-overflow: ellipsis;">
									<div class="col-md-6 col-sm-6 float-left" >
										<a href="estateDetail?num=${e.pdnum}">
											<div class="col-md-12 col-sm-12">
												<img src="img/${e.img[0].img }"  style="width: 100%; height: 120px;">
												
											</div>
											<div class="col-md-12 col-sm-12" style="height: 120px; text-overflow: ellipsis;">
											<c:choose>
												<c:when test="${e.build=='A01' }"><p>아파트</p></c:when>
												<c:when test="${e.build=='A02' }"><p>오피스텔</p></c:when>
												<c:when test="${e.build=='C01' }"><p>원룸</p></c:when>
												<c:when test="${e.build=='B01' }"><p>분양권</p></c:when>
												<c:when test="${e.build=='C03' }"><p>주택</p></c:when>
												<c:when test="${e.build=='D03' }"><p>건물</p></c:when>
												<c:otherwise><p>${e.build}</p></c:otherwise>
											</c:choose>
												
													
														<span>
														
														
														 <c:choose>
														 	<c:when test="${e.rent[0].rentv =='A1'}">매매</c:when>
														 	<c:when test="${e.rent[0].rentv=='B1' }">전세</c:when>
														 	<c:when test="${e.rent[0].rentv=='B2' }">월세</c:when>
														 </c:choose>
														 
														 :${e.rent[0].rpay }</span>만원<br>
													
					 							<p>${e.title}</p>
											</div>
										</a>
									</div>
								</li>
							</c:forEach>
						</ul>
						</div>
						<div style="margin-top: 10px;">
						<%@ include file="estatepage.jsp" %>
						</div>
			</div>