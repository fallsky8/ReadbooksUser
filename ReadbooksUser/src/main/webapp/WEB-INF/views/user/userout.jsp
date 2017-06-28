<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<title>회원탈퇴</title>
<script type="text/javascript">
	$(function() {
		$("#useroutbtn").click(function() {
			$("#useroutform").attr({
				"method" : "POST",
				"action" : "/userOut.do"
			});
			$("#useroutform").submit();
		});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="#" class="menu-item">마이페이지</a> <a href="#"
					class="menu-item">회원정보관리</a> <a href="#" class="menu-item">&nbsp;&nbsp;&nbsp;-개인정보관리</a>
				<a href="/useroutpage.do" class="menu-item">&nbsp;&nbsp;&nbsp;-회원탈퇴</a>
				<a href="#" class="menu-item">주문내역</a> <a href="/mylistGet.do" class="menu-item">마이리스트</a>
			</div>
			<h2>회원탈퇴</h2>
			<hr>
			<p>
				그 동안 <b>리드북스 온라인 서점</b>을 이용해 주셔서 감사합니다.<br> 서비스 이용 시 불편하셨던 점이나
				불만사항을 알려주시면 적극 수렴하여 향후 개선에 최선을 다하도록 하겠습니다.<br> <br> <b>아울러
					회원 탈퇴 전 아래내용을 숙지해 주시기 바랍니다.</b>
			</p>
			<br>

			<h3>회원탈퇴 안내</h3>
			<ul>
				<li><p>
						회원 탈퇴 시 고객님의 회원정보는 전자상거래 상에서의 소비자보호 법률에 의거한 리드북스 개인정보보호정책에<br>따라
						관리됩니다.
					</p></li>
				<li><p>진행중인 거래(구매/배송)내역이 있는 경우는 회원탈퇴가 불가능 하오니, 거래 종료 후 회원
						탈퇴가 가능합니다.</p></li>
				<li>
					<p>회원탈퇴 시 회원 정보는 자동으로 삭제되며, 탈퇴 후 한 달 동안은 재가입이 불가능합니다. 또한 재가입 시에
						기존 ID로는 이용하실 수 없습니다.</p>
				</li>
			</ul>
			<br>

			<h3>회원탈퇴 사유</h3>
			<form id="useroutform">
				<input type="hidden" id="user_id" name="user_id"
					value="${sessionScope.user_id }"> <input type="radio"
					id="reason1" value="상품품질 불만" name="user_outreason"><label
					for="reason1">상품품질 불만</label> <input type="radio" id="reason2"
					value="교환/환불/품질 불만" name="user_outreason"><label
					for="reason2">교환/환불/품질 불만</label><input type="radio" id="reason3"
					value="쇼핑몰 속도 불만" name="user_outreason"><label
					for="reason3">쇼핑몰 속도 불만</label> <input type="radio" id="reason4"
					value="이용빈도 낮음" name="user_outreason"><label for="reason4">이용빈도
					낮음</label><br> <input type="radio" id="reason5" value="배송지연"
					name="user_outreason"><label for="reason5">배송지연</label> <input
					type="radio" id="reason6" value="A/S 불만" name="user_outreason"><label
					for="reason6">A/S 불만</label> <input type="radio" id="reason7"
					value="개인정보 유출 우려" name="user_outreason"><label
					for="reason7">개인정보 유출 우려</label> <input type="radio" id="reason8"
					value="당사 사유" name="user_outreason"><label for="reason8">당사
					사유</label> <input type="radio" id="reason9" value="기타"
					name="user_outreason"><label for="reason9">기타</label><br>
				<input type="button" class="btn btn-default" value="회원탈퇴"
					id="useroutbtn">
			</form>
		</article>
		<aside>
			<div id="serviceWrap">
				<div class="ss_myshop">
					<a href="#"><span>주요서비스</span></a>
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
					<a href="#"><span>주문내역</span></a>
				</div>
			</div>
		</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>