<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/swipers.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/js/cart.js"></script>
<script src="/resources/js/validation.js"></script>
<title>리드북스 회원가입</title>
<link
	href='https://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Gafata|Nobile:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<script type="text/javascript">
	$(function() {
		var checkAll = $('#agreementtotalch');
		checkAll.change(function() {
			var $this = $(this);
			var checked = $this.prop('checked');

			$('input[name="agreementch"]').prop('checked', checked);
		});
		var boxes = $('input[name="agreementch"]');
		boxes.change(function() {
			var boxLength = boxes.length;
			var checkedLength = $('input[name="agreementch"]:checked').length;
			var selectAll = (boxLength == checkedLength);
			checkAll.prop('checked', selectAll);
		});

		$("#agreementbtn").click(function() {
			if ($('input[name="agreementtotalch"]').is(":checked")) {
				location.href = "/userjoin.do";
			} else if ($('input:checkbox[id="agreementch2"]').is(":checked")) {
				alert("리드북스 이용약관 동의 해주세요");
			} else if ($('input:checkbox[id="agreementch1"]').is(":checked")) {
				alert("개인정보 처리방침 동의 해주세요");
			} else {
				alert("약관에 동의 해주세요");
			}
		});
	});
</script>
<style type="text/css">
@import
	url(//netdna.bootstrapcdn.com/font-awesome/3.2.1/css/font-awesome.css);

#wrapper {
	margin-left: 180px;
}

#top_header {
	width: 100%;
	margin: 0;
	padding-top: 0px;
}

#top_header>h3 {
	text-align: center;
	font-family: 'Lato', sans-serif;
	font-size: 32px;
	font-weight: 800;
	color: #5fc5c5;
	-webkit-text-stroke: 0.5px;
	margin: 0;
}

.userjoin {
	font-size: 24px;
	color: #5fc5c5;
	background-color: #f2f2f2;
	width: 100%;
	height: 80px;
}

.userjoin h1 {
	padding-top: 30px;
	padding-left: 20px;
}

.agreement {
	float: left;
	margin-left: 90px;
	margin-top: 20px;
}

.agreement_title {
	margin-left: 90px;
	margin-top: 20px;
}

.totalagree {
	margin-top: 40px;
	margin-left: 170px;
}

.agreementheader {
	margin-bottom: 15px;
	margin-top: 20px;
}

.agreementchbox {
	margin-top: 20px;
	margin-left: 355px;
}

h4 {
	color: #5fc5c5;
}

input[type=checkbox] {
	display: none;
} /* to hide the checkbox itself */
input[type=checkbox]+label:before {
	font-family: FontAwesome !important;
}

input[type=checkbox]+label:before {
	content: "\f096";
} /* unchecked icon */
input[type=checkbox]+label:before {
	letter-spacing: 10px;
} /* space between checkbox and label */
input[type=checkbox]:checked+label:before {
	content: "\f046";
} /* checked icon */
input[type=checkbox]:checked+label:before {
	letter-spacing: 5px;
} /* allow space for check mark */
label {
	font-size: 19px;
	color: #5fc5c5;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="wrapper">
				<!-- <div class="userjoin">
					<h1>회원가입</h1>
				</div>
				<div id="top_header">
					<img alt="약관동의" src="/resources/image/agreement.png" width="300px">
				</div> -->
				<div id="top_header">
					<h3>약관동의</h3>
				</div>
				<div class="agreement">
					<div class="agreementheader">
						<h4>리드북스 이용약관</h4>
					</div>
					<div>
						<div class="form-control"
							style="border: 1px solid #5fc5c5; overflow: scroll; width: 670px; height: 281px; overflow-x: hidden;">
							<dl>
								<dt>제1조(목적)</dt>
								<dd>이 약관은 ㈜리드북스가 운영하는 인터넷 도서쇼핑몰
									리드북스(http://www.readbooks.com) (이하 "몰"이라 함)에서 제공하는 인터넷 관련
									서비스(이하 "서비스"라 함)를 이용함에 있어 사이버몰과 이용자의 권리·의무 및 책임사항을 규정함을 목적으로
									합니다</dd>
								<dt>제2조 (정의)</dt>

								<dd>① "몰"이란 서울문고가 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터 등 정보통신설비를
									이용하여 재화 또는 용역을 거래할 수 있도록 설정한 가상의 매장과 오프라인 매장을 말하며, 아울러 사이버몰을
									운영하는 사업자의 의미로도 사용합니다. ② "이용자"란 "몰"에 접속하여 이 약관에 따라 "몰"이 제공하는
									서비스를 받는 회원 및 비회원을 말합니다. ③ '회원'이라 함은 "몰"에 개인 및 기업(법인)정보를 제공하여
									회원등록을 한 자로서, "몰"의 정보를 지속적으로 제공받으며, "몰"이 제공하는 서비스를 계속적으로 이용할 수
									있는 자를 말합니다. ④ '비회원'이라 함은 회원에 가입하지 않고 "몰"이 제공하는 서비스를 이용하는 자를
									말합니다. ⑤ 회원은 개인회원과 법인회원으로 구분하며, 개인회원이란 회사가 회원으로 적합하다고 인정하는 일반
									개인으로서 본 약관에 동의하고 회사의 회원가입양식을 작성하고 아이디/패스워드를 발급받은 자를 말합니다. ⑥
									법인회원이란 회사가 회원으로 적합하다고 인정하는 등록사업자로서 본 약관에 동의하고 회사의 회원가입양식을 작성하고
									아이디/패스워드를 발급받은 사업자를 말합니다.</dd>

								<dt>제3조 (약관의 명시와 개정)</dt>
								<dd>① "몰"은 이 약관의 내용과 상호, 영업소 소재지, 대표자의 성명, 사업자 등록번호,
									연락처(전화, 팩스, 전자우편 주소 등) 등을 이용자가 알 수 있도록 서울문고 리드북스의 온라인 홈페이지 초기
									서비스화면(전면)에 게시합니다. 다만, 약관의 내용은 이용자가 연결화면을 통하여 볼 수 있도록 할 수 있습니다.
									② "몰"은 이용자가 약관에 동의하기에 앞서 약관에 정하여져 있는 내용 중 청약철회, 배송책임, 환불조건 등과
									같은 중요한 내용을 이용자가 이해할 수 있도록 별도의 연결화면 또는 팝업화면 등을 제공하여 이용자의 확인을
									구하여야 합니다. ③ 본 약관은 약관의 규제 등에 관한 법률, 전자거래기본법, 전자서명법, 정보통신망 이용촉진
									등에 관한 법률, 방문판매 등에 관한 법률, 소비자보호법 등 관련법을 위배하지 않는 범위에서 개정할 수 있습니다.
									④ 본 약관을 개정할 경우, 적용일자 및 개정사유를 명시하여 현행약관과 함께 "몰"의 초기화면에 적용일자 7일
									이전부터 적용일자 전일까지 공지합니다. 다만, 이용자에게 불리하게 약관내용을 변경하는 경우에는 최소한 30일
									이상의 사전 유예기간을 두고 공지합니다. 이 경우 "몰"은 개정전 내용과 개정후 내용을 명확하게 비교하여 이용자가
									알기 쉽도록 표시합니다. ⑤ 본 약관을 개정할 경우에는 그 개정약관은 그 적용일자 이후에 체결되는 계약에만
									적용되고 그 이전에 이미 체결된 계약에 대해서는 개정전의 약관조항이 그대로 적용됩니다. 다만 이미 계약을 체결한
									이용자가 개정약관 조항의 적용을 받기를 원하는 뜻을 제3항에 의한 개정약관의 공지기간 내에 "몰"에 송신하여
									"몰"의 동의를 받은 경우에는 개정약관조항이 적용됩니다. ⑥ 본 약관에서 명시하지 않은 사항과 본 약관의 해석에
									관하여는 대한민국의 관계법령, 또는 상관례에 따릅니다.</dd>
							</dl>

						</div>
					</div>
					<div class="agreementchbox">
						<input type="checkbox" id="agreementch1" name="agreementch">
						<label for="agreementch1">리드북스 이용약관에 동의합니다.</label>

					</div>
				</div>
				<div class="agreement">
					<div class="agreementheader">
						<h4>개인정보 처리 방침 동의</h4>
					</div>
					<div>
						<div
							style="border: 1px solid #5fc5c5; overflow: scroll; width: 670px; height: 281px; overflow-x: hidden;">
							<dl>
								<dt>㈜리드북스 리드북스가 운영하는 온/오프라인 매장(이하 “리드북스”)은 개인정보 처리방침을 당사
									홈페이지(http://www.readbooks.com) 첫 화면에 공개함으로써 귀하께서 언제나 쉽게 보실 수
									있도록 조치하고 있습니다. 본 개인정보처리방침은 관련 법령, 지침 및 당사 내부 방침의 변경, 그 밖의 합리적인
									사유에 따라 변경될 수 있사오니 회원 가입 시 또는 사이트 방문 시 수시로 확인하시기 바랍니다.</dt>
								<br>
								<dt>* 용어의 정의</dt>
								<dd>본 개인정보처리방침에서의 사용되는 용어의 정의는 다음과 같습니다. 1. "리드북스"라 함은 리드북스
									온라인 매장(http://www.readbooks.com)이 재화 또는 용역을 이용자에게 제공하기 위하여 컴퓨터
									등 정보통신설비를 이용하여 재화 또는 용역을 거래할 수 있는 영업장을 말하며, 아울러 온라인 매장을 운영하는
									사업자들의 의미로도 사용합니다. 2. "이용자"라 함은 "리드북스"에 접속하여 이 약관에 따라 리드북스가 제공하는
									서비스를 받는 회원 및 비회원을 말합니다. 3. "회원"이라 함은 ""리드북스"에 개인정보를 제공하여 회원등록을
									한 자로서, 온/오프라인 매장 중 어느 곳에서 가입했느냐와 상관없이 온/오프라인 회원 모두를 의미합니다. 4.
									"비회원"이라 함은 회원에 가입하지 않고 "리드북스"가 제공하는 서비스를 이용하는 자를 말합니다.</dd>
								<br>
								<dt>1. 개인정보의 수집 항목 및 목적</dt>
								<dd>(1) "리드북스"는 상거래 및 이와 관련한 다양한 서비스를 이용자들의 특성, 기호에 맞추어
									제공하고 이용자가 "리드북스"의 서비스를 이용함에 따라 일어나는 문제를 해결하기 위해 일부 한정된 범위 안에서
									개인정보를 수집하고 있습니다.</dd>
								<br>
								<dt>2. 개인정보 수집방법</dt>
								<dd>“리드북스”는 홈페이지(회원가입, 비회원 주문, 1:1 상담) 및 고객센터 ARS전화,
									제휴사로부터의 제공 등을 통해 개인정보를 수집하고 있습니다.</dd>
								<br>
								<dt>3. 개인정보수집에 대한 동의</dt>
								<dd>(1) "리드북스"는 회원가입시 '서비스 이용약관'과 '개인정보처리방침'에 동의하는 절차를 마련하고
									있으며, 동의의 의사표시가 없으면 회원으로 가입하실 수 없습니다. (2) 이용자는 개인정보 수집에 대한 동의에
									거부하실 수 있는 권리가 있으며, 거부 시에는 제공하는 혜택에 제한이 있을 수 있습니다. (3) 만14세 미만
									아동 개인정보 수집을 위해 법정 대리인 동의여부, 추후 법정 대리인 본인확인이 필요합니다.</dd>
							</dl>
						</div>

					</div>
					<div class="agreementchbox">
						<input type="checkbox" id="agreementch2" name="agreementch">
						<label for="agreementch2">개인정보 처리 방침에 동의합니다.</label>
					</div>
					<div class="totalagree">
						<input type="checkbox" id="agreementtotalch"
							name="agreementtotalch"><label for="agreementtotalch">모든
							약관을 확인하고 전체동의합니다.</label><br> <input type="button"
							class="btn btn-default" id="agreementbtn" value="다음"
							style="padding: 6px 20px; font-size: 13px; margin-left: 145px; margin-top: 10px;">
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
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>