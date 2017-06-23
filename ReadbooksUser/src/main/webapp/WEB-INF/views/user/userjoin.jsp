<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>리드북스 회원가입</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<link
	href='https://fonts.googleapis.com/css?family=Lato:300,400,700,900'
	rel='stylesheet' type='text/css'>
<link
	href='https://fonts.googleapis.com/css?family=Gafata|Nobile:400,700'
	rel='stylesheet' type='text/css'>
<link href='https://fonts.googleapis.com/css?family=Roboto:400,300'
	rel='stylesheet' type='text/css'>
<script type="text/javascript">
	$(function() {
		$("#userjoin").click(function() {
			$("#joinform").attr({
				"method" : "POST",
				"action" : "/userInsert.do"
			});
			$("#joinform").submit();
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
						document.getElementById('user_address').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('user_address').value = data.zonecode
								+ fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('user_address').focus();
					}
				}).open();
	}
</script>
<style type="text/css">
#wrapper #box input {
	outline: none;
}

#wrapper {
	width: 100%;
	height: 100%;
	margin: 0 auto;
	margin-top: -50px;
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

#inputs input[type=text], #inputs input[type=password], #inputs #userjoin,
	#inputs form .container #user_email {
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

#inputs input[type=text], #inputs input[type=password], #inputs form .container #user_email
	{
	font-family: 'Lato', sans-serif;
	font-weight: 300;
	font-size: 16px;
	border: thin solid #ccc;
	border-radius: 5px;
	color: #378DE5;
}

#inputs input[type=text]:focus, #inputs input[type=password]:focus,
	#inputs form .container #user_email:focus {
	border: thin solid #378DE5;
	-webkit-transition: all .4s ease;
	-moz-transition: all .4s ease;
	-o-transition: all .4s ease;
	transition: all .4s ease;
}

#inputs input[type=text]:focus, #inputs input[type=password]:focus,
	#inputs form .container #user_email:focus {
	border-left: thin solid #378DE5;
}

#userjoin {
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

#userjoin:hover {
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
	font-size: 15px;
	font-family: 'Roboto', sans-serif;
	font-weight: 300;
	transition: color .3s ease;
	outline: none;
	float: right;
}

#bottom a:hover {
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
				<div id="box">
					<div id="top_header">
						<h3>회원가입</h3>
						<h5>리드북스 가입을 환영합니다.</h5>
					</div>
					<div id="inputs">
						<form id='joinform' style="margin-left: 6px;">
							<input type="hidden" id="user_collectiveagreement"
								name="user_collectiveagreement"> <input type="hidden"
								id="user_referralagreement" name="user_referralagreement">
							<input type="hidden" id="user_serviceagreement"
								name="user_serviceagreement">
							<div class='container'>
								<input type='text' name='user_name' id='user_name'
									maxlength="50" size="30" placeholder="이름" /><br />
							</div>
							<div class='container'>
								<input type='text' name='user_id' id='user_id' maxlength="50"
									size="30" placeholder="아이디" /><br />
							</div>
							<div class='container'>
								<input type='password' name='user_pw' id='user_pw'
									maxlength="50" size="30" placeholder="비밀번호" /><br />
							</div>
							<div class='container'>
								<input type='password' name='user_pwck' id='user_pwck'
									maxlength="50" size="30" placeholder="비밀번호확인" /><br />
							</div>
							<div class='container'>
								<input type="text" id="user_address" name="user_address"
									placeholder="주소를 검색하세요!">
								<div id="bottom">
									<a onclick="Postcode()">주소검색</a>
								</div>
							</div>
							<div class='container'>
								<input type="email" name='user_email' id='user_email'
									maxlength="50" size="30" placeholder="이메일" /><br />
							</div>
							<div class='container'>
								<input type='button' id="userjoin" value='가입하기' />
							</div>
						</form>
					</div>
				</div>
			</div>
		</article>
		<aside>aside</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>