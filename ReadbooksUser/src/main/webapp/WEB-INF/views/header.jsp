<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
</head>
<body>
	<div id="header">
		<input type="hidden" name="csrf" value="${CSRF_TOKEN}" />
		<c:choose>
			<c:when test="${empty sessionScope.user_id }">
				<div id="loginjoin">
					<ul>
						<li><a href="/usercheck.do">로그인</a></li>
						<li><a href="/userjoin.do">회원가입</a></li>
					</ul>
				</div>
			</c:when>
			<c:otherwise>
				<div id="loginjoin">
					<ul>
						<li><a href="/userlogout.do">로그아웃</a></li>
					</ul>
				</div>
			</c:otherwise>
		</c:choose>
		<div id="headerlogo">
			<img id="logoimg1" alt="로고" src="/resources/image/readbooks-logo.png">
		</div>
		<div id="search">
			<div id="searchbox">
				<select id="" name="">
					<option value="">검색</option>
					<option value="책제목">책제목</option>
					<option value="검색하자">검색하자</option>
				</select>
			</div>
			<input type="text" title="검색" id="sch_keyword" />
		</div>
		<div id="mainicon">
			<ul>
				<li><a><img alt="검색" src="/resources/image/search.png"></a></li>
				<li><a><img alt="장바구니" src="/resources/image/cart.png"></a></li>
			</ul>
		</div>
		<div id="mainmenu">
			<ul>
				<li><a href="/home.do">홈</a></li>
				<li id="hover"><a href="/koreabookGet.do">국내소설</a>
					<ul>
						<li><a href="">국내장편</a>
						<li><a href="">국내단편</a>
					</ul></li>
				<li id="hover"><a href="/foreignbookGet.do">해외소설</a>
					<ul>
						<li><a href="">해외장편</a>
						<li><a href="">해외단편</a>
					</ul></li>
				<li><a href="/bestbookGet.do">베스트</a></li>
				<li><a href="/newbookGet.do">신간</a></li>
				<li><a href="">리뷰게시판</a></li>
				<li id="hover"><a href="">마이페이지</a>
					<ul>
						<li><a href="">내정보보기</a>
						<li><a href="">나의주문내역</a>
					</ul></li>
				<li id="hover"><a href="">고객센터</a>
					<ul>
						<li><a href="">FAQ</a>
						<li><a href="">문의하기</a>
					</ul></li>
			</ul>
		</div>
	</div>
</body>
</html>