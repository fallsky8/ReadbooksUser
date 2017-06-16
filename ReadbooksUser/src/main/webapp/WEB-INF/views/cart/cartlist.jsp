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
	});
</script>
</head>
<body>
	<div id="wrap">
		<form id="booknumform">
			<input type="hidden" id="user_id" name="user_id"
				value="${sessionScope.user_id }">
		</form>
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<div id="cartwrap">
				<div id="cartcheck">
					<c:choose>
						<c:when test="${sessionScope.user_id!=null}">
							<table>
								<tr>
									<td><input type="checkbox"></td>
									<td></td>
									<td>상품</td>
									<td>수량</td>
								</tr>
								<c:forEach var="booklist" items="${cartbooklist}">
									<tr data-num="${booklist.cart_number}">
										<th><input type="checkbox"></th>
										<th><img alt="책상세이미지"
											src="/resources/image/${booklist.book_image }" width="100"
											height="120"></th>
										<th>${booklist.book_name }<br>${booklist.book_price}원</th>
										<td><input type="text" name="num" class="num"
											id="${booklist.cart_number}" size="1" readonly="readonly"
											value="${booklist.cart_buyquantity}" /> <img
											src="http://placehold.it/10x10" width="10" height="10"
											class="bt_up" /> <img src="http://placehold.it/10x10"
											width="10" height="10" class="bt_down" /><input
											type="button" value="수정"> <input type="button"
											value="삭제"></td>
									</tr>
								</c:forEach>
							</table>
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
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>