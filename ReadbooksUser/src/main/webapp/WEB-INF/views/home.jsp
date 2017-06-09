<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>리드북스에 오신 걸 환영합니다.</title>
</head>
<body>
	<a href="user/userjoin.do">회원가입</a>
	<a href="book/bookinsert.do">책 등록</a>
	<jsp:include page="/user/usercheck.do"></jsp:include>
</body>
</html>