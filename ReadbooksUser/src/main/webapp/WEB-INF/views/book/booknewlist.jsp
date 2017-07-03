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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/datatable.js"></script>
<script
	src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>리드북스 신간</title>
<script type="text/javascript">
	$(function() {
		var table = $('#keywords').DataTable();
	});
</script>
<style type="text/css">
#primary_nav_wrap ul #iii:NTH-CHILD(5) {
	background-color: #5fc5c5;
}
input[type='search'] {
	margin-left: 159px;
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
							<c:when test="${not empty newbooklist}">
								<table id="keywords">
									<thead>
										<tr>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="newbooklist" items="${newbooklist}">
											<tr>
												<td>
													<article class="product"
														data-num="${newbooklist.book_number }">
														<header>
															<!-- 				삭제 이미지 -->
															<!-- 					상품이미지 -->
															<img src="/resources/image/${newbooklist.book_image }">
															<!-- 제거 -->
														</header>
														<div class="content">
															<!-- 상품이름 -->
															<h1>${newbooklist.book_name}</h1>
															<!-- 상품 설명 -->
															<p>${newbooklist.book_writer }
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

															<h2 class="full-price">${newbooklist.book_price}원</h2>

															<h2 class="price">${newbooklist.book_price}원</h2>
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