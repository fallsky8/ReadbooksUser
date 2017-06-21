<%@page import="com.readbooks.cartvo.CartVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
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
<title>장바구니</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		var check = false;

		function changeVal(el) {
			var qt = parseFloat(el.parent().children(".qt").html());
			var price = parseFloat(el.parent().children(".price").html());
			var eq = Math.round(price * qt * 100) / 100;

			el.parent().children(".full-price").html(eq + "원");

			changeTotal();
		}

		function changeTotal() {

			var price = 0;

			$(".full-price").each(function(index) {
				price += parseFloat($(".full-price").eq(index).html());
			});

			price = Math.round(price * 100) / 100;
			var discount = Math.round(price * 10) / 100;
			var fullPrice = Math.round((price - discount) * 100) / 100;

			if (price == 0) {
				fullPrice = 0;
			}

			$(".subtotal span").html(price);
			$(".discount span").html(discount);
			$(".total span").html(fullPrice);
		}

		$(document)
				.ready(
						function() {
							changeTotal();
							$(".remove")
									.click(
											function() {
												var b_num = $(this).parents(
														"article").attr(
														"data-num");
												$("#cart_number").val(b_num);
												$("#booknumform").attr({
													"method" : "get",
													"action" : "/cartDelete.do"
												});
												$("#booknumform").submit();
												var el = $(this);
												el.parent().parent().addClass(
														"removed");
												window
														.setTimeout(
																function() {
																	el
																			.parent()
																			.parent()
																			.slideUp(
																					'fast',
																					function() {
																						el
																								.parent()
																								.parent()
																								.remove();
																						if ($(".product").length == 0) {
																							if (check) {
																								//구매완료 
																								$(
																										"#cart")
																										.html(
																												"<h1>구매 완료</h1><p>감사합니다 구매가 완료되었습니다. 쇼핑을 계속 하시려면 <a href='/home.do'>readbooks</a>. </p>");
																							} else {
																								//상품없을시 
																								$(
																										"#cart")
																										.html(
																												"<h1>장바구니에 등록된 상품이 없습니다.!</h1>");
																							}
																						}
																						changeTotal();
																					});
																}, 200);
											});
							//수량 추가
							$(".qt-plus")
									.click(
											function() {
												$(this)
														.parent()
														.children(".qt")
														.html(
																parseInt($(this)
																		.parent()
																		.children(
																				".qt")
																		.html()) + 1);

												$(this).parent().children(
														".full-price")
														.addClass("added");

												var el = $(this);
												window.setTimeout(function() {
													el.parent().children(
															".full-price")
															.removeClass(
																	"added");
													changeVal(el);
												}, 150);
											});
							//수량 감소
							$(".qt-minus")
									.click(
											function() {

												child = $(this).parent()
														.children(".qt");

												if (parseInt(child.html()) > 1) {
													child.html(parseInt(child
															.html()) - 1);
												}

												$(this).parent().children(
														".full-price")
														.addClass("minused");

												var el = $(this);
												window.setTimeout(function() {
													el.parent().children(
															".full-price")
															.removeClass(
																	"minused");
													changeVal(el);
												}, 150);
											});

							window.setTimeout(function() {
								$(".is-open").removeClass("is-open")
							}, 1200);

							$(".payment").click(function() {
								check = true;
								$(".remove").click();
							});
						});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<form id="booknumform">
		<input type="hidden" id="cart_number" name="cart_number">
	</form>
	<div id="main">
		<article>
			<div class="contain">
				<div class="cartcontainer">

					<section id="cart">
						<!-- 		상품1시작 -->
						<c:forEach var="cartbooklist" items="${cartbooklist}">
							<article class="product" data-num="${cartbooklist.cart_number }">
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
									<p>
								</div>
								<footer class="content">
									<span class="qt-minus">-</span> <span class="qt">${cartbooklist.cart_buyquantity }</span>
									<span class="qt-plus">+</span>

									<h2 class="full-price">${cartbooklist.book_price * cartbooklist.cart_buyquantity }원</h2>

									<h2 class="price">${cartbooklist.book_price}원</h2>
								</footer>
							</article>
						</c:forEach>
						<!-- 			상품1끝 -->
					</section>
				</div>

				<div id="site-footer">
					<div class="cartcontainer clearfix">

						<div class="left">
							<h2 class="subtotal">
								원가 총합: <span></span>원
							</h2>
							<h3 class="discount">
								할인 (10%): <span></span>원
							</h3>
						</div>

						<div class="right">
							<h1 class="total">
								결제 총합: <span></span>원
							</h1>
							<a class="payment">결제하기</a>
						</div>

					</div>
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