<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@  taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="https://netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css"
	rel="stylesheet">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700,600'
	rel='stylesheet' type='text/css'>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />


<style type="text/css">
* {
	box-sizing: border-box;
	-webkit-box-sizing: border-box;
	-moz-box-sizing: border-box;
}

body {
	padding: 0;
	margin: 0;
}

img {
	max-width: 100%;
}

#wrap {
	width: 90%;
	margin: 20px auto;
	font-size: 12px !important;
	font-family: "HelveticaNeue", "Helvetica Neue", Helvetica, Arial,
		sans-serif !important;
}

#accordian {
	width: 100%;
}

#accordian .number {
	width: 50px;
	height: 50px;
	background: #fff;
	color: #888;
	font-size: 36px;
	text-align: center;
	border-radius: 50%;
	float: left;
}

#accordian .step {
	width: 100%;
	height: 63px;
	background: #5fc5c5;
	color: #FFF;
	padding-left: 1%;
	padding-top: 5px;
	border-bottom: 3px solid #d9d9d9;
	border-radius: 2px;
	float: left;
}

#accordian .title {
	float: left;
	width: 80%;
	height: 50px;
	margin-left: 1%;
	font-size: 1em;
	font-weight: 300;
}

#accordian .title h1 {
	font-size: 2em;
	font-weight: 400;
	margin-top: 10px;
}

#accordian .modify {
	float: left;
	width: 40px;
	height: 40px;
	color: #aaa;
	background: #FFF;
	text-align: center;
	font-size: 3em;
	border-radius: 50%;
	margin-top: 5px;
	padding-top: 0px;
	cursor: pointer;
}

#accordian .modify i {
	margin-top: 0px;
	display: block;
}

#accordian .content {
	padding: 1.3em 1.3em;
	width: 100%;
	margin: 0 auto;
	background: #FFF;
	height: auto;
	display: block;
	float: left;
}

#accordian .content label {
	font-size: 1.3em;
}

#accordian .content input {
	padding: 10px 15px;
	border: 1px solid #ccc;
	border-radius: 3px;
	display: inline-block;
	font-size: 2em;
}

#accordian .content button {
	display: block;
	float: right;
	background: #5fc5c5;
	width: 200px;
	border: 0;
	padding: 5px 15px;
	font-size: 1.6em;
	color: #FFF;
	border-bottom: 3px solid #4da7ff;
	border-radius: 2px;
	clear: both;
}

#accordian .content .continue {
	display: block;
	float: right;
	background: #5fc5c5;
	width: 200px;
	border: 0;
	padding: 5px 15px;
	font-size: 1.6em;
	color: #FFF;
	border-bottom: 3px solid #4da7ff;
	border-radius: 2px;
	clear: both;
	text-align: center;
	text-decoration: none;
	margin-top: 15px;
}

#accordian .content .postcode {
	display: block;
	float: right;
	background: #5fc5c5;
	width: 200px;
	border: 0;
	padding: 5px 15px;
	font-size: 1.6em;
	color: #FFF;
	border-bottom: 3px solid #4da7ff;
	border-radius: 2px;
	clear: both;
	text-align: center;
	text-decoration: none;
	margin-top: 15px;
}

#accordian #address label {
	width: 100px;
	display: inline-block;
}

#accordian .select {
	width: 100%;
	overflow: hidden;
	border: 1px solid #ccc;
	border-radius: 2px;
	display: inline-block;
	margin-left: 0;
	margin-bottom: 5px;
	margin-top: 5px;
	border: 1px solid #ccc;
	border-radius: 3px;
	display: inline-block;
}

#accordian .country_options label, #accordian .state_options label {
	background: #5fc5c5;
	color: white;
	padding: 4px 6px;
	z-index: 2;
	text-transform: uppercase;
	top: 5px;
	right: 100%;
	width: 100%;
	margin-right: -100%;
	bottom: 8px;
	border-bottom-right-radius: 3px;
	border-top-right-radius: 3px;
}

#accordian .state_options select, #accordian .country_options select {
	background: transparent;
	display: inline-block;
	width: 100%;
	padding: 5px;
	font-size: 2em;
	line-height: 1;
	border: 0;
	border-radius: 0;
	height: 40px;
}

#accordian #address label.state, #accordian #address label.country {
	display: block;
	float: left;
}

#accordian #address input[type="checkbox"] {
	width: 30px;
}

#accordian #address label.same, div.go-right input:focus+label.same {
	width: 300px;
	padding: 0 30px;
	margin-right: 0;
	top: 0;
	left: 30px;
	background: transparent;
	color: initial;
	text-transform: uppercase;
}

#accordian #shipping input[type="radio"] {
	width: 30px;
}

#accordian #shipping div {
	margin-top: 5px;
}

#accordian #shipping label {
	padding: 0;
}

#accordian #shipping .price {
	text-align: center;
	display: inline-block;
}

#accordian #payment #card_number {
	width: 100%;
}

#accordian .left, #accordian .right {
	width: 50%;
	float: left;
}

#accordian #payment label {
	display: inline-block;
}

#accordian #payment .expiry {
	margin-top: 5px;
}

#accordian #payment label.exp_date {
	margin-right: 0;
	background: #5fc5c5;
	color: white;
	padding: 4px 6px;
	z-index: 2;
	text-transform: uppercase;
	right: 100%;
	width: 100%;
	margin-right: -100%;
	border-bottom-right-radius: 3px;
	border-top-right-radius: 3px;
	width: 70px;
	height: 40px;
	top: 5px;
}

#accordian #payment label.card_status {
	margin-right: 0;
	background: #5fc5c5;
	color: white;
	padding: 4px 6px;
	z-index: 2;
	text-transform: uppercase;
	right: 100%;
	width: 100%;
	margin-right: -100%;
	border-bottom-right-radius: 3px;
	border-top-right-radius: 3px;
	width: 70px;
	height: 40px;
	top: 5px;
}

#accordian #payment .month_select, #accordian #payment .year_select {
	width: 100px;
	height: 40px;
	border: 1px solid #ccc;
	border-radius: 2px;
	display: inline-block;
}

#accordian #payment span.divider {
	font-size: 2em;
	display: inline-block;
	padding-left: 5px;
	padding-right: 5px;
	margin-top: -10px;
}

#accordian .month_select select, #accordian .year_select select {
	background: transparent;
	display: inline-block;
	width: 100%;
	padding: 5px;
	font-size: 2em;
	line-height: 1;
	border: 0;
	border-radius: 0;
	height: 40px;
}

#accordian #payment .sec_num, #accordian #payment .expiry {
	display: block;
	float: left;
}

#accordian #payment .sec_num {
	margin-top: 5px;
}

#accordian .credit_card {
	padding: 3em 1em;
}

#accordian .accepted {
	width: 100%;
	padding-right: 1em;
	padding-left: 1em;
	margin-top: 30px;
}

#accordian .accepted span {
	display: table-cell;
	padding: 3px;
}

#accordian .secured {
	margin-top: 5px;
	padding-left: 1em;
	padding-right: 1em;
}

#accordian .secured .lock {
	float: left;
	padding: 3px;
	width: 25%;
}

#accordian .secured .security {
	float: left;
	margin-right: 5px;
	font-style: italic;
	color: #aaa;
	width: 70%;
}

#accordian #ordered {
	padding-right: 1em;
}

#accordian #reviewed {
	padding-left: 1em;
}

#accordian .products {
	width: 100%;
	float: left;
	padding-bottom: 3px;
	border-bottom: 3px solid #aaa;
}

#accordian .products .product_image {
	width: 20%;
	float: left;
	margin-left: 10%;
}

#accordian .products .product_details {
	width: 70%;
	display: table;
	vertical-align: middle;
}

#accordian .products .product_details span {
	display: table-cell;
	vertical-align: middle;
	margin-top: 30%;
	font-size: 1.5em;
	color: #aaa;
}

#accordian .totals {
	width: 100%;
	float: left;
	border-bottom: 3px solid #aaa;
}

#accordian .totals .subtitle {
	font-size: 2em;
	display: block;
	text-align: right;
	color: #aaa;
	width: 95%;
	margin-right: 5%;
}

#accordian .totals .subtitle .sub_price {
	font-style: italic;
	width: 100px;
}

#accordian .final {
	width: 100%;
	float: left;
	font-size: 2.2em;
	text-align: right;
	color: #888;
}

#accordian .final .title {
	width: 95%;
	margin-right: 5%;
	font-weight: bold;
}

#accordian #reviewed .title {
	width: 49%;
	font-size: 1.8em;
	float: left;
}

#accordian #reviewed .billing, #accordian #reviewed .shipping {
	width: 100%;
	float: left;
	margin-bottom: 5px;
}

#accordian #reviewed .billing .address_reviewed, #accordian #reviewed .shipping .address_reviewed,
	#accordian #reviewed .payment .payment_reviewed {
	color: #aaa;
	font-size: 1.2em;
	height: 100px;
	width: 50%;
	float: left;
}

#accordian #reviewed .billing .address_reviewed span, #accordian #reviewed .shipping .address_reviewed span,
	#accordian #reviewed .payment .payment_reviewed span {
	display: block;
}

#accordian #reviewed #complete {
	float: left;
	width: 100%;
	padding-top: 5px;
	border-top: 1px dotted #aaa;
}

#accordian #reviewed .big_button {
	clear: both;
	display: block;
	width: 70%;
	margin: 0 auto;
	padding-top: 15px;
	padding-bottom: 10px;
	color: #fff;
	font-size: 2em;
	text-decoration: none;
	background: #5fc5c5;
	text-align: center;
	border-bottom: 3px solid #4da7ff;
	border-radius: 2px;
}

#accordian #reviewed #complete .sub {
	color: #aaa;
	display: block;
	text-align: center;
	margin-top: 15px;
	width: 80%;
	margin: 5px auto;
}

@media ( max-width :768px) {
	#accordian .left, #accordian .right {
		width: 100%;
		float: left;
	}
}

div.go-right>div {
	position: relative;
	overflow: hidden;
	width: 100%;
	max-width: 650px;
}

div.go-right input, div.go-right textarea {
	width: 100%;
	max-width: 650px;
	border: 2px solid gray;
	background: none;
	position: relative;
	top: 0;
	left: 0;
	z-index: 1;
	padding: 8px 12px;
	outline: 0;
}

form input:valid, form textarea:valid {
	background: white;
}

div.go-right input:focus, div.go-right textarea:focus {
	border-color: #f06d06;
}

div.go-right input:focus+label, div.go-right textarea:focus+label {
	background: #5fc5c5;
	color: white;
	font-size: 70%;
	padding: 1px 6px;
	z-index: 2;
	text-transform: uppercase;
}

div.go-right label {
	transition: background 0.4s, color 0.4s, top 0.4s, bottom 0.4s, right
		0.4s, left 0.4s;
	position: absolute;
	color: #999;
	padding: 7px 6px;
}

div.go-right textarea {
	display: block;
	resize: vertical;
}

div.go-right label {
	top: 2px;
	right: 100%;
	width: 100%;
	margin-right: -100%;
	bottom: 2px;
	border-bottom-right-radius: 3px;
	border-top-right-radius: 3px;
}

div.go-right input:focus+label, div.go-right textarea:focus+label {
	right: 0;
	margin-right: 0;
	width: 40%;
	padding-top: 5px;
}

@media screen and (max-width:600px) {
	#accordian #address label {
		display: none;
	}
	#accordian #address input[type=checkbox] {
		outline: none;
		width: 90%;
		height: 35px;
		font-size: 12px;
		line-height: 2;
		display: block;
		font-weight: bold;
		border: 1px solid #e6e6e6;
		-webkit-appearance: none;
		color: #FFFFFF;
		cursor: pointer;
		border-radius: 15px;
		transform: scale(1);
		-webkit-transform: scale(1);
		transition: all .3s ease-out;
		padding: 0;
	}
	#accordian #address input[type=checkbox]:checked {
		color: #fff;
		background: #FFF;
		border-radius: 15px;
	}
	#accordian #address input[type=checkbox]:before {
		content: '다른 주소를 배송지로';
		width: 50%;
		height: 100%;
		padding-top: 3px;
		display: inline-block;
		text-indent: 13px;
		background: #5fc5c5;
		border-radius: 15px;
		transition: all 0.1s ease-in .1s;
	}
	#accordian #shipping input[type="radio"] {
		outline: 0;
	}
	#accordian #address input[type=checkbox]:checked:before {
		content: '저장된 주소로 배송';
		text-indent: 7px;
		margin-left: 50%;
		background: #5fc5c5;
		border-radius: 15px;
	}
	#accordian #shipping input[type=radio]:checked {
		box-shadow: inset 0px 0px 0px 20px #5fc5c5;
	}
	#accordian #shipping input[type=radio]:after {
		content: '';
		position: absolute;
		width: 29px;
		height: 29px;
		border-radius: 15px;
		box-shadow: 0px 2px 2px 1px rgba(0, 0, 0, .2);
		cursor: pointer;
		background-color: #fff;
		transition: all 0.1s ease-in .1s;
	}
	#accordian #shipping input[type="radio"]:checked:after {
		left: 22px;
	}
	#accordian #shipping input[type=radio] {
		appearance: none;
		-webkit-appearance: none;
		box-shadow: inset 0px 0px 0px 1px #e6e6e6;
		border-radius: 15px;
		background-color: #fff;
		padding: 1px;
		display: inline-block;
		width: 52px;
		height: 31px;
		position: relative;
		cursor: pointer;
		transition: all .3s ease-out;
		margin: 0px;
		transform: scale(1);
		-webkit-transform: scale(1);
	}
}
</style>
<script type="text/javascript">
	$(document).ready(function() {

		changeTotal();
		function changeTotal() {
			var price = 0;
			var qt = 0;
			$(".full-price").each(function(index) {
				price += parseFloat($(".full-price").eq(index).html());
			});
			$(".qt").each(function(index) {
				qt += parseFloat($(".qt").eq(index).html());
			});

			price = Math.round(price * 100) / 100;
			var discount = Math.round(price * 10) / 100;
			var fullPrice = Math.round((price - discount) * 100) / 100;

			if (price == 0) {
				fullPrice = 0;
			}

			$(".subtitle #quantity").html(qt);
			$(".subtitle #subtotal").html(price);
			$(".subtitle #discount").html(discount);
			$(".final #total").html(fullPrice);

		}
	});

	$(function() {
		//카드정보
		function cardInfo() {
			var cardnumber = $("#card_number").val();
			var cardcompany = $("#card_status").val();
			$("div.payment_reviewed .number_hidden").html(cardnumber);
			$("div.payment_reviewed .method").html(cardcompany);
		}
		$("#card_check").click(function() {
			cardInfo();
		});

		// 		$("#complete").click(function() {
		// 			$("#orderform").attr({
		// 				"method" : "POST",
		// 				"action" : "/orderInsert.do"
		// 			});
		// 			$("#orderform").submit();
		// 		});
		//1번 구매자정보 계속버튼 클릭시
		$(".continue").click(function() {
			var book_number = parents.find(".book_number").text();
			alert(book_number + "북넘버");
		});
	});

	function Postcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('recipient_address').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('recipient_address').value = data.zonecode
								+ fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('recipient_address').focus();
					}
				}).open();

	}
</script>
<title>주문 목록</title>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="wrap">
		<div id="accordian">
			<form:form modelAttribute="orderForm" method="POST"
				action="/orderInsert.do">

				<!-- 			주문정보 확인 시작 -->
				<div class="step" id="step1">
					<div class="number">
						<span>1</span>
					</div>
					<div class="title">
						<h1>구매자 정보</h1>
					</div>

				</div>
				<div class="content" id="address">
					<div class="go-right">
						<div>
							<input type="text" value="${orderUserGet.user_name }"
								id=order_orderer name="order_orderer" placeholder="홍길동"
								data-trigger="change" data-validation-minlength="1"
								data-type="order_orderer" data-required="true"
								data-error-message="필수 기입 사항입니다" /><label for="user_name">주문자</label>
						</div>
						<div>
							<input type="tel" name="order_phonenumber" value="010"
								id="order_phonenumber" placeholder="010-xxxx-xxxx"
								data-trigger="change" data-validation-minlength="1"
								data-type="number" data-required="true"
								data-error-message="필수 기입 사항입니다" /><label
								for="order_phonenumber">연락처</label>
						</div>
						<div>
							<input type="text" name="order_address"
								value="${orderUserGet.user_address }" id="order_address"
								placeholder="구매자 주소" data-trigger="change"
								data-validation-minlength="1" data-type="text"
								data-required="true" data-error-message="필수 기입 사항입니다" /><label
								for="order_address">주소</label>
						</div>
						<div>
							<input type="checkbox" /> <label class="same"
								for="same_as_shipping">이 주소를 배송지로 설정합니다</label><span></span>
						</div>
						<input type="button" class="continue" id="copy_address" value="계속">
					</div>
				</div>

				<!-- 			받는분 정보              -->
				<div class="step" id="step2">
					<div class="number">
						<span>2</span>
					</div>
					<div class="title">
						<h1>받는분 정보</h1>
					</div>

				</div>
				<div class="content" id="address">
					<div class="go-right">
						<div>
							<input type="text" name="order_recipient" id="order_recipient"
								placeholder="홍길동" data-trigger="change"
								data-validation-minlength="1" data-type="order_recipient"
								data-required="true" data-error-message="필수 기입 사항입니다" /><label
								for="order_recipient">받는분</label>
						</div>

						<div>
							<input type="tel" name="order_recipientphonenumber" value="010"
								id="order_recipientphonenumber" placeholder="연락처를 입력해주세요"
								data-trigger="change" data-validation-minlength="1"
								data-type="number" data-required="true"
								data-error-message="필수 기입 사항입니다" /><label
								for="order_recipientphonenumber">연락처</label>
						</div>
						<div>
							<input type="text" name="order_receiptaddress"
								id="order_receiptaddress" placeholder="받으실 주소를 입력해주세요"
								data-trigger="change" data-validation-minlength="1"
								data-type="text" data-required="true"
								data-error-message="필수 기입 사항입니다" /><label
								for="recipient_address">주소</label>
						</div>
						<input type="button" onclick="Postcode()" class="postcode"
							value="주소 찾기"> <input type="button" class="continue"
							value="계속">
					</div>
				</div>
				<!-- 			받는분 정보  끝            -->
				<!-- 			결제 정보  시작            -->
				<div class="step" id="step3">
					<div class="number">
						<span>3</span>
					</div>
					<div class="title">
						<h1>결제 정보</h1>
					</div>

				</div>
				<!-- 				<div class="content" id="payment"> -->
				<!-- 					<div class="left credit_card"> -->
				<!-- 						<div class="go-right"> -->
				<!-- 							<div> -->
				<!-- 								<input type="text" name="card_number" value="" id="card_number" -->
				<!-- 									placeholder="xxxx-xxxx-xxxx-xxxx" data-trigger="change" -->
				<!-- 									data-validation-minlength="1" data-type="name" -->
				<!-- 									data-required="true" data-error-message="카드번호를 입력해 주세요" /><label -->
				<!-- 									for="card_number">카드 번호</label> -->
				<!-- 							</div> -->
				<!-- 							<div> -->
				<!-- 								<div class="expiry"> -->
				<!-- 									<div class="month_select"> -->
				<!-- 										<select name="exp_month" id="exp_month" data-trigger="change" -->
				<!-- 											data-type="name" data-required="true" -->
				<!-- 											data-error-message="카드 만료날짜를 입력하세요"> -->
				<!-- 											<option value="1">01 (Jan)</option> -->
				<!-- 											<option value="2">02 (Feb)</option> -->
				<!-- 											<option value="3">03 (Mar)</option> -->
				<!-- 											<option value="4">04 (Apr)</option> -->
				<!-- 											<option value="5">05 (May)</option> -->
				<!-- 											<option value="6">06 (Jun)</option> -->
				<!-- 											<option value="7">07 (Jul)</option> -->
				<!-- 											<option value="8">08 (Aug)</option> -->
				<!-- 											<option value="9">09 (Sep)</option> -->
				<!-- 											<option value="10">10 (Oct)</option> -->
				<!-- 											<option value="11">11 (Nov)</option> -->
				<!-- 											<option value="12">12 (Dec)</option> -->
				<!-- 										</select> -->
				<!-- 									</div> -->
				<!-- 									<span class="divider">-</span> -->
				<!-- 									<div class="year_select"> -->
				<!-- 										<select name="exp_year" value="" id="exp_year" placeholder="" -->
				<!-- 											data-trigger="change" data-type="name" data-required="true" -->
				<!-- 											data-error-message="카드 만료날짜를 입력하세요 "> -->
				<!-- 											<option value="1">17 년</option> -->
				<!-- 											<option value="2">18 년</option> -->
				<!-- 											<option value="3">19 년</option> -->
				<!-- 											<option value="4">20 년</option> -->
				<!-- 											<option value="5">21 년</option> -->
				<!-- 											<option value="6">22 년</option> -->
				<!-- 											<option value="7">23 년</option> -->
				<!-- 											<option value="8">24 년</option> -->
				<!-- 											<option value="9">25 년</option> -->
				<!-- 											<option value="10">26 년</option> -->
				<!-- 											<option value="11">27 년</option> -->
				<!-- 											<option value="12">28 년</option> -->
				<!-- 										</select> -->
				<!-- 									</div> -->
				<!-- 								</div> -->
				<!-- 								<label class="exp_date" for="Exp_Date">유효기간</label> -->
				<!-- 							</div> -->
				<!-- 							<div class="sec_num"> -->
				<!-- 								<div> -->
				<!-- 									<input type="text" name="cvc" value="" id="cvc" -->
				<!-- 										placeholder="556" data-trigger="change" -->
				<!-- 										data-validation-minlength="3" data-type="name" -->
				<!-- 										data-required="true" data-error-message="카드 뒷면의 CVC코드를 입력하세요" /> -->
				<!-- 									<label for="cvc">CVC</label> -->
				<!-- 								</div> -->
				<!-- 							</div> -->

				<!-- 						</div> -->
				<!-- 					</div> -->
				<!-- 										<div class="right"> -->
				<!-- 											<div class="accepted"> -->
				<!-- 												<span><img src="https://i.imgur.com/Z5HVIOt.png"></span> <span><img -->
				<!-- 													src="https://i.imgur.com/Le0Vvgx.png"></span> <span><img -->
				<!-- 													src="https://i.imgur.com/D2eQTim.png"></span> <span><img -->
				<!-- 													src="https://i.imgur.com/Pu4e7AT.png"></span> <span><img -->
				<!-- 													src="https://i.imgur.com/ewMjaHv.png"></span> <span><img -->
				<!-- 													src="https://i.imgur.com/3LmmFFV.png"></span> -->
				<!-- 											</div> -->
				<!-- 											<div class="secured"> -->
				<!-- 												<img class="lock" src="https://i.imgur.com/hHuibOR.png"> -->
				<!-- 												<p class="security info">보안관련</p> -->
				<!-- 											</div> -->
				<!-- 										</div> -->
				<!-- 										<button id="card_check">카드 확인</button> -->

				<!-- 				</div> -->
				<!-- 			결제 정보  끝          -->
				<!-- 			주문정보 확인 시작 -->
				<div class="step" id="step4">
					<div class="number">
						<span>4</span>
					</div>
					<div class="title">
						<h1>주문 정보 확인</h1>
					</div>

				</div>
				<div class="content" id="final_products">
					<div class="left" id="ordered">


						<!-- 				상품시작  -->
						<c:forEach var="orderlist" items="${orderForm.orderdtos}"
							varStatus="status">
							<div class="products">
								<div class="product_image">
									<img src="/resources/image/${orderlist.book_image}">
								</div>
								<div class="product_details">
									<input type="hidden"
										name="orderlist[${status.index }].book_number"
										value="${orderlist.book_number}"> <span
										class="book_name">${orderlist.book_name}</span> <span
										class="qt">${orderlist.cart_buyquantity} 개 </span> <span
										class="full-price">${orderlist.book_price * orderlist.cart_buyquantity}
										원</span>
								</div>
							</div>
						</c:forEach>


						<!-- 					상품끝  -->

						<div class="totals">
							<span class="subtitle">원가 합계 <span id="subtotal"> </span>원
							</span> <span class="subtitle">할인(10%)<span id="discount">
							</span>원
							</span> <span class="subtitle"> 수량 총합 :<span id="quantity">
							</span> 개
							</span>
						</div>
						<div class="final">
							<span class="title">총 합계 <span id="total"> </span>원
							</span>
						</div>

					</div>


					<div class="right" id="reviewed">
						<div class="billing">
							<span class="title">구매자 정보 :</span>
							<div class="address_reviewed">
								<span class="name"></span> <span class="address"></span> <span
									class="phone"></span>
							</div>
						</div>
						<div class="shipping">
							<span class="title">배송지 정보:</span>
							<div class="address_reviewed">
								<span class="name"></span> <span class="address"></span> <span
									class="phone"></span>
							</div>
						</div>
						<!-- 						<div class="payment"> -->
						<!-- 							<span class="title">결제정보 : </span> -->
						<!-- 							<div class="payment_reviewed"> -->
						<!-- 								<span class="method">Visa</span> <span class="number_hidden">xxxx-xxxx-xxxx-1111</span> -->
						<!-- 							</div> -->
						<!-- 						</div> -->
						<div class="requirement">
							<span class="title">요구사항 </span>
							<div class="payment_reviewed">

								<input type="text" placeholder="배송 시 문자 주세요 "
									id="order_requirement" name="order_requirement" value="ㅁㄴㅇ">
							</div>
						</div>

					</div>
					<div id="complete">
						<input type="submit" class="big_button" id="complete" value="주문완료"><span
							class="sub">결제정보 동의</span>
					</div>
					<!-- 			주문정보 확인 끝-->
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>