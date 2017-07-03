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

#intro {
	padding: 10px;
	border-bottom: 1px solid #81a3a2;
	margin-left: 210px;
}

#intro>h2 {
	font-size: 24px;
}

.introcontent {
	margin-left: 210px;
	margin-top: 15px;
}

#introcon {
	margin-left: 15px;
}
#sideMenu a:NTH-CHILD(1) {
	background-color: rgba(0, 0, 0, 0.15);
}
.footer_center #primary_nav_wrap li:NTH-CHILD(1) {
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
			<div>
				<div id="intro">
					<h2 id="introtitle">회사소개</h2>
				</div>

				<div class="introcontent">
					<div id="introimg">
						<img src="/resources/image/readbooks-logo.png" width="240"
							height="60">
					</div>
					<div id="introcon">
						<dl>
							<dt>안녕하세요 리드북스 입니다.</dt>
							<dd>리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.
								리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.
								리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.
								리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.리드북스입니다.v</dd>
						</dl>

						<table class="table">
							<tr>
								<th>상호</th>
								<td>㈜리드북스</td>
							</tr>
							<tr>
								<th>브랜드</th>
								<td>리드북스</td>
							</tr>
							<tr>
								<th>대표자</th>
								<td>우리조</td>
							</tr>
							<tr>
								<th>설립일</th>
								<td>2017-07-14</td>
							</tr>
							<tr>
								<th>홈페이지</th>
								<td>www.readbooks.com</td>
							</tr>



						</table>
					</div>
				</div>
			</div>
		</article>
		<aside>
			<div id="serviceWrap">
				<div class="ss_myshop">
					<a href="/siteMap.do"><span>주요서비스</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/usercheck.do"><span>로그인</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/userjoin.do"><span>회원가입</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/cartlistGet.do"><span>쇼핑카트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/mylistGet.do"><span>마이리스트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/orderSelect.do"><span>주문내역</span></a>
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