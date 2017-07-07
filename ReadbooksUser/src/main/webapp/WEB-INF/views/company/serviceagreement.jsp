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

#readterm {
	padding: 10px;
	margin-left: 210px;
}

#readtermh2 {
	border-bottom: 1px solid #81a3a2;
}

#readterm>h2 {
	font-size: 24px;
}

#readtermcon {
	margin-top: 15px;
}

#sideMenu a:NTH-CHILD(2) {
	background-color: rgba(0, 0, 0, 0.15);
}

.footer_center #primary_nav_wrap li:NTH-CHILD(2) {
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
			<div id="readterm">
				<div id="readtermh2">
					<h2>이용약관</h2>
				</div>
				<div id="readtermcon">
					<dl>
						<dt>제1조(목적)</dt>
						<dd>이 약관은 ㈜리드북스가 운영하는 인터넷 도서쇼핑몰
							리드북스(http://www.readbooks.com) (이하 "몰"이라 함)에서 제공하는 인터넷 관련 서비스(이하
							"서비스"라 함)를 이용함에 있어 사이버몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로 합니다</dd>
						<dt>제2조 (정의)</dt>

						<dd>① "몰"이란 서울문고가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를 이용하여
							재화 또는 용역을 거래할 수 있도록 설정한 가상의 매장과 오프라인 매장을 말하며, 아울러 사이버몰을 운영하는 사업자의
							의미로도 사용합니다. ② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는 서비스를 받는 회원 및
							비회원을 말합니다. ③ '회원'이라 함은 "몰"에 개인 및 기업(법인)정보를 제공하여 회원등록을 한 자로서, "몰"의
							정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수 있는 자를 말합니다. ④ '비회원'이라
							함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를 말합니다. ⑤ 회원은 개인회원과 법인회원으로
							구분하며, 개인회원이란 회사가 회원으로 적합하다고 인정하는 일반 개인으로서 본 약관에 동의하고 회사의 회원가입양식을
							작성하고 아이디/패스워드를 발급받은 자를 말합니다. ⑥ 법인회원이란 회사가 회원으로 적합하다고 인정하는 등록사업자로서
							본 약관에 동의하고 회사의 회원가입양식을 작성하고 아이디/패스워드를 발급받은 사업자를 말합니다.</dd>

						<dt>제3조 (약관의 명시와 개정)</dt>
						<dd>① "몰"은 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자 등록번호, 연락처(전화,
							팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 서울문고 리드북스의 온라인 홈페이지 초기 서비스화면(전면)에
							게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다. ② "몰"은 이용자가
							약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 배송책임, 환불조건 등과 같은 중요한 내용을 이용자가
							이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을 구하여야 합니다. ③ 본 약관은 약관의
							규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진 등에 관한 법률, 방문판매 등에 관한 법률,
							소비자보호법 등 관련법을 위배하지 않는 범위에서 개정할 수 있습니다. ④ 본 약관을 개정할 경우, 적용일자 및
							개정사유를 명시하여 현행약관과 함께 "몰"의 초기화면에 적용일자 7일 이전부터 적용일자 전일까지 공지합니다. 다만,
							이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일 이상의 사전 유예기간을 두고 공지합니다. 이 경우
							"몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가 알기 쉽도록 표시합니다. ⑤ 본 약관을 개정할
							경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만 적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의
							약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한 이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에
							의한 개정약관의 공지기간 내에 "몰"에 송신하여 "몰"의 동의를 받은 경우에는 개정약관조항이 적용됩니다. ⑥ 본
							약관에서 명시하지 않은 사항과 본 약관의 해석에 관하여는 대한민국의 관계법령, 또는 상관례에 따릅니다.</dd>
					</dl>



				</div>
			</div>
		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
		<div id="onTop" class="ss_top">
			<a href="javascript://"><img
				src="http://image.bandinlunis.com/images/common/2014/btn_top.png"></a>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>