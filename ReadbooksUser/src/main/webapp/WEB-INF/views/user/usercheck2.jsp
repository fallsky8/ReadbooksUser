<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#userlogin").click(function() {
			$("#loginform").attr({
				"method" : "POST",
				"action" : "/user/userlogin.do"
			});
			$("#loginform").submit();
		});
		$("#btnlogou").click(function() {
			$.ajax({
				type : "POST",
				url : "/user/userlogout.do",
				success : function(data) {
					location.href = "/.do"
				}
			});
		});
		$("#btnout").click(function() {
			$("#outform").attr({
				"method" : "POST",
				"action" : "/user/userOut.do"
			});
			$("#outform").submit();
		});
	});
</script>
</head>
<body>
	<form id="loginform" name="loginform">
		<input type="hidden" name="csrf" value="${CSRF_TOKEN}" /> 아이디 <input
			type="text" id="user_id" name="user_id"> 비밀번호 <input
			type="password" id="user_pw" name="user_pw"> <input
			type="button" id="userlogin" name="userlogin" value="로그인">
	</form>
	<c:choose>
		<c:when test="${empty sessionScope.user_id}">
		로그인하자
		</c:when>
		<c:otherwise>
			<div>${sessionScope.user_id }님환영합니다.</div>
			<br>
			이름 : ${userlist.user_name }<br>
			이메일 : ${userlist.user_email }<br>
			주소 : ${userlist.user_address }<br>
			전화번호 : ${userlist.user_phonenumber }<br>
			<input type="button" id="btnlogou" name="btnlogout" value="로그아웃">
			<form id="outform" name="outform">
				<input type="hidden" id="user_id" name="user_id"
					value="${userlist.user_id }"> <input type="text"
					id="user_outreason" name="user_outreason"
					placeholder="탈퇴 사유를 적어주세요."> <input type="button"
					id="btnout" name="btnout" value="회원탈퇴"
					onclick="<%session.invalidate();%>">
			</form>
		</c:otherwise>
	</c:choose>
</body>
</html>