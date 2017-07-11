<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/datatable.js"></script>
<script
	src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/ekko-lightbox/5.2.0/ekko-lightbox.min.js"></script>
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>${detailbook.book_name}</title>
<script type="text/javascript">
	$(function() {
		$(document).on('click', '[data-toggle="lightbox"]', function(event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});
		$(".btnpay").click(function() {
			var b_num = "${detailbook.book_number}";
			$("#book_number").val(b_num);
			$("#booknumform").attr({
				method : "GET",
				action : "/orderinsertpage.do"
			});
			$("#booknumform").submit();
		})

	});
</script>
<style type="text/css">
.contain {
	width: 100%;
	height: 500px;
}

.product {
	height: 400px;
}

#fooooooter {
	margin-top: 170px;
}

.cartcontainer {
	width: 100%;
}

.product header {
	height: 370px !important;
	width: 220px;
}

.product .content {
	border-top: 1px solid #ccc;
	border-bottom: 1px soild #ccc !important;
}

#main {
	margin-left: 50px;
}

.modal-content {
	width: 500px;
	height: 735px;
}

.modal-body, .img-fluid {
	width: 100%;
	height: 700px;
}

.ekko-lightbox-item fade in show {
	width: 100%;
	height: 700px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<form id="booknumform">
			<input type="hidden" id="user_id" name="user_id"
				value="${sessionScope.user_id }"> <input type="hidden"
				id="book_number" name="book_number"> <input type="hidden"
				id="cart_buyquantity" name="cart_buyquantity">
		</form>
		<article>
			<div class="contain">
				<div class="cartcontainer">
					<section id="cart">
						<!-- 		상품1시작 -->

						<article class="product" data-num="${detailbook.book_number }">
							<header>
								<a href="/resources/image/${detailbook.book_image }"
									data-toggle="lightbox"> <img
									src="/resources/image/${detailbook.book_image }"
									class="img-fluid">
								</a> <img src="/resources/image/${detailbook.book_image }">
							</header>
							<div class="content divcontent">
								<!-- 상품이름 -->
								<h1>${detailbook.book_name}</h1>
								<!-- 상품 설명 -->
								<p>
									<b>저자</b>&nbsp;&nbsp;&nbsp;${detailbook.book_writer }
								</p>
								<br>
								<p>
									<b>분류</b>&nbsp;&nbsp;&nbsp;${detailbook.book_country },${detailbook.book_story }&nbsp;소설
								</p>
								<br>
								<p>
									<b>출판사</b>&nbsp;&nbsp;&nbsp;${detailbook.book_publisher }
								</p>
								<br>
								<p>
									<b>출판일</b>&nbsp;&nbsp;&nbsp;${detailbook.book_opening }
								</p>
								<br>
								<div id="primary_nav_wrap">
									<ul>
										<li><a class="btnpay">주문하기</a></li>
										<li><a class="cartlist">장바구니에 담기</a></li>
										<li><a href="/reviewboardList.do">회원리뷰</a></li>
										<li><a class="mylist">마이리스트에 추가</a></li>
									</ul>
								</div>
							</div>
							<footer class="content" id="fooooooter">
								<span class="qt-minus">-</span> <span class="qt">1</span> <span
									class="qt-plus">+</span>

								<h2 class="full-price">${detailbook.book_price}원</h2>

								<h2 class="price">${detailbook.book_price}원</h2>
							</footer>
						</article>
						<!-- 			상품1끝 -->
					</section>
				</div>
			</div>
			<div id="detailinfo">
				<div>
					<div style="border-bottom: 1px solid #ccc">
						<h1>책소개</h1>
					</div>

					<div style="padding: 10px;">${detailbook.book_bookinfo }</div>
					<div style="border-bottom: 1px solid #ccc">
						<h1>저자소개</h1>
					</div>
					<div style="padding: 10px;">${detailbook.book_writerinfo }</div>
					<div style="border-bottom: 1px solid #ccc">
						<h1>출판사리뷰</h1>
					</div>
					<div style="padding: 10px;">${detailbook.book_publisherreview }</div>
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