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
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<title>${detailbook.book_name}</title>
<script type="text/javascript">
	$(function() {
		$(".btnpay").on({
			"click" : function() {
				$("#booknumform").attr("action", "/orderinsertpage.do");
				$("#booknumform").submit();
			}
		});
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
	height: 300px !important;
}

#main {
	margin-left: 50px;
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
				id="cart_buyquantity" id="cart_buyquantity" name="cart_buyquantity">
		</form>
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

						<article class="product" data-num="${detailbook.book_number }">
							<header>
								<!-- 				삭제 이미지 -->
								<!-- 					상품이미지 -->
								<img src="/resources/image/${detailbook.book_image }">
								<!-- 제거 -->
							</header>
							<div class="content">
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
										<li><a href="/reviewboardlist.do">회원리뷰</a></li>
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
					<div>
						<h1>책소개</h1>
					</div>
					<div>
						<p>${detailbook.book_bookinfo }</p>
					</div>
					<div>
						<h1>저자소개</h1>
					</div>
					<div>${detailbook.book_writerinfo }</div>
					<div>
						<h1>출판사리뷰</h1>
					</div>
					<div>${detailbook.book_publisherreview }</div>
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