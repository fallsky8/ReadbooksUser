<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	신간 리스트
	<c:choose>
		<c:when test="${not empty newbooklist}">
			<c:forEach var="newbook" items="${newbooklist}">
				책 이름 : ${newbook.book_name }
			</c:forEach>
		</c:when>
		<c:otherwise>
			등록된 책이 존재하지 않습니다.
		</c:otherwise>
	</c:choose>
</body>
</html>