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
<title>리드북스베스트</title>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div class="contain">
				<div class="cartcontainer">
					<form id="booknumform">
						<input type="hidden" id="user_id" name="user_id"
							value="${sessionScope.user_id }"> <input type="hidden"
							id="book_number" name="book_number"> <input type="hidden"
							id="cart_buyquantity" id="cart_buyquantity"
							name="cart_buyquantity">
					</form>
					<section id="cart">
						<!-- 		상품1시작 -->
						<c:choose>
							<c:when test="${not empty bestbooklist}">
								<c:forEach var="bestbooklist" items="${bestbooklist}">
									<article class="product"
										data-num="${bestbooklist.book_number }">
										<header>
											<!-- 				삭제 이미지 -->
											<!-- 					상품이미지 -->
											<img src="/resources/image/${bestbooklist.book_image }">
											<!-- 제거 -->
										</header>
										<div class="content">
											<!-- 상품이름 -->
											<h1>${bestbooklist.book_name}</h1>
											<!-- 상품 설명 -->
											<p>${bestbooklist.book_writer }
											<div id="primary_nav_wrap">
												<ul>
													<li><a class="btndetail">상세보기</a></li>
													<li><a class="cartlist">장바구니에 담기</a></li>
													<li><a class="mylist">마이리스트에 추가</a></li>
													<li><a class="orderinsert">주문하기</a></li>
												</ul>
											</div>
										</div>
										<footer class="content">
											<span class="qt-minus">-</span> <span class="qt">1</span> <span
												class="qt-plus">+</span>

											<h2 class="full-price">${bestbooklist.book_price}원</h2>

											<h2 class="price">${bestbooklist.book_price}원</h2>
										</footer>
									</article>
								</c:forEach>
							</c:when>
							<c:otherwise>
						등록된 책이 존재하지 않습니다.
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