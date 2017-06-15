<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="resources/css/common.css" type="text/css"
	media="screen" />
<title>리드북스에 오신 걸 환영합니다.</title>
</head>
<body>
	<input type="hidden" id="user_id" name="user_id"
		value="${sessionScope.user_id }">
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<div id='main'>
		<article>article</article>
		<nav>nav</nav>
		<aside>aside</aside>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>