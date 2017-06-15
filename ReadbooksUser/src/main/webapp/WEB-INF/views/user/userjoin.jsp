<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/join.css" type="text/css"
	media="screen" />
<title>리드북스 회원가입</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
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
</script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<jsp:include page="../leftside.jsp"></jsp:include>
			<div>
				<form id="joinform" name="joinform">
					<input type="hidden" name="csrf" value="${CSRF_TOKEN}" />
					<table>
						<tr>
							<td>필수정보입력</td>
						</tr>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="user_id" id="user_id"></td>
							<td><input type="button" name="btnidcheck" id="btnidcheck"
								value="중복확인"> <small>4~12자리의 영문소문자와 숫자만 가능합니다</small></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="user_pw" id="user_pw"></td>
							<td><small>8~20자리의 영문 대/소문자,숫자,특수문자 조합</small></td>
						</tr>
						<tr>
							<td>비밀번호확인</td>
							<td><input type="password" name="user_pwchk" id="user_pwchk"></td>
							<td><small>비밀번호를 한 번 더 입력해주세요</small></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="user_name" id="user_name"></td>
						</tr>
						<tr>
							<td>휴대폰번호</td>
							<td><input type="tel" id="user_phonenumber"
								name="user_phonenumber"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="email" id="user_email" name="user_email"><small>비밀번호
									분실 시 임시번호가 발송되니 정확히 입력 해 주세요</small> <input type="hidden"
								id="user_serviceagreement" name="user_serviceagreement">
								<input type="hidden" id="user_collectiveagreement"
								name="user_collectiveagreement"> <input type="hidden"
								id="user_referralagreement" name="user_referralagreement">
						</tr>
					</table>
					<table>
						<tr>
							<td>선택정보입력</td>
						</tr>
						<tr>
							<td>주소(배송지)</td>
							<td><input type="text" name="" id=""><input
								type="button" value="우편번호찾기"><br> <input
								type="text" name="" id=""><input type="text" name=""
								id="">
						<tr>
							<td><input type="button" id="userjoin" value="가입하기"></td>
						</tr>
					</table>
				</form>
			</div>
			<jsp:include page="../rightside.jsp"></jsp:include>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>