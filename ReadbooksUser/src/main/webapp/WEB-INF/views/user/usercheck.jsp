<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/js/validation.js"></script>
<script src="/resources/js/cart.js"></script>
<link
	href='https://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Gafata|Nobile:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>리드북스 로그인</title>
<style type="text/css">
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

#inputs input[type=text], #inputs input[type=password], #inputs #userlogin
	{
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

#inputs input[type=text], #inputs input[type=password] {
	font-family: 'Lato', sans-serif;
	font-weight: 300;
	font-size: 16px;
	border: thin solid #ccc;
	border-radius: 5px;
	color: #378DE5;
}

#inputs input[type=text]:focus, #inputs input[type=password]:focus {
	border: thin solid #378DE5;
	-webkit-transition: all .4s ease;
	-moz-transition: all .4s ease;
	-o-transition: all .4s ease;
	transition: all .4s ease;
}

#inputs input[type=text]:focus, #inputs input[type=password]:focus {
	border-left: thin solid #378DE5;
}

#userlogin {
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

#userlogin:hover {
	background-color: #5fc5c5;
	color: #fff;
}

#bottom {
	width: 300px;
	margin: 0 auto;
	margin-top: 15px;
}

#bottom a {
	text-decoration: none;
	color: #282828;
	font-size: 13px;
	font-family: 'Roboto', sans-serif;
	font-weight: 300;
	transition: color .3s ease;
	outline: none;
}

#bottom a:hover {
	color: #5fc5c5;
}

.right_a {
	float: right;
}
</style>

<script type="text/javascript">
	$(function() {
		$("input,select,textarea").not("[type=submit]").jqBootstrapValidation();
		$("#userlogin").click(function() {
			$("#loginform").attr({
				"method" : "POST",
				"action" : "/userlogin.do"
			});
			$("#loginform").submit();
		});
		$("#btnlogout").click(function() {
			$.ajax({
				type : "POST",
				url : "/userlogout.do",
				success : function(data) {
				}
			});
		});
		$("#btnout").click(function() {
			$("#outform").attr({
				"method" : "POST",
				"action" : "/userOut.do"
			});
			$("#outform").submit();
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
			<div id="wrapper">
				<div id="box">
					<div id="top_header">
						<h3>로그인</h3>
						<h5>리드북스에 오신 것을 환영합니다.</h5>
					</div>

					<div id="inputs">
						<form id='loginform' style="margin-left: 6px;"
							class="form-horizontal">
							<div class='container control-group'>
								<div class="controls">
									<!-- 									<input type='text' name='user_id' id='user_id' maxlength="50" -->
									<!-- 										size="30" placeholder="아이디" required="required" -->
									<!-- 										pattern="^[a-z]{1}[a-z0-9]{4,18}$" -->
									<!-- 										data-validation-pattern-message="아이디 : 영문으로 시작하는  4~18byte + 숫자" /><br /> -->
									<input type='text' name='user_id' id='user_id' maxlength="50"
										size="30" placeholder="아이디" required="required" /><br />
									<p class="help-block"
										style="color: #E74652; position: relative; top: -4px;"></p>
								</div>
							</div>

							<div class='container control-group'>
								<div class="controls">
									<!-- 									<input type='password' name='user_pw' id='user_pw' -->
									<!-- 										maxlength="50" size="30" placeholder="비밀번호" -->
									<!-- 										required="required" pattern="^[a-z]{1}[a-z0-9]{4,18}$" -->
									<!-- 										data-validation-pattern-message="비밀번호 : 영문으로 시작하는  4~18byte + 숫자" /><br /> -->
									<input type='password' name='user_pw' id='user_pw'
										maxlength="50" size="30" placeholder="비밀번호"
										required="required" /><br />
									<p class="help-block"
										style="color: #E74652; position: relative; top: -4px;"></p>
								</div>
							</div>

							<div class='container control-group'>
								<input type='button' name='userlogin' id="userlogin" value='로그인' />
							</div>
						</form>

						<div id="bottom">
							<a href="/userjoin.do">아직 리드북스 회원이 아니세요?</a> <a class="right_a"
								href="#"
								onclick="window.open('/findbutton.do', '_blank', 'width=400px, height=380px, top=250px,left=400px')">내
								정보 찾기</a>
						</div>
					</div>
				</div>
			</div>
		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>