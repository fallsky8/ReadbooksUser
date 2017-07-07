<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>비밀번호 찾기</title>
<script type="text/javascript">
	$(function() {
		var writeEnumber = $("#writeEnumber");
		var idCheckBtn = $("#idCheckBtn");
		var authNumHidden = $("#authNumHidden");
		var eNumcheckHidden = $("#eNumcheckHidden");
		var authNumHidden = $("#authNumHidden");
		var findid = $("#findid");
		$("#mailsend").click(function() {
			$.ajax({
				url : "/sendPW.do",
				type : "POST",
				data : $("#findpwform").serialize(),
				error : function() {
					alert("메일 전송 실패!! 정확한 주소를 입력하세요.");
				},
				success : function(authNum) {
					authNumHidden.val(authNum);
					dialog12 = $("#checkAuthNu").dialog();
					//초기값

					var minute = 2;
					var second = 59;
					// 초기화
					$(".countTimeMinute").html(minute);

					$(".countTimeSecond").html(second);
					var timer = setInterval(function() {
						$("#checkAuthNu").bind("dialogclose", function() {
							clearInterval(timer);
						})
						// 설정
						$(".countTimeMinute").html(minute);

						$(".countTimeSecond").html(second);
						if (second == 0 && minute == 0) {
							$(".ui-dialog-titlebar-close").click();
						} else {

							second--;

							// 분처리

							if (second < 0) {

								minute--;

								second = 59;

							}

						}

					}, 1000); /* millisecond 단위의 인터벌 */

					if (authNum) {
						alert("메일 보내기 성공");
					} else {
						alert("메일 보내기 실패");
					}
				}
			});
		});
		$("#backfind").click(function() {
			history.go(-1);
		});
		$("#checkEnumBtn").click(function() {
			if (findid.val() == null || findid.val() == "") {
				alert("인증번호 입력하세요");
			} else {
				if (findid.val() == authNumHidden.val()) {
					alert("인증 완료");
					eNumcheckHidden.val("y");
					$(".ui-dialog-titlebar-close").click();
					$("#inputs").hide();
					$("#updatediv").show();
					$("#updatepw").click(function() {
						$.ajax({
							url : "/updatePW.do",
							type : "POST",
							data : $("#updateinfoform").serialize(),
							success : function(data) {
								alert("비밀번호가 변경되었습니다.");
								window.close();
							}
						});

					});

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

#inputs #user_id, #inputs #user_email {
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

#user_id, #user_email {
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

#checkAuthNu {
	width: 400px;
	height: 380px;
	background-color: #fff;
	margin: 0 auto;
	-webkit-border-radius: 4px;
	-o-border-radius: 4px;
	-moz-border-radius: 4px;
	border-radius: 3px;
	border: 1px solid #5fc5c5;
}

.ui-dialog-titlebar-close {
	display: none;
}
</style>
</head>
<body onresize="parent.resizeTo(400,380)"
	onload="parent.resizeTo(400,380)">
	<div id="wrapper">
		<div id="box">
			<div id="top_header">
				<h3>비밀번호 찾기</h3>
			</div>
			<div id="inputs">
				<div class='container'>
					<form id="findpwform">
						<br> <br> <input type='email' id="user_id"
							name="user_id" placeholder="아이디를 입력해주세요." /> <br> <input
							type='email' id="user_email" name="user_email"
							placeholder="이메일을 입력해주세요." />
					</form>
				</div>
				<br> <input type="button" id="mailsend" value="메일인증"
					class="btn btn-info"> <input type="button" id="backfind"
					value="뒤로가기" class="btn btn-info">
			</div>
			<div id="updatediv" style="display: none;">
				<div class='container'>
					<form id="updateinfoform">
						<input type='password' id="user_pw" name="user_pw"
							placeholder="변경할 비밀번호를 입력해주세요." /> <br> <input
							type='hidden' id="user_email" name="user_email"
							value="${sessionScope.updateemail }" />
					</form>
				</div>
				<input type="button" id="updatepw" value="변경하기" class="btn btn-info">
			</div>
		</div>
	</div>
	<div id="checkAuthNu" style="display: none;">
		<div id="box2">
			<div id="top_header">
				<h3>메일 인증</h3>
				<br> <br>
			</div>
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<b><span
				class="countTimeMinute"></span>분 <span class="countTimeSecond"></span>초
				안에 인증번호를 입력하세요.</b> <br> <br>
			<div id="inputs">
				<div class='container'>
					<input type='text' id="findid" value=""> <input type="text"
						name="authNumHidden" id="authNumHidden" value="1"> <br>
					<input type="button" class="btn btn-info" value="인증"
						id="checkEnumBtn">
				</div>
			</div>
		</div>
	</div>
</body>
</html>