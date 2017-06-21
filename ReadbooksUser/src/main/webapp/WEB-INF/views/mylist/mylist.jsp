<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<title>마이리스트</title>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="#" class="menu-item">마이페이지</a> <a href="#"
					class="menu-item">회원정보관리</a> <a href="#" class="menu-item">주문내역</a>
				<a href="#" class="menu-item">마이리스트</a>
			</div>
			<div class="contain">
				<div class="cartcontainer">
					<form id="booknumform">
						<input type="hidden" id="user_id" name="user_id"
							value="${sessionScope.user_id }"> <input type="hidden"
							id="book_number" name="book_number"> <input type="hidden"
							id="cart_buyquantity" name="cart_buyquantity" value="1">
					</form>
					<section id="cart">
						<!-- 		상품1시작 -->
						<c:choose>
							<c:when test="${not empty mylist}">
								<c:forEach var="mylist" items="${mylist}">
									<article class="product" data-num="${mylist.book_number }">
										<header>
											<!-- 				삭제 이미지 -->
											<a class="remove"> <!-- 					상품이미지 --> <img
												src="/resources/image/${mylist.book_image }"> <!-- 제거 -->
												<h3>삭제하기</h3>
											</a>
										</header>
										<div class="content" style="border: none;">
											<!-- 상품이름 -->
											<h1>${mylist.book_name}</h1>
											<!-- 상품 설명 -->
											<p>${mylist.book_writer }</p>
											<p>${mylist.book_price }원</p>
											<div id="primary_nav_wrap">
												<ul>
													<li><a class="btndetail">상세보기</a></li>
													<li><a class="cartlist">장바구니에 담기</a></li>
												</ul>
											</div>
										</div>
									</article>
								</c:forEach>
							</c:when>
							<c:otherwise>
마이리스트에 등록된 책이 없습니다.
						</c:otherwise>
						</c:choose>
						<!-- 			상품1끝 -->
					</section>
				</div>
			</div>
		</article>
		<aside>aside</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>