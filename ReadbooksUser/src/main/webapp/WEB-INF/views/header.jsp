<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<input type="hidden" name="csrf" value="${CSRF_TOKEN}" />
	<c:choose>
		<c:when test="${empty sessionScope.user_id }">
			<div class="loginjoin">
				<nav id="primary_nav_wrap">
					<ul>
						<li><a href="/usercheck.do">로그인</a></li>
						<li><a href="/userjoin.do">회원가입</a></li>
					</ul>
				</nav>
			</div>
		</c:when>
		<c:otherwise>
			<div class="loginjoin">
				<nav id="primary_nav_wrap">
					<ul>
						<li><a href="/userlogout.do">로그아웃</a></li>
					</ul>
				</nav>
			</div>
		</c:otherwise>
	</c:choose>
	<div class="logoimg">
		<img src="/resources/image/readbooks-logo.png" width="240" height="60">
	</div>
	<div class="searchbar">
		<div class="searchcategory">
			<select>
				<option value="책제목" selected="selected">책제목</option>
			</select>
		</div>
		<input type="text" />
	</div>
	<div class="searchcart">
		<ul>
			<li><a><img alt="검색"
					src="/resources/image/magnifying-glass.png" height="28" width="28"></a></li>
			<li><a><img alt="장바구니"
					src="/resources/image/shopping-cart.png" height="28" width="28"></a></li>
		</ul>
	</div>
	<nav id="primary_nav_wrap">
		<ul>
			<li class="current-menu-item"><a href="#">Home</a></li>
			<li><a href="#">국내</a>
				<ul>
					<li><a href="#">Sub Menu 1</a></li>
					<li><a href="#">Sub Menu 2</a></li>
					<li><a href="#">Sub Menu 3</a></li>
					<li><a href="#">Sub Menu 4</a>
						<ul>
							<li><a href="#">Deep Menu 1</a>
								<ul>
									<li><a href="#">Sub Deep 1</a></li>
									<li><a href="#">Sub Deep 2</a></li>
									<li><a href="#">Sub Deep 3</a></li>
									<li><a href="#">Sub Deep 4</a></li>
								</ul></li>
							<li><a href="#">Deep Menu 2</a></li>
						</ul></li>
					<li><a href="#">Sub Menu 5</a></li>
				</ul></li>
			<li><a href="#">해외</a>
				<ul>
					<li><a href="#">Sub Menu 1</a></li>
					<li><a href="#">Sub Menu 2</a></li>
					<li><a href="#">Sub Menu 3</a></li>
				</ul></li>
			<li><a href="/bestbookGet.do">베스트</a>
				<ul>
					<li class="dir"><a href="#">Sub Menu 1</a></li>
					<li class="dir"><a href="#">Sub Menu 2 THIS IS SO LONG IT
							MIGHT CAUSE AN ISSEUE BUT MAYBE NOT?</a>
						<ul>
							<li><a href="#">Category 1</a></li>
							<li><a href="#">Category 2</a></li>
							<li><a href="#">Category 3</a></li>
							<li><a href="#">Category 4</a></li>
							<li><a href="#">Category 5</a></li>
						</ul></li>
					<li><a href="#">Sub Menu 3</a></li>
					<li><a href="#">Sub Menu 4</a></li>
					<li><a href="#">Sub Menu 5</a></li>
				</ul></li>
			<li><a href="#">신간</a></li>
			<li><a href="#">마이페이지</a></li>
			<li><a href="#">고객센터</a></li>
		</ul>
	</nav>
</body>
</html>