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
		$("#btnlogout").click(function() {

		})
	});
</script>
</head>
<body>
	<form id="loginform" name="loginform" enctype="multipart/form-data">
		<input type="hidden" name="csrf" value="${CSRF_TOKEN}" /> 아이디 <input
			type="text" id="user_id" name=""user_id""> 비밀번호 <input
			type="password" id="user_pw" name="user_pw"> <input
			type="button" id="userlogin" name="userlogin" value="로그인">
	</form>
	<c:choose>
		<c:when test="${not empty sessionScope.userLoginInfo}">
	이름 :  ${sessionScope.userLoginInfo.user_name}
		<input type="button" id="btnlogout" name="btnlogout" value="로그아웃">
		</c:when>
	</c:choose>
</body>
</html>