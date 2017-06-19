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
		<a href="/home.do"><img src="/resources/image/readbooks-logo.png"
			width="240" height="60"></a>
	</div>
	<div class="search">
		<div class="searchbar">
			<input type="text" placeholder="제목으로 검색하세요!" />
		</div>
		<div class="searchcart">
			<ul>
				<li><a><img alt="검색"
						src="/resources/image/magnifying-glass.png" height="28" width="28"></a></li>
				<li><a href="/cartlistGet.do"><img alt="장바구니"
						src="/resources/image/shopping-cart.png" height="28" width="28"></a></li>
			</ul>
		</div>
	</div>
	<div class="navmenu">
		<nav id="primary_nav_wrap">
			<ul>
				<li class="current-menu-item" id="iii"><a href="/home.do">Home</a></li>
				<li id="iii"><a href="/koreabookGet.do">국내소설</a>
					<ul>
						<li><a href="/korealongbookGet.do">국내 장편 소설</a></li>
						<li><a href="/koreashortbookGet.do">국내 단편 소설</a></li>
						<!-- 					<li><a href="#">Sub Menu 4</a> -->
						<!-- 						<ul> -->
						<!-- 							<li><a href="#">Deep Menu 1</a> -->
						<!-- 								<ul> -->
						<!-- 									<li><a href="#">Sub Deep 1</a></li> -->
						<!-- 									<li><a href="#">Sub Deep 2</a></li> -->
						<!-- 									<li><a href="#">Sub Deep 3</a></li> -->
						<!-- 									<li><a href="#">Sub Deep 4</a></li> -->
						<!-- 								</ul></li> -->
						<!-- 							<li><a href="#">Deep Menu 2</a></li> -->
						<!-- 						</ul></li> -->
					</ul></li>
				<li id="iii"><a href="/foreignbookGet.do">해외소설</a>
					<ul>
						<li><a href="/foreignlongbookGet.do">해외 장편 소설</a></li>
						<li><a href="/foreignshortbookGet.do">해외 단편 소설</a></li>
					</ul></li>
				<li id="iii"><a href="/bestbookGet.do">베스트소설</a> <!-- 				<ul> -->
					<!-- 					<li class="dir"><a href="#">Sub Menu 1</a></li> --> <!-- 					<li class="dir"><a href="#">Sub Menu 2 THIS IS SO LONG IT -->
					<!-- 							MIGHT CAUSE AN ISSEUE BUT MAYBE NOT?</a> --> <!-- 						<ul> -->
					<!-- 							<li><a href="#">Category 1</a></li> --> <!-- 							<li><a href="#">Category 2</a></li> -->
					<!-- 							<li><a href="#">Category 3</a></li> --> <!-- 							<li><a href="#">Category 4</a></li> -->
					<!-- 							<li><a href="#">Category 5</a></li> --> <!-- 						</ul></li> -->
					<!-- 					<li><a href="#">Sub Menu 3</a></li> --> <!-- 					<li><a href="#">Sub Menu 4</a></li> -->
					<!-- 					<li><a href="#">Sub Menu 5</a></li> --> <!-- 				</ul></li> -->
				<li id="iii"><a href="/newbookGet.do">신간소설</a></li>
				<li id="iii"><a href="#">리뷰게시판</a></li>
				<li id="iii"><a href="#">마이페이지</a>
					<ul>
						<li><a href="#">회원정보관리</a></li>
						<li><a href="#">주문내역</a></li>
						<li><a href="/cartlistGet.do">장바구니</a></li>
						<li><a href="/mylistGet.do">마이리스트</a></li>
					</ul></li>
				<li id="iii"><a href="/noticeboardList.do">고객센터</a>
					<ul>
						<li><a href="/noticeboardList.do">공지사항</a></li>
						<li><a href="/faqboardList.do">자주 묻는 질문</a></li>
						<li><a href="#">1:1 문의</a></li>
					</ul></li>
			</ul>
		</nav>
	</div>
</body>
</html>