<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div id="serviceWrap">
		<div class="ss_myshop">
			<a href="/siteMap.do"><span>주요서비스</span></a>
		</div>
		<c:choose>
			<c:when test="${empty sessionScope.user_id }">
				<div class="ss_myshop">
					<a href="/usercheck.do"><span>로그인</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/useragreement.do"><span>회원가입</span></a>
				</div>
			</c:when>
			<c:otherwise>
				<div class="ss_myshop">
					<a href="/userlogout.do"><span>로그아웃</span></a>
				</div>
			</c:otherwise>
		</c:choose>
		<div class="ss_myshop">
			<a href="/cartlistGet.do"><span>쇼핑카트</span></a>
		</div>
		<div class="ss_myshop">
			<a class="mylist" style="cursor: pointer;"><span>마이리스트</span></a>
		</div>
		<div class="ss_myshop">
			<a class="order" style="cursor: pointer;"><span>주문내역</span></a>
		</div>
	</div>
</body>
</html>