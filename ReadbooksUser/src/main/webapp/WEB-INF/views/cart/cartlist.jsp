<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<title>장바구니 목록</title>
<script type="text/javascript">
	$(function() {
		$(window).scroll(function() {
			if ($(this).scrollTop() > 450) {
				$('.gnb_add_btn').addClass('abs_view');
				$('.ss_top').show();
				if (!$('.add_search').is(':visible')) {
					$('#head').addClass('head_mini');
				}
			} else {
				$('#head').removeClass('head_mini');
				$('.gnb_add_btn').removeClass('abs_view');
				$('.ss_top').hide();
			}

			if ($(this).scrollTop() > 200) {
				$('#serviceWrap').addClass('ss_fixed');
			} else {
				$('#serviceWrap').removeClass('ss_fixed');
			}
		});
		$("#onTop").click(function() {
			$('html, body').animate({
				scrollTop : 0
			}, 350);
		});
		$(".btndetail").click(function() {
			var b_num = $(this).parents("article").attr("data-val");
			var c_num = $(this).parents("article").attr("data-num");
			$("#book_number").val(b_num);
			$("#cart_number").val(c_num);
			$("#booknumform").attr({
				"method" : "GET",
				"action" : "/bookdetail.do"
			});
			$("#booknumform").submit();
		});

		$(".payment").click(function() {
			var cart_subtotal = $(".subtotal span").html();
			var cart_totalquantity = $(".quantity span").html();
			var cart_totalprice = $(".total span").html();
			if (cart_subtotal == '0') {
				alert("카트에 상품이 없습니다!");
			} else {
				$("#cart_subtotal").val(cart_subtotal);
				$("#cart_totalquantity").val(cart_totalquantity);
				$("#cart_totalprice").val(cart_totalprice);
				$("#orderform").attr({
					"method" : "get",
					"action" : "/orderinsertpage.do"
				});
				$("#orderform").submit();
			}
		});
		function changeVal(el) {
			var qt = parseFloat(el.parent().children(".qt").html());
			var price = parseFloat(el.parent().children(".price").html());
			var eq = Math.round(price * qt * 100) / 100;
			el.parent().children(".full-price").html(eq + "원");

			changeTotal();

		}

		function changeTotal() {
			var price = 0;
			var qt = 0;
			$(".full-price").each(function(index) {
				price += parseFloat($(".full-price").eq(index).html());
			});
			$(".qt").each(function(index) {
				qt += parseFloat($(".qt").eq(index).html());
			});

			price = Math.round(price * 100) / 100;
			var discount = Math.round(price * 10) / 100;
			var fullPrice = Math.round((price - discount) * 100) / 100;

			if (price == 0) {
				fullPrice = 0;
			}
			$(".quantity span").html(qt);
			$(".subtotal span").html(price);
			$(".discount span").html(discount);
			$(".total span").html(fullPrice);

		}

		$(document).ready(
				function() {
					if ($(".product").length == 0) {
						$("#cart").html("<h1>장바구니에 등록된 상품이 없습니다.</h1>");
					}
					changeTotal();
					$(".remove").click(
							function() {
								var c_num = $(this).parents("article").attr(
										"data-num");
								var b_num = $(this).parents("article").attr(
										"data-val");
								$("#book_number").val(b_num);
								$("#cart_number").val(c_num);
								$("#booknumform").attr({
									"method" : "get",
									"action" : "/cartDelete.do"
								});
								$("#booknumform").submit();
								var el = $(this);
								el.parent().parent().addClass("removed");
								window.setTimeout(function() {
									el.parent().parent().slideUp('fast',
											function() {
												el.parent().parent().remove();
												changeTotal();
											});
								}, 200);

							});
					//수량 추가
					$(".qt-plus").click(
							function() {
								$(this).parent().children(".qt").html(
										parseInt($(this).parent().children(
												".qt").html()) + 1);

								$(this).parent().children(".full-price")
										.addClass("added");

								var el = $(this);
								window.setTimeout(function() {
									el.parent().children(".full-price")
											.removeClass("added");
									changeVal(el);
								}, 150);

							});
					//수량 감소
					$(".qt-minus").click(
							function() {
								child = $(this).parent().children(".qt");

								if (parseInt(child.html()) > 1) {
									child.html(parseInt(child.html()) - 1);
								}

								$(this).parent().children(".full-price")
										.addClass("minused");

								var el = $(this);
								window.setTimeout(function() {
									el.parent().children(".full-price")
											.removeClass("minused");
									changeVal(el);
								}, 150);

							});

					window.setTimeout(function() {
						$(".is-open").removeClass("is-open")
					}, 1200);
				});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<form id="booknumform">
		<input type="hidden" id="user_id" name="user_id"
			value="${sessionScope.user_id }"> <input type="hidden"
			id="cart_buyquantity" name="cart_buyquantity" value="1"> <input
			type="hidden" id="book_number" name="book_number"> <input
			type="hidden" id="cart_number" name="cart_number">
	</form>
	<form id="orderform">
		<input type="hidden" id="user_id" name="user_id"
			value="${sessionScope.user_id }"> <input type="hidden"
			id="cart_subtotal" name="cart_subtotal"> <input type="hidden"
			id="cart_totalquantity" name="cart_totalquantity"> <input
			type="hidden" id="cart_totalprice" name="cart_totalprice">
	</form>
	<div id="main">
		<article>
			<div class="contain">
				<div class="cartcontainer">

					<section id="cart">
						<!-- 		상품1시작 -->
						<c:forEach var="cartbooklist" items="${cartbooklist}">
							<article class="product" data-num="${cartbooklist.cart_number }"
								data-val="${cartbooklist.book_number }">
								<header>
									<a class="remove"> <!-- 					상품이미지 --> <img
										src="/resources/image/${cartbooklist.book_image }"> <!-- 제거 -->
										<h3>삭제하기</h3>
									</a>
								</header>
								<div class="content">
									<h1>${cartbooklist.book_name}</h1>
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
							<h3 class="quantity">
								수량 총합 : <span></span>개
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
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
		<div id="onTop" class="ss_top">
			<a href="javascript://"><img
				src="http://image.bandinlunis.com/images/common/2014/btn_top.png"></a>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>