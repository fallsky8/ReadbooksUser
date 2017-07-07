<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
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
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<title>아이디 찾기</title>
<script type="text/javascript">
	$(function() {
		$("#mailsend").click(function() {
			$.ajax({
				url : "/sendID.do",
				type : "POST",
				data : $("#findidform").serialize(),
				error : function(data) {
					alert("메일 전송 실패!! 정확한 주소를 입력하세요.");
				},
				success : function(data) {
					alert("메일로 고객님이 요청하신 아이디가 전송되었습니다.");
				}
			});
		});
		$("#backfind").click(function() {
			history.go(-1);
		});
	});
</script>
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

#inputs #user_email, #inputs #findpw {
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

#user_email, #findpw {
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
</style>
</head>
<body onresize="parent.resizeTo(400,380)"
	onload="parent.resizeTo(400,380)">
	<div id="wrapper">
		<div id="box">
			<div id="top_header">
				<h3>아이디 찾기</h3>
				<br> <br>
			</div>
			<div id="inputs">
				<div class='container'>
					<form id="findidform">
						<input type='email' id="user_email" name="user_email"
							placeholder="이메일을 입력해주세요." /> <br> <br>
					</form>
					<input type="button" id="mailsend" value="메일로 아이디받기"
						class="btn btn-info"> <input type="button" id="backfind"
						value="뒤로가기" class="btn btn-info">
				</div>
			</div>
		</div>
	</div>
</body>
</html>