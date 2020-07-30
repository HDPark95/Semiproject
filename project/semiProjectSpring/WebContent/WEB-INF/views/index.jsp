<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="include/header_main.jsp"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
/* 탑 버튼 */
#scrollTopBtn {
    display: none;
    position: fixed;
    bottom: 20px;
    right: 20px;
    z-index: 99;
    border: 1px;
    border-style: solid;
    border-color: rgba(77,77,77,0.1);
    outline: none;
    background-color: #F28705;
    color: #ffffff;
    font-size: 1em;
    font-weight: bold;
    font-family: 'Noto Sans KR',sans-serif;
    cursor: pointer;
    padding: 25px 29px;
    border-radius: 45px;
}

/* 탑 버튼 Hover */
#scrollTopBtn:hover {
  background-color: white;
  color: #F28705;
  border: 1px solid #F28705;
}

.topContainer,.commercialContainer,.estateContainer,.auctionContainer,.subscribeContainer {
	width: 100%;
	height: 680px;
	font-family: 'Noto Sans KR',sans-serif;
}

.topContainer {
	width: 100%;
	font-family: 'Noto Sans KR',sans-serif;
	height: 907px;
	background-color: #FBF8EF;
}

.topArea {
	width: 1200px;
    height: 100%;
    margin: 0 auto;
}
.topImage {
	width: 676px;
	height: 609px;
	background-image: url("resources/images/index/indexImage1.png");
	float: right;
}
.topText {
	display: flex;
    flex-direction: column;
    -webkit-box-pack: center;
    justify-content: center;
    height: 680px;
}
.topText > p {
	font-size: 40px;
	font-weight: bold;
	letter-spacing: -0.9px;
    line-height: 1.3;
}
.topText > button {
	color: rgb(255, 255, 255);
    font-weight: 700;
    background-color: #F28705;
    display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: center;
    justify-content: center;
    width: 228px;
    height: 58px;
    font-size: 18px;
    border: 1px solid #F28705;
    border-image: initial;
    border-radius: 2px;
    margin-top: 15px;
}
.topText > button:hover{
	background-color: white;
	border: 1px solid #F28705;
	border-radius: 2px;
	color: #F28705;
}
.topText > button:focus{
	background-color: white;
	border: 1px solid #F28705;
	border-radius: 2px;
	color: #F28705;
}
.topNext{
	display: flex;
    -webkit-box-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    justify-content: space-between;
    position: absolute;
    width: 320px;
    height: 90px;
    right: 412px;
    bottom: 299px;
    background-color: white;
    font-size: 18px;
    font-weight: bold;
    box-shadow: rgba(0, 0, 0, 0.1) 0px 18px 50px -7px;
    cursor: pointer;
    padding: 30px 42px;
}
#topNext{
	color: #F28705;
}
</style>
<%@ include file="include/header_menu.jsp"%>
<div class="topContainer">
	<div class="topArea">
		<div class="topImage"></div>
		<div class="topText">
			<p>상권ㆍ부동산ㆍ경매 정보,</p>
			<p>이 곳, CMJ에서 확인하세요!</p>
			<button onclick="location.href='login'">CMJ 시작하기</button>
		</div>
		<div class="topNext" onclick="nextFunction()">CMJ 더 알아보기<i id="topNext" class="fas fa-angle-double-down"></i></div>
	</div>
</div>
<div class="commercialContainer">
	상가에 관한 설명이 들어갈 Div
</div>

<div class="estateContainer">
	부동산에 관한 설명이 들어갈 Div
</div>
<div class="auctionContainer">
	경매에 관한 설명이 들어갈 Div
</div>
<div class="subscribeContainer">
	구독에 관한 설명이 들어갈 Div
</div>
<button onclick="topFunction()" id="scrollTopBtn" title="Go to top">맨 위로 가기</button>
<%@ include file="include/footer.jsp"%>
<script>
    window.onscroll = function() {scrollFunction()};

    function scrollFunction() {
    var $element = matchMedia("screen and (min-width: 786px)").matches ? document.getElementById("scrollTopBtn") : document.getElementById("scrollTopBtnMob");
    $element.style.display = (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) ? 'block' : 'none';
    }
    
    function topFunction() {
        $('html,body').animate({ scrollTop: 0 }, 500);
    }
    
    function nextFunction() {
    	$('html,body').animate({ scrollTop: 830 }, 900);
    }
</script>
<%--  <header class="masthead">
             <div class="container d-flex h-100 align-items-center">
                <div class="mx-auto text-center">
                    <h1 class="mx-auto my-0 text-uppercase" id="title"><span class="logotext typer">Grayscale</span></h1>
                    <h3 class="text-white-50 mx-auto mt-2 mb-5">CMJ은 한발 앞서가는 분석으로 <br>최적의 매물과 가치를 만들어 드립니다.</h3>
                
					 <ul>
					<c:choose>									 
					<c:when test="${empty user}">
					<li>                 
                    <a class="btn btn-primary js-scroll-trigger" href="login">로그인</a>
                    </li>
                    </c:when>   
                    
                    <c:otherwise>
                    <li>
                    <a class="btn btn-primary js-scroll-trigger" href="index#footerMenu">시작하기</a>  
                    </li>
                    </c:otherwise>
                    </c:choose>
                                     
                   </ul>
                   
                </div>
            </div>  --%>
  <%-- </header>
        <!-- About-->
        <!-- Projects-->   
        <!-- Signup-->  
        <!-- Contact-->
        <section class="contact-section bg-black" id="footerMenu">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                        	
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <a href="commercialMain">
                                <h3 class="text-uppercase m-0">상가</h3>
                                <hr class="my-4" />
                                <div class="small text-black-50"></div>
                             	</a>
                             	<br>
                             	<br>
                                <a href="realprice">
                                <h3 class="text-uppercase m-0">실거래가</h3>
                                <hr class="my-4" />
                                </a>
                                <br>
                             	<br>
                                <a href="nearEstate">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">근처 부동산 검색</h3>
                                <hr class="my-4" />
                                </a>
                                <br>
                             	<br>
                                <a href="product">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">매물 검색</h3>
                                <hr class="my-4" />
                                </a>
                                <div>
                                	<!--  설명 글적는곳 -->
                                </div>
                            </div>
                             
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                        	<a href="estateMain">
                            <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <h3 class="text-uppercase m-0">부동산</h3>
                                <hr class="my-4" />
                                <br>
                             	<br>
                                <a href="realprice">
                                <h3 class="text-uppercase m-0">실거래가</h3>
                                <hr class="my-4" />
                                </a>
                                <br>
                             	<br>
                                <a href="nearEstate">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">근처 부동산 검색</h3>
                                <hr class="my-4" />
                                </a>
                                                             	
                                <br>
                             	<br>	
                                <div>
                                	<!--  설명 글적는곳 -->
                                </div>
                            </div>
                            </a>
                        </div>
                    </div>
                    <div class="col-md-4 mb-3 mb-md-0">
                        <div class="card py-4 h-100">
                             <div class="card-body text-center">
                                <i class="fas fa-map-marked-alt text-primary mb-2"></i>
                                <a href="commercialMain">
                                <h3 class="text-uppercase m-0"><a href="auctionMain">경매</a> </h3>
                                <hr class="my-4" />
                                <div class="small text-black-50"></div>
                             	</a>
                             	<br>
                				<br>
                                <a href="realprice">
                                <h3 class="text-uppercase m-0"><a href="auction_sales?aid=${user.aid }"> 판매관리</a></h3>
                                <hr class="my-4" />
                                </a>
                                <br> 
                                <br>  	           	
                                <a href="product">
                                <div class="small text-black-50"></div>
                                <h3 class="text-uppercase m-0">부동산관리</h3>
                                <hr class="my-4" />
                                </a>
                                <div>
                                	<!--  설명 글적는곳 -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="social d-flex justify-content-center">
                    <a class="mx-2" href="#!"><i class="fab fa-twitter"></i></a><a class="mx-2" href="#!"><i class="fab fa-facebook-f"></i></a><a class="mx-2" href="#!"><i class="fab fa-github"></i></a>
                </div>
            </div>
        </section> --%>