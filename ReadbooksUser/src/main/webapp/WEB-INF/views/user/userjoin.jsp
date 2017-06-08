<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리드북스 회원가입</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#userjoin").click(function() {
			$("#joinform").attr({
				"method" : "POST",
				"action" : "/user/userInsert.do"
			});
			$("#joinform").submit();
		});
	});
</script>
</head>
<body>
	<form id="joinform" name="joinform" enctype="multipart/form-data">
		<input type="hidden" name="csrf" value="${CSRF_TOKEN}" />
		<table>
			<tr>
				<td>아이디 <input type="text" id="user_id" name="user_id"></td>
			</tr>
			<tr>
				<td>비밀번호 <input type="password" id="user_pw" name="user_pw"></td>
			</tr>
			<tr>
				<td>주소 <input type="text" id="user_address" name="user_address"></td>
			</tr>
			<tr>
				<td>이름 <input type="text" id="user_name" name="user_name"></td>
			</tr>
			<tr>
				<td>이메일 <input type="email" id="user_email" name="user_email"></td>
			</tr>
			<tr>
				<td>전화번호 <input type="tel" id="user_phonenumber"
					name="user_phonenumber"></td>
			</tr>
			<tr>
				<td>비밀번호 찾기 질문 <input type="text" id="user_pwquestion"
					name="user_pwquestion"></td>
			</tr>
			<tr>
				<td>비밀번호 찾기 답 <input type="text" id="user_pwanswer"
					name="user_pwanswer"></td>
			</tr>
			<tr>
				<td>서비스이용약관동의 <input type="text" id="user_serviceagreement"
					name="user_serviceagreement"></td>
			</tr>
			<tr>
				<td>개인정보수집동의 <input type="text" id="user_collectiveagreement"
					name="user_collectiveagreement"></td>
			</tr>
			<tr>
				<td>개인정보처리위탁동의 <input type="text" id="user_referralagreement"
					name="user_referralagreement"></td>
			</tr>
			<tr>
				<td><input type="button" id="userjoin" value="가입하기"></td>
			</tr>
		</table>
	</form>
</body>
</html>