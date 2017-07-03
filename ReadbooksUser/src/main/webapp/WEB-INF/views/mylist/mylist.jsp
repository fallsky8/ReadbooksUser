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
<title>마이 리스트</title>
<script type="text/javascript">
	$(function() {
		$(".btndetail").click(function() {
			var b_num = $(this).parents("article").attr("data-num");
			$("#mylist_number").val(b_num);
			var c_num = $(this).parents("article").attr("data-val");
			$("#book_number").val(c_num);
			$("#booknumform").attr({
				"method" : "GET",
				"action" : "/bookdetail.do"
			});
			$("#booknumform").submit();
		});

		$(".cartlist").click(function() {
			var b_num = $(this).parents("article").attr("data-num");
			$("#mylist_number").val(b_num);
			var c_num = $(this).parents("article").attr("data-val");
			$("#book_number").val(c_num);
			$.ajax({
				url : "/cartInsert.do",
				type : "GET",
				data : $("#booknumform").serialize(),
				success : function(data) {
					$("#booknumform").attr({
						"method" : "get",
						"action" : "/mylistDelete.do"
					});
					$("#booknumform").submit();

				}
			})
			var context = confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?");
			if (context == true) {
				location.href = "/cartlistGet.do";
			} else {
				return false;
			}
		});
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
												$("#mylist_number").val(b_num);
												var c_num = $(this).parents(
														"article").attr(
														"data-val");
												$("#book_number").val(c_num);
												$("#booknumform")
														.attr(
																{
																	"method" : "get",
																	"action" : "/mylistDelete.do"
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
<style type="text/css">
#primary_nav_wrap ul #iii:NTH-CHILD(7) {
	background-color: #5fc5c5;
}

#sideMenu a:NTH-CHILD(6) {
	background-color: rgba(0, 0, 0, 0.15);
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="/userinfo.do" class="menu-item">마이페이지</a> <a
					href="/userinfo.do" class="menu-item">회원정보관리</a> <a
					href="/userinfo.do" class="menu-item">&nbsp;&nbsp;&nbsp;-개인정보관리</a>
				<a href="/useroutpage.do" class="menu-item">&nbsp;&nbsp;&nbsp;-회원탈퇴</a>
				<a href="/orderSelect.do" class="menu-item">주문내역</a> <a href="#"
					class="menu-item">마이리스트</a>
			</div>
			<div class="contain">
				<div class="cartcontainer">
					<form id="booknumform">
						<input type="hidden" id="user_id" name="user_id"
							value="${sessionScope.user_id }"> <input type="hidden"
							id="cart_buyquantity" name="cart_buyquantity" value="1">
						<input type="hidden" id="mylist_number" name="mylist_number">
						<input type="hidden" id="book_number" name="book_number">
					</form>
					<section id="cart">
						<!-- 		상품1시작 -->
						<c:choose>
							<c:when test="${not empty mylist}">
								<c:forEach var="mylist" items="${mylist}">
									<article class="product" data-num="${mylist.mylist_number }"
										data-val="${mylist.book_number }">
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
													<li><a class="cartlist">장바구니로 이동</a></li>
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
		<aside>
			<div id="serviceWrap">
				<div class="ss_myshop">
					<a href="/siteMap.do"><span>주요서비스</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/usercheck.do"><span>로그인</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/userjoin.do"><span>회원가입</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/cartlistGet.do"><span>쇼핑카트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/mylistGet.do"><span>마이리스트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/orderSelect.do"><span>주문내역</span></a>
				</div>
			</div>
		</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>