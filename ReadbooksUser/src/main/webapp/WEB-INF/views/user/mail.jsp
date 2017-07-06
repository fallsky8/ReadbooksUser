<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>메일 인증</title>
<link rel="shortcut icon" href="/resources/image/favicon.ico">

<link rel="stylesheet" href="/resources/css/swipers.css" type="text/css"
	media="screen" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link
	href='https://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Gafata|Nobile:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>

<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<style type="text/css">
html {
	overflow-x: hidden;
	overflow-y: hidden;
	overflow: hidden;
}

#wrapper #box input {
	outline: none;
}

#wrapper {
	width: 100%;
	height: 100%;
	margin: 0 auto;
}

#box {
	width: 345px;
	height: 450px;
	background-color: #fff;
	margin: 0 auto;
	-webkit-border-radius: 4px;
	-o-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 3px;
}

#top_header {
	width: 100%;
	margin: 0;
	padding-top: 45px;
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

#top_header>h5 {
	text-align: center;
	font-family: 'Roboto', sans-serif;
	font-size: 15px;
	font-weight: 300;
	color: #5fc5c5;
	line-height: 1.6;
	margin: 0;
	padding: 15px 0;
	color: #555;
	-webkit-text-stroke: 0.2px;
}

#inputs {
	width: 100%;
	height: 100%;
	margin: 0 auto;
	position: relative;
}

#inputs #findid, #inputs #findpw {
	width: 300px;
	height: 55px;
	position: relative;
	margin: 0 auto;
	display: block;
	margin-bottom: -10px;
	padding: 15px;
	box-sizing: border-box;
	-webkit-text-stroke: 0.1px;
}

#findid, #findpw {
	color: #5fc5c5;
	background-color: #fff;
	border: 1px solid #5fc5c5;
	border-radius: 5px;
	font-family: 'Roboto', sans-serif;
	font-weight: 300;
	font-size: 16px;
	transition: all .3s ease;
	margin-top: 0px;
	cursor: pointer;
}

.btn-info {
	border-color: #46b8da;
	color: #fff;
	background-color: #5bc0de;
	margin-left: 30px !important;
}

.btn-info.focus, .btn-info:focus {
	color: #fff;
	background-color: #31b0d5;
	border-color: #1b6d85
}

.btn-info:hover {
	color: #fff;
	background-color: #31b0d5;
	border-color: #269abc
}

.btn-info.active, .btn-info:active, .open>.dropdown-toggle.btn-info {
	color: #fff;
	background-color: #31b0d5;
	border-color: #269abc
}

.btn-info.active.focus, .btn-info.active:focus, .btn-info.active:hover,
	.btn-info:active.focus, .btn-info:active:focus, .btn-info:active:hover,
	.open>.dropdown-toggle.btn-info.focus, .open>.dropdown-toggle.btn-info:focus,
	.open>.dropdown-toggle.btn-info:hover {
	color: #fff;
	background-color: #269abc;
	border-color: #1b6d85
}

.btn-info.active, .btn-info:active, .open>.dropdown-toggle.btn-info {
	background-image: none
}

.btn-info.disabled.focus, .btn-info.disabled:focus, .btn-info.disabled:hover,
	.btn-info[disabled].focus, .btn-info[disabled]:focus, .btn-info[disabled]:hover,
	fieldset[disabled] .btn-info.focus, fieldset[disabled] .btn-info:focus,
	fieldset[disabled] .btn-info:hover {
	background-color: #5bc0de;
	border-color: #46b8da
}

.btn-info .badge {
	color: #5bc0de;
	background-color: #fff
}

.btn {
	padding: 6px 12px;
	font-size: 14px;
	font-weight: 400;
	line-height: 1.42857143;
	white-space: nowrap;
	vertical-align: middle;
	-ms-touch-action: manipulation;
	touch-action: manipulation;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
	background-image: none;
	border: 1px solid transparent;
	border-radius: 4px;
}

.btn.active.focus, .btn.active:focus, .btn.focus, .btn:active.focus,
	.btn:active:focus, .btn:focus {
	outline: 5px auto -webkit-focus-ring-color;
	outline-offset: -2px;
}

.btn.focus, .btn:focus, .btn:hover {
	color: #333;
	text-decoration: none;
}

.btn.active, .btn:active {
	background-image: none;
	outline: 0;
	-webkit-box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125);
	box-shadow: inset 0 3px 5px rgba(0, 0, 0, .125)
}

.btn.disabled, .btn[disabled], fieldset[disabled] .btn {
	cursor: not-allowed;
	filter: alpha(opacity = 65);
	-webkit-box-shadow: none;
	box-shadow: none;
	opacity: .65;
}

a.btn.disabled, fieldset[disabled] a.btn {
	pointer-events: none;
}
</style>
<script>
	$(document).ready(function() {
		//초기값

		//초기값

		var minute = 1;

		var second = 59;
		// 초기화

		$(".countTimeMinute").html(minute);

		$(".countTimeSecond").html(second);

		var timer = setInterval(function() {

			// 설정

			$(".countTimeMinute").html(minute);

			$(".countTimeSecond").html(second);

			if (second == 0 && minute == 0) {

				window.close(); /* 타이머 종료 */

			} else {

				second--;

				// 분처리

				if (second < 0) {

					minute--;

					second = 59;

				}

				//시간처리

				if (minute < 0) {

					if (hour > 0) {

						hour--;

						minute = 59;

					}

				}

			}

		}, 1000); /* millisecond 단위의 인터벌 */

		$("#checkEnumBtn").click(function() {
			if (findid.val() == null || findid.val() == "") {
				alert("인증번호 입력하세요");
			} else {
				if (findid.val() == authNumHidden.val()) {
					alert("인증 완료");
					eNumcheckHidden.val("y");

				} else {
					alert("인증 실패");
				}
			}
			if (eNumcheckHidden.val() == "n") {
				alert("인증번호를 확인하세요")
				findid.focus();
				return false;
			}

			if (findid.val() != authNumHidden.val()) {
				alert("인증번호가 틀렸습니다")
				findid.focus();
				return false;
			}
			if (findid.val() == null || findid.val() == "") {
				alert("인증번호를 입력하세요");
				findid.focus();
				return false;
			}
			close();
		});
	});
</script>
</head>
<body onresize="parent.resizeTo(400,380)"
	onload="parent.resizeTo(400,380)">
	<div id="wrapper">

		<div id="box">
			<div id="top_header">
				<h3>메일 인증</h3>
				<br> <br>
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span
				class="countTimeMinute">60</span>분 <span class="countTimeSecond">60</span>초
				안에 인증번호를 입력하세요.</b> <input type="button" class="btn btn-info" value="인증"
				id="checkEnumBtn"> <br> <br>
			<div id="inputs">
				<div class='container'>
					<form id="authform">
						<input type="text" name="authNumHidden" id="authNumHidden">
					</form>
					<input type='text' id="findid" /> <br>
				</div>
			</div>
		</div>
	</div>
</body>
</html>