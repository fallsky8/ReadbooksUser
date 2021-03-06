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
<title>검색 결과</title>
<script type="text/javascript">
	$(function() {
		$(document).on('click', '[data-toggle="lightbox"]', function(event) {
			event.preventDefault();
			$(this).ekkoLightbox();
		});
		var table = $('#keywords').DataTable();
	});
</script>
<style type="text/css">
#serviceWrap {
	top: 260px !important;
}

.ss_fixed {
	margin-top: -220px !important;
}

#serviceWrap .ss_myshop {
	border: 1px solid #e9e9e9;
}

#serviceWrap .ss_myshop a {
	color: #5fc5c5;
	font: normal 12px;
	font-weight: bold;
	padding: 5px;
}

input[type='search'] {
	margin-left: 159px;
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
							<c:when test="${not empty searchbooklist}">
								<table id="keywords">
									<thead>
										<tr>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="searchbooklist" items="${searchbooklist}">
											<tr>
												<td>
													<article class="product"
														data-num="${searchbooklist.book_number }">

														<header>
															<a href="/resources/image/${searchbooklist.book_image }"
																data-toggle="lightbox"> <img
																src="/resources/image/${searchbooklist.book_image }"
																class="img-fluid">
															</a> <img
																src="/resources/image/${searchbooklist.book_image }">
														</header>
														<div class="content">
															<!-- 상품이름 -->
															<h1>${searchbooklist.book_name}</h1>
															<!-- 상품 설명 -->
															<p>${searchbooklist.book_writer }
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
															<span class="qt-minus">-</span> <span class="qt">1</span>
															<span class="qt-plus">+</span>

															<h2 class="full-price">${searchbooklist.book_price}원</h2>

															<h2 class="price">${searchbooklist.book_price}원</h2>
														</footer>
													</article>
												</td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
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