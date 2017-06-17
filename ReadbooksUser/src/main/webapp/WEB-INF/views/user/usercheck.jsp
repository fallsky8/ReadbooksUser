<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>리드북스 로그인</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
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
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<div>
				<div id="member">
					<form id="loginform" name="loginform">
						<input type="hidden" name="csrf" value="${CSRF_TOKEN}" />
						<table>
							<tr>
								<td><b>회원</b></td>
							<tr>
							<tr>
								<td>아이디</td>
								<td><input type="text" name="user_id" id="user_id"></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="user_pw" id="user_pw"></td>
								<td colspan="2"><input type="button" id="userlogin"
									name="userlogin" value="로그인"></td>
							</tr>
						</table>
					</form>
					<table>
						<tr>
							<td><a href="">아이디찾기</a></td>
							<td><a href="">비밀번호찾기</a></td>
							<td><a href="">회원가입하기</a></td>
						</tr>
					</table>
				</div>

				<div id="guest">
					<form>

						<table>
							<tr>
								<td><b>비회원</b></td>
							<tr>
								<td>주문번호</td>
								<td><input type="text" name="" id=""></td>
							</tr>
							<tr>
								<td>비밀번호</td>
								<td><input type="password" name="" id=""></td>
								<td colspan="2"><a href="">주문확인</a></td>
							</tr>
						</table>
						<table>
							<tr>
								<td><a href="">주문번호찾기</a></td>
								<td><a href="">비밀번호찾기</a></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>