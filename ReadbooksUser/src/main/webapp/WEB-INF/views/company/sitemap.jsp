<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/custom_tag.tld" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/swipers.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>회사소개</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script>
	$(function() {

		$(window).scroll(function() {
			if ($(this).scrollTop() > 450) {
				$('.gnb_add_btn').addClass('abs_view');
				$('.ss_top').show();
				if (!$('.add_search').is(':visible')) {
					$('#head').addClass('head_mini');
				}
			} else {
				$('#head').removeClass('head_mini');
				$('.gnb_add_btn').removeClass('abs_view');
				$('.ss_top').hide();
			}

			if ($(this).scrollTop() > 200) {
				$('#serviceWrap').addClass('ss_fixed');
			} else {
				$('#serviceWrap').removeClass('ss_fixed');
			}
		});
		$("#onTop").click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 350);
		});

		$(".hb_close").click(function() {
			$(".head_banner").hide();
		});
	});
</script>


<style type="text/css">
#serviceWrap {
	top: 260px !important;
}

.ss_fixed {
	margin-top: -220px !important;
}

#serviceWrap .ss_myshop {
	border: 1px solid #e9e9e9;
}

#serviceWrap .ss_myshop a {
	color: #5fc5c5;
	font: normal 12 px;
	font-weight: bold;
	padding: 5px;
}

$
home-color: #C3BAAA ; $toplevel-color: #f2e8dd ; $aux-color: #FAF8D4 ; $line-color: #f2f2f2 
	 ; $bg-color: #fff ; *, *:before, *:after {
	box-sizing: border-box;
}

a {
	text-decoration: none;
}

#primaryNav li {
	width: 25%;
}

#primaryNav li ul li {
	width: 100% !important;
}

#primaryNav.col1 li {
	width: 99.9%;
}

#primaryNav.col2 li {
	width: 50.0%;
}

#primaryNav.col3 li {
	width: 33.3%;
}

#primaryNav.col4 li {
	width: 25.0%;
}

#primaryNav.col5 li {
	width: 20.0%;
}

#primaryNav.col6 li {
	width: 16.6%;
}

#primaryNav.col7 li {
	width: 14.2%;
}

#primaryNav.col8 li {
	width: 12.5%;
}

#primaryNav.col9 li {
	width: 11.1%;
}

#primaryNav.col10 li {
	width: 10.0%;
}

.sitemap {
	float: left;
	width: 80%;
	margin-left: 60px;
}

#primaryNav {
	margin: 0;
	float: left;
	width: 100%;
}

#primaryNav li {
	float: left;
	padding: 30px 0;
	margin-top: -30px;
}

#primaryNav li a {
	margin: 0 20px 0 0;
	padding: 10px 0;
	display: block;
	font-size: 14px;
	font-weight: bold;
	text-align: center;
	color: black;
	background: #c3eafb;
	border: 2px solid #b5d9ea;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.5) 2px 2px 2px;
	-moz-box-shadow: rgba(0, 0, 0, 0.5) 2px 2px 2px; /* FF 3.5+ */
}

#primaryNav li a:hover {
	background-color: #e2f4fd;
	border-color: #97bdcf;
}

#primaryNav li a:hover {
	background-color: #e2f4fd;
	border-color: #97bdcf;
}

a:link:before, a:visited:before {
	display: block;
	text-transform: uppercase;
	font-size: 10px;
	margin-bottom: 5px;
}

#primaryNav li a:link:before, #primaryNav li a:visited:before {
	color: #78a9c0;
}

/* --------	Second Level --------- */
#primaryNav li li {
	clear: left;
	margin-top: 0;
	padding: 10px 0 0 0;
}

#primaryNav li li a {
	width: 80%;
	float: right;
	background-color: #cee3ac;
	border-color: #b8da83;
}

#primaryNav li li a:hover {
	border-color: #94b75f;
	background-color: #e7f1d7;
}

#primaryNav li li:first-child {
	padding-top: 10px;
}

#primaryNav li li:last-child {
	padding-bottom: 10px;
}

/* --------	Third Level --------- */
#primaryNav li li ul {
	width: 100%;
	float: right;
	padding: 9px 0 10px 0;
	background: #ffffff center top no-repeat;
}

#primaryNav li li li {
	background: left center no-repeat;
	padding: 5px 0;
}

#primaryNav li li li a {
	background-color: #fff7aa;
	border-color: #e3ca4b;
	font-size: 12px;
	padding: 5px 0;
	width: 60%;
	float: right;
}

#primaryNav li li li a:hover {
	background-color: #fffce5;
	border-color: #d1b62c;
}

/* ------------------------------------------------------------
	Utility Navigation
------------------------------------------------------------ */
#utilityNav {
	float: right;
	max-width: 50%;
	margin-right: 10px;
}

#utilityNav li {
	float: left;
	margin-bottom: 10px;
}

#utilityNav li a {
	margin: 0 10px 0 0;
	padding: 5px 10px;
	display: block;
	border: 2px solid #e3ca4b;
	font-size: 12px;
	font-weight: bold;
	text-align: center;
	color: black;
	background: #fff7aa
		url('https://dl.dropboxusercontent.com/u/70953/codepen/images/sitemap/white-highlight.png')
		top left repeat-x;
	-moz-border-radius: 5px;
	-webkit-border-radius: 5px;
	-webkit-box-shadow: rgba(0, 0, 0, 0.5) 2px 2px 2px;
	-moz-box-shadow: rgba(0, 0, 0, 0.5) 2px 2px 2px; /* FF 3.5+ */
}

#utilityNav li a:hover {
	background-color: #fffce5;
	border-color: #d1b62c;
}

#utilityNav li a:link:before, #utilityNav li a:visited:before {
	color: #ccae14;
	font-size: 9px;
	margin-bottom: 3px;
}

#sideMenu a:NTH-CHILD(4) {
	background-color: rgba(0, 0, 0, 0.15);
}

.footer_center #primary_nav_wrap li:NTH-CHILD(4) {
	background-color: #5fc5c5;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="/introReadbooks.do" class="menu-item">회사소개</a> <a
					href="/serviceAgreement.do" class="menu-item">이용약관</a> <a
					href="/collectiveAgreement.do" class="menu-item">개인정보 처리 방침</a> <a
					href="/siteMap.do" class="menu-item">사이트맵</a>
			</div>

			<div class="sitemap">
				<ul id="utilityNav">
					<li><a href="/userjoin.do">회원가입</a></li>
					<li><a href="/usercheck.do">로그인</a></li>
					<li><a href="/cartlistGet.do">쇼핑카트</a></li>
				</ul>

				<ul id="primaryNav" class="col4">
					<li><a href="/koreabookGet.do">국내 소설</a>
						<ul>
							<li><a href="/korealongbookGet.do">국내 장편 소설</a></li>
							<li><a href="/koreashortbookGet.do">국내 단편 소설</a></li>
						</ul></li>
					<li><a href="/foreignbookGet.do">해외 소설</a>
						<ul>
							<li><a href="/foreignlongbookGet.do">해외 장편 소설</a></li>
							<li><a href="/foreignshortbookGet.do">해외 단편 소설</a></li>
						</ul></li>
					<li><a href="/bestbookGet.do">베스트</a></li>
					<li><a href="/newbookGet.do">신간</a></li>
				</ul>
				<ul id="primaryNav" class="col4">
					<li><a href="/reviewboard.do">리뷰게시판</a></li>
					<li><a href="#">마이페이지</a>
						<ul>
							<li><a href="#">내 정보 관리</a>
								<ul>
									<li><a href="#">회원탈퇴</a></li>
									<li><a href="#">내 정보 수정</a></li>
								</ul></li>
							<li><a href="#">주문 내역</a></li>
							<li><a href="/mylistGet.do">마이리스트</a></li>
						</ul></li>
					<li><a href="/noticeboardList.do">고객센터</a>
						<ul>
							<li><a href="/noticeboardList.do">공지사항</a></li>
							<li><a href="/faqboardList.do">자주 묻는 질문</a></li>
							<li><a href="/inquireboardList.do">1:1 문의</a></li>
						</ul></li>
					<li><a href="/introReadbooks.do">리드북스소개</a>
						<ul>
							<li><a href="/introReadbooks.do">회사소개</a></li>
							<li><a href="/serviceAgreement.do">이용약관</a></li>
							<li><a href="/collectiveAgreement.do">개인정보 처리 방침</a></li>
							<li><a href="/siteMap.do">주요 서비스</a></li>
						</ul></li>
				</ul>

			</div>
		</article>
		<aside>
			<div id="serviceWrap">
				<div class="ss_myshop">
					<a href="/introreadbooks.do"><span>주요서비스</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/usercheck.do"><span>로그인</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/userjoin.do"><span>회원가입</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/cartlistGet.do"><span> 쇼핑카트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/mylistGet.do"><span>마이리스트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="#"><span>주문내역</span></a>
				</div>
			</div>
		</aside>
		<div id="onTop" class="ss_top">
			<a href="javascript://"><img
				src="http://image.bandinlunis.com/images/common/2014/btn_top.png"></a>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>