<%@page import="com.readbooks.cartvo.CartVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>장바구니</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$('.bt_up').click(function() {
			var n = $('.bt_up').index(this);
			var num = $(".num:eq(" + n + ")").val();
			num = $(".num:eq(" + n + ")").val(num * 1 + 1);
			if (num.val() <= 0 || num.val() >= 51) {
				alert("1이상 50이하 입력해주세요.")
				num.val(1);
			}

		});
		$('.bt_down').click(function() {
			var n = $('.bt_down').index(this);
			var num = $(".num:eq(" + n + ")").val();
			num = $(".num:eq(" + n + ")").val(num * 1 - 1);
			if (num.val() <= 0 || num.val() >= 51) {
				alert("1이상 50이하 입력해주세요.")
				num.val(1);
			}

		});

		//checkbox이벤트
		$('.check-items input[type=checkbox]').on(
				'click',
				function() {
					var group = $(this).parents('.check-items');
					var input = group.find('input');
					var inputTotal = input.length;
					var inputCheckTotal = group.find('input:checked').length;

					if (inputTotal == inputCheckTotal) {
						$(this).parents('.check-group').find('.all').prop(
								'checked', true);
					} else if (inputCheckTotal == 0) {
						$(this).parents('.check-group').find('.all').prop(
								'checked', false);
					}
				});

		$('.all').on(
				'click',
				function() {
					if (this.checked) {
						$(this).parents('.check-group').find(
								'.check-items input').each(function() {
							this.checked = true;
						});
					} else {
						$(this).parents('.check-group').find(
								'.check-items input').each(function() {
							this.checked = false;
						});
					}
				});
	});
</script>
</head>
<body>

	<div id="wrap">
		<form id="booknumform">
			<input type="hidden" id="user_id" name="user_id"
				value="${sessionScope.user_id }">
		</form>
		<header>
			<jsp:include page="../header.jsp"></jsp:include>
		</header>
		<div id="main">
			<article>
				<div id="cartwrap">
					<div id="cartcheck">
						<c:choose>
							<c:when test="${sessionScope.user_id!=null}">
								<div class="check-group">
									<table border="1">
										<tr>
											<th><input type="checkbox" id="all" class="all" /></th>
											<th width="120">상품이미지</th>
											<th width="300">상품</th>
											<th width="200">가격</th>
											<th width="200">수량 및 상태</th>
										</tr>
									</table>
									<div class="check-items">
										<c:forEach var="booklist" items="${cartbooklist}">
											<table border="1">
												<tr>
													<th><input type="checkbox"></th>
													<th width="120"><img alt="책상세이미지"
														src="/resources/image/${booklist.book_image }" width="100"
														height="120"></th>
													<th width="300">${booklist.book_name }</th>
													<th width="200">${booklist.book_price}원</th>
													<td width="200"><input type="text" name="num"
														class="num" id="${booklist.cart_number}" size="1"
														readonly="readonly" value="${booklist.cart_buyquantity}" />
														<img src="http://placehold.it/10x10" width="10"
														height="10" class="bt_up" /> <img
														src="http://placehold.it/10x10" width="10" height="10"
														class="bt_down" /><input type="button" value="수정">
														<input type="button" value="삭제"></td>
												</tr>
											</table>
										</c:forEach>
									</div>
								</div>
							</c:when>
							<c:otherwise>
						카트에 등록된 상품이 없습니다.
						</c:otherwise>
						</c:choose>
					</div>
					<div id="cartsum">
						<table>
							<tr>
								<th>선택한 상품개수</th>
								<th>선택한 상품의 총 금액</th>
								<th rowspan="2">+</th>
								<th>총배송비</th>
								<th rowspan="2">-</th>
								<th>상품할인</th>
								<th rowspan="2">=</th>
								<th>최종결제금액</th>
							</tr>
							<tr>
								<td>2개</td>
								<td>25,600원</td>
								<td>0원</td>
								<td>0원</td>
								<td>25,600원</td>
							</tr>
							<tr>
								<td>적립포인트</td>
								<td>200포인트</td>
							</tr>
						</table>
					</div>
					<div id="cartbtn">
						<button>쇼핑계속하기</button>
						<button>주문하기</button>
					</div>
				</div>
			</article>
			<aside>aside</aside>
		</div>

		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>