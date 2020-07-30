<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
</head>
<style>
.navbar.navbar-expand-lg.navbar-light.bg-light{
	border-bottom: 1px solid rgb(229, 229, 229);;
}
.header_main_right {
	color: black;
	font-size: 15px;
	font-weight: bold;
	border: 2px solid #D8D8D8;
	padding: 5px;
	border-radius: 15px;
	font-family: 'Noto Sans KR',sans-serif;
	margin-right: 5px;
}

.header_main_right:hover {
	color: black;
	border: 2px solid #F28705;
	padding: 5px;
	border-radius: 15px;
}

a:hover {
	text-decoration: none;
}

.mr-auto {
	color: black;
	font-size: 15px;
	font-weight: bold;
	margin-right: 10px;
	font-family: 'Noto Sans KR',sans-serif;
}

.navbar-nav.mr-auto.commercial{
	margin-left: auto !important;
}

.nav-item.service {
	margin-right: auto;
}
.nav-item,.nav-link {
	width: 130px;
	text-align: center;
}

.nav-item.dropdown {
	height: 60px;
	padding-top: 20px;
}

.navbar-light .navbar-nav .nav-link {
	color: black;
}

.navbar-light .navbar-nav .nav-link:hover, .navbar-light .navbar-nav .nav-link:focus
{
	color: #F28705;
}

.dropdown-menu {
	margin-top: -0.5px;
}

.dropdown-menu > li{
	text-align: center;
	border-bottom: 1px solid #E6E6E6;
	padding-bottom: 3px;
}

.dropdown-menu > li > a{
	background-color: white;
	color: black;
	font-family: 'Noto Sans KR',sans-serif;
}

.dropdown-menu > li > a:hover{
	color: #F28705;
}
</style>
<body id="page-top">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/semiProjectSpring/"><img
			style="width: 50px; height: 50px;"
			src="resources/assets/img/logo.png"></a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarColor03" aria-controls="navbarColor03"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarColor03">
			<ul class="navbar-nav mr-auto commercial">
				<li class="nav-item dropdown commercial" class="dropdown-toggle" data-toggle="dropdown">
				<a class="nav-link" onclick="location.href='commercialMain'">상가&nbsp;<i class="fas fa-store"></i></a>
					<ul class="dropdown-menu commercial">
          				<li><a href="#" onclick="location.href='realprice'">실거래가</a></li>
          				<li><a href="#" onclick="location.href='nearEstate'">주변 부동산</a></li>
          				<li><a href="#" onclick="location.href='product'">매물 검색</a></li>
          				
		                       	<li><a href="#" onclick="location.href='newsList'">뉴스</a></li>
        			</ul>
				</li>
			</ul>
			<ul class="navbar-nav mr-auto">
				<li class="nav-item dropdown estate">
				<a class="nav-link" onclick="location.href='estateMain'">부동산&nbsp;<i class="fas fa-building"></i></a>
					<ul class="dropdown-menu estate">
          					<li><a href="#"  onclick="location.href='estateMain'">매물</a></li>
		                      	<li><a href="#"  onclick="location.href='realprice'">실거래가</a></li>
		                       	<li><a href="#"  onclick="location.href='nearEstate'">주변부동산</a></li>
        			</ul>
				</li>
			</ul>	
			<ul class="navbar-nav mr-auto">	
				<li class="nav-item dropdown auction">
				<a class="nav-link" onclick="location.href='auctionMain'">경매&nbsp;<i class="fas fa-money-bill-alt"></i></a>
					<ul class="dropdown-menu auction">
          					<li><a href="#" onclick="location.href='auctionMain'">물건검색</a></li>
		                       	<li><a href="#" onclick="location.href='auction_sales?aid=${user.aid }'">판매관리</a></li>
		                       
		                       	<li><a href="#" onclick="location.href='auctionAdd'">부동산등록</a></li>
        			</ul>
				</li>
			</ul>	
			<ul class="navbar-nav mr-auto">	
				<li class="nav-item community">
				<a class="nav-link" onclick="location.href='comuMain'">커뮤니티&nbsp;<i class="fas fa-comments"></i></a>
				</li>
			</ul>	
			<ul class="navbar-nav mr-auto last">	
				<li class="nav-item service">
				<c:catch>
                	<c:choose>
                    	<c:when test="${empty user}">
							<a class="nav-link" onclick="loginCheck()">고객센터&nbsp;<i class="fas fa-hands-helping"></i></a>
						</c:when>
						<c:otherwise>
							<a class="nav-link" onclick="location.href='listall'">고객센터&nbsp;<i class="fas fa-hands-helping"></i></a>
						</c:otherwise>
                    </c:choose>
                </c:catch>	
				</li>
			</ul>
			
			<form class="form-inline my-2 my-lg-0">
			<c:catch>
            	<c:choose>
                	<c:when test="${empty user}">
						<a href="login" class="header_main_right">회원가입ㆍ로그인</a>
					</c:when>
                	<c:otherwise>
                		<a href="mypage_lessor?aid=${user.aid}" class="header_main_right">내 정보</a>
						<a href="logout" class="header_main_right">로그아웃</a>
					</c:otherwise>
				</c:choose>
            </c:catch>						
			</form>
		</div>
	</nav>
<script type="text/javascript">
$(".nav-item.dropdown.commercial").hover(
	function(){
	$(".dropdown-menu.commercial").attr('class', 'dropdown-menu commercial show');
	},
	function(){
	$(".dropdown-menu.commercial").attr('class', 'dropdown-menu commercial');
	}
);

$(".nav-item.dropdown.estate").hover(
	function(){
	$(".dropdown-menu.estate").attr('class', 'dropdown-menu estate show');
	},
	function(){
	$(".dropdown-menu.estate").attr('class', 'dropdown-menu estate');
	}
);

$(".nav-item.dropdown.auction").hover(
	function(){
	$(".dropdown-menu.auction").attr('class', 'dropdown-menu auction show');
	},
	function(){
	$(".dropdown-menu.auction").attr('class', 'dropdown-menu auction');
	}
);

function loginCheck(){
	alert('로그인이 필요한 서비스입니다. 로그인 페이지로 이동합니다.');
	location.href = 'login';
}
</script>
<%-- 	<nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav2">
		<div class="container col-md-12">
			<a class="navbar-brand js-scroll-trigger menu-other" href="index">메인메뉴테스트</a>
			<button class="navbar-toggler navbar-toggler-right" type="button"
				data-toggle="collapse" data-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu<i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<ul class="navbar-nav ml-auto menu-other">
					<c:catch>
						<c:choose>
							<c:when test="${empty user}">
								<li class="nav-item2"><a
									class="nav-link2 js-scroll-trigger" href="mypage"> </a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item2"><a
									class="nav-link2 js-scroll-trigger" href="#">${user.dname}님
										환영합니다.</a></li>
							</c:otherwise>
						</c:choose>
					</c:catch>
				</ul>
				<ul class="navbar-nav ml-auto2">
					<c:catch>
						<c:choose>
							<c:when test="${empty user}">
								<li class="nav-item2"><a
									class="nav-link2 js-scroll-trigger" href="mypage"> </a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="addestate">매물등록</a></li>
							</c:otherwise>
						</c:choose>
					</c:catch>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="commercialMain">상가</a>
						<ul class="invisible sub-menu">
							<li><a href="realprice">실거래가</a></li>
							<li><a href="nearEstate">주변부동산</a></li>
							<li><a href="product">매물</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="estateMain">부동산</a>
						<ul class="invisible sub-menu">
							<li><a href="estateMain">매물</a></li>
							<li><a href="realprice">실거래가</a></li>
							<li><a href="nearEstate">주변부동산</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="auctionMain">경매</a>
						<ul class="invisible sub-menu">
							<li><a href="auctionMain">물건검색</a></li>
							<li><a href="auction_sales?aid=${user.aid }">판매관리</a></li>
							<li><a href="auctionAdd">부동산등록</a></li>
						</ul></li>
					<li class="nav-item"><a class="nav-link js-scroll-trigger"
						href="comuMain">커뮤니티</a></li>
					<li class="nav-item"><c:catch>
							<c:choose>
								<c:when test="${empty user}">
									<li class="nav-item"><a class="nav-link js-scroll-trigger"
										href="login">고객센터</a></li>
								</c:when>
								<c:otherwise>
									<li class="nav-item"><a class="nav-link js-scroll-trigger"
										href="list1">고객센터</a></li>
								</c:otherwise>
							</c:choose>
						</c:catch></li>
				</ul>
				<ul class="navbar-nav ml-auto2 menu-other">
					<li class="nav-item"><c:choose>
							<c:when test="${user.agubun eq '공인중개사'}">
								<a class="nav-link js-scroll-trigger"
									href="mypage_lessor?aid=${user.aid }">내정보</a>
							</c:when>
							<c:when test="${user.agubun eq '임대인'}">
								<a class="nav-link js-scroll-trigger"
									href="mypage_lessor?aid=${user.aid }">내정보</a>
							</c:when>
							<c:otherwise>
								<a class="nav-link js-scroll-trigger" href="login">내정보</a>
							</c:otherwise>
						</c:choose> <input type="hidden" value="mypage"></li>
					<c:catch>
						<c:choose>
							<c:when test="${empty user}">
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="login">로그인</a></li>
							</c:when>
							<c:otherwise>
								<li class="nav-item"><a class="nav-link js-scroll-trigger"
									href="logout">로그아웃</a></li>
							</c:otherwise>
						</c:choose>
					</c:catch>
				</ul>

			</div>
		</div>
		<br>
	</nav> --%>
<script>
	function register_func() {
		var aid = "${user.aid}";
		if (aid === null || aid === "") {
			alert("로그인하십시오.");
		} else {
			location = "register";
		}
	}
</script>