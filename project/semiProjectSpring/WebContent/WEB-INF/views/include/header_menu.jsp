<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   

  </head>
    <body id="page-top">
         
          <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav2" >
         
         <div class="container col-md-12" >
         	
                <a class="navbar-brand js-scroll-trigger menu-other" href="index">메인메뉴테스트</a><button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">Menu<i class="fas fa-bars"></i></button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                 <ul class="navbar-nav ml-auto menu-other">
                        <li class="nav-item2"><a class="nav-link2 js-scroll-trigger" href="mypage">${user.aid}님 환영합니다.</a></li>
                                            </ul>                  
                    <ul class="navbar-nav ml-auto2">
                       <li class="nav-item">
	                       <a class="nav-link js-scroll-trigger" href="commercialMain">상가</a>
	                       <ul class="invisible sub-menu">
		                       	<li><a>실거래가</a></li>
		                       	<li><a>주변부동산</a></li>
		                       	<li><a href="product">매물</a></li>
		                       	<li><a href="register">매물등록</a></li>
	                       </ul>
                       </li>
                        <li class="nav-item">
	                        <a class="nav-link js-scroll-trigger" href="estateMain">부동산</a>
	                      
	                        <ul class="invisible sub-menu">
		                       		<li><a href="estateMain">매물</a></li>
		                       	<li><a href="#">매물</a></li>
		                       	<li><a href="#">매물</a></li>
		                       	<li><a href="addestate">매물등록</a></li>
	                       </ul>
                        </li>
                        <li class="nav-item">
	                        <a class="nav-link js-scroll-trigger" href="auctionMain">경매</a>
	                        
	                        <ul class="invisible sub-menu">
		                       		<li><a>물건검색</a></li>
		                       	<li><a>판매관리</a></li>
		                       	<li><a>구매관리</a></li>
		                       	<li><a href="auctionAdd">부동산등록</a></li>
		                       	<li><a>경매정보</a></li>
	                       </ul>
                        </li>
                        <li class="nav-item">
	                        <a class="nav-link js-scroll-trigger" href="comuMain">커뮤니티</a>
	                      
	                        <ul class="invisible sub-menu">
		                         	<li><a>매물</a></li>
		                       	<li><a>매물</a></li>
		                       	<li><a>매물</a></li>
		                       	<li><a>매물등록</a></li>
	                       </ul>
                        </li>
                        <li class="nav-item">

	                        <a class="nav-link js-scroll-trigger menu-other" href="list">고객센터</a>             
                        </li>
                         
                            
                    </ul>
                      <ul class="navbar-nav ml-auto2 menu-other">
                        <li class="nav-item">
	                        
	                       	<c:choose>
		                       	<c:when test="${user.agubun eq '공인중개사'}">
		                       		<a class="nav-link js-scroll-trigger" href="/mypage_broker">내정보</a>
		                       	</c:when>
		                        <c:otherwise>
		                        	 <a class="nav-link js-scroll-trigger" href="mypage_lessor?aid=${user.aid }" >내정보</a>
		                        </c:otherwise>
	                       </c:choose> 
                       <input type="hidden" value="mypage">
                        </li>
                        <li class="nav-item">
                       	 	<a class="nav-link js-scroll-trigger" href="logout">로그아웃</a>
                        </li>
                    
                    </ul>
                   
                </div>
               </div>
               <br>
            </nav>
         <!--    <div class="row " style="margin-top: 80px; top: 80px;">
                 <div class="col-md-12 menu-top ">
		            <div class=" col-md-12 commercil invisible ">
		            	
		            </div>
		             <div class=" col-md-12 estate invisible ">
		            	
		            </div>
		              <div class=" col-md-12 auction  invisible">
		            	 <ul class="navbar-nav mr-auto float-left" >
				      <li class="nav-item active">
				        <a class="nav-link" href="#">물건검색 <span class="sr-only">(current)</span></a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">판매관리</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">구매관리</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">부동산등록</a>
				      </li>
				      <li class="nav-item">
				        <a class="nav-link" href="#">경매정보</a>
				      </li>
				    </ul>
		            </div>
		             <div class=" col-md-12 community invisible ">
		            	
		            </div>
		            <div class=" col-md-12 customer invisible">
		            	
		            </div>
		             <div class=" col-md-12 mypage invisible ">
		            	
		            </div>
	 
            </div> -->
       
	            