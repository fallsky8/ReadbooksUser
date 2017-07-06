
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/swipers.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
<<<<<<< HEAD

		$("#payment").click(function() {
			$("#order_info").attr({
				"method" : "get",
=======
		$("#payment").click(function() {
			$("#order_info").attr({
				"method" : "POST",
>>>>>>> branch 'master' of https://github.com/fallsky8/ReadbooksUser/
				"action" : "/orderInsert.do"
			});
			$("#order_info").submit();
		});
	});
</script>
<title>주문 목록</title>
</head>
<body>
	<p>유저아이디 : ${user.user_id };</p>

	<c:forEach var="cartbooklist" items="${sessionScope.cart}">
		<article class="product" data-num="${cartbooklist.cart_number }"
			data-val="${cartbooklist.book_number }">
			<header>
				<!-- 				삭제 이미지 -->
				<a class="remove"> <!-- 					상품이미지 --> <img
					src="/resources/image/${cartbooklist.book_image }"> <!-- 제거 -->
					<h3>삭제하기</h3>
				</a>
			</header>
			<div class="content">
				<!-- 상품이름 -->
				<h1>${cartbooklist.book_name}</h1>
				<!-- 상품 설명 -->
				<p>${cartbooklist.book_writer }
				<div id="primary_nav_wrap">
					<ul>
						<li><a class="btndetail">상세보기</a></li>
					</ul>
				</div>
			</div>
			<footer class="content">
				<span class="qt-minus">-</span> <span class="qt">${cartbooklist.cart_buyquantity }</span>
				<span class="qt-plus">+</span>

				<h2 class="full-price">${cartbooklist.book_price * cartbooklist.cart_buyquantity }원</h2>

				<h2 class="price">${cartbooklist.book_price}원</h2>
			</footer>
		</article>
	</c:forEach>
	<div>
		<form id="order_info">
			<input type="hidden" id="user_id" name="user_id"
				value="${sessionScope.user_id}">
		</form>
		<!-- 			<input type="hidden" id="order_number" name="order_number"> 
<<<<<<< HEAD


<%-- 				  <input type="hidden" --%>
<!-- 				id="order_orderer" name="order_orderer"> <input -->
		<!-- 				type="hidden" id="order_quantity" name="order_quantity"> <input -->
		<!-- 				type="hidden" id="order_ordernumber" name="order_ordernumber"> -->


	</div>
	<input type="submit" id="payment" value="전송 ">
=======
 
 
<%-- 				  <input type="hidden" --%>
<!-- 				id="order_orderer" name="order_orderer"> <input -->
		<!-- 				type="hidden" id="order_quantity" name="order_quantity"> <input -->
		<!-- 				type="hidden" id="order_ordernumber" name="order_ordernumber"> -->


	</div>
	<input type="button" id="payment" value="전송 ">
>>>>>>> branch 'master' of https://github.com/fallsky8/ReadbooksUser/
</body>
</html>