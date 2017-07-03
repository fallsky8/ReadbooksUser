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

#privacy {
	padding: 10px;
	margin-left: 210px;
}

#privacyh2 {
	border-bottom: 1px solid #81a3a2;
}

#privacyh2>h2 {
	font-size: 24px;
}

#privacycon {
	margin-top: 15px;
}

#sideMenu a:NTH-CHILD(3) {
	background-color: rgba(0, 0, 0, 0.15);
}

.footer_center #primary_nav_wrap li:NTH-CHILD(3) {
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
			<div id="privacy">
				<div id="privacyh2">
					<h2>개인정보처리방침</h2>
				</div>
				<div id="privacycon">
					<dl>
						<dt>㈜리드북스 리드북스가 운영하는 온/오프라인 매장(이하 “리드북스”)은 개인정보 처리방침을 당사
							홈페이지(http://www.readbooks.com) 첫 화면에 공개함으로써 귀하께서 언제나 쉽게 보실 수 있도록
							조치하고 있습니다. 본 개인정보처리방침은 관련 법령, 지침 및 당사 내부 방침의 변경, 그 밖의 합리적인 사유에 따라
							변경될 수 있사오니 회원 가입 시 또는 사이트 방문 시 수시로 확인하시기 바랍니다.</dt>
						<br>
						<dt>* 용어의 정의</dt>
						<dd>본 개인정보처리방침에서의 사용되는 용어의 정의는 다음과 같습니다. 1. "리드북스"라 함은 리드북스
							온라인 매장(http://www.readbooks.com)이 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등
							정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있는 영업장을 말하며, 아울러 온라인 매장을 운영하는 사업자들의
							의미로도 사용합니다. 2. "이용자"라 함은 "리드북스"에 접속하여 이 약관에 따라 리드북스가 제공하는 서비스를 받는
							회원 및 비회원을 말합니다. 3. "회원"이라 함은 ""리드북스"에 개인정보를 제공하여 회원등록을 한 자로서,
							온/오프라인 매장 중 어느 곳에서 가입했느냐와 상관없이 온/오프라인 회원 모두를 의미합니다. 4. "비회원"이라 함은
							회원에 가입하지 않고 "리드북스"가 제공하는 서비스를 이용하는 자를 말합니다.</dd>
						<br>
						<dt>1. 개인정보의 수집 항목 및 목적</dt>
						<dd>(1) "리드북스"는 상거래 및 이와 관련한 다양한 서비스를 이용자들의 특성, 기호에 맞추어 제공하고
							이용자가 "리드북스"의 서비스를 이용함에 따라 일어나는 문제를 해결하기 위해 일부 한정된 범위 안에서 개인정보를
							수집하고 있습니다.</dd>
						<br>
						<dt>2. 개인정보 수집방법</dt>
						<dd>“리드북스”는 홈페이지(회원가입, 비회원 주문, 1:1 상담) 및 고객센터 ARS전화, 제휴사로부터의
							제공 등을 통해 개인정보를 수집하고 있습니다.</dd>
						<br>
						<dt>3. 개인정보수집에 대한 동의</dt>
						<dd>(1) "리드북스"는 회원가입시 '서비스 이용약관'과 '개인정보처리방침'에 동의하는 절차를 마련하고
							있으며, 동의의 의사표시가 없으면 회원으로 가입하실 수 없습니다. (2) 이용자는 개인정보 수집에 대한 동의에
							거부하실 수 있는 권리가 있으며, 거부 시에는 제공하는 혜택에 제한이 있을 수 있습니다. (3) 만14세 미만 아동
							개인정보 수집을 위해 법정 대리인 동의여부, 추후 법정 대리인 본인확인이 필요합니다.</dd>
					</dl>
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