<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/buy.css" type="text/css"
	media="screen" />
<title>주문</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnpayment").click(function() {
			$("#orderpaymentform").attr({
				"method" : "POST",
				"action" : "/order/orderInsert.do"
			});
			$("#orderpaymentform").submit();
		});
	});
</script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>

		<div id="contents">
			<jsp:include page="../leftside.jsp"></jsp:include>


			<c:choose>
				<c:when test="${!empty sessionScope.user_id } ">

					<div id="buywrap">
						<div id="buycheck">
							<h3>1.주문상품확인</h3>
							<form>
								<table border="1">
									<thead>
										<tr>
											<td>상품이미지</td>
											<td>상품명</td>
											<td>상품가격</td>
											<td>주문금액</td>
											<td>주문비밀번호</td>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>${bookvo.book_image}</td>
											<td>${bookvo.book_name}</td>
											<td>${bookvo.book_price }</td>
											<td>${bookvo.book_number}</td>
											<td>주문비밀번호</td>
										</tr>
									</tbody>
								</table>
								<div>
									<table>
										<thead>
											<tr>
												<th>총상품갯수</th>
												<th>총상품금액</th>
												<th rowspan="2">+</th>
												<th>총배송비</th>
												<th rowspan="2">-</th>
												<th>포인트할인</th>
												<th rowspan="2">=</th>
												<th>최종결제금액</th>
											</tr>
											<tr>
												<td>4종(4개)</td>
												<td>56,700원</td>
												<td>0원</td>
												<td>0원</td>
												<td>56,700원</td>
											</tr>
										</thead>
										<tbody>
											<tr>
												<td>포인트</td>
												<td><input type="text">원</td>
												<td>최대가능포인트</td>
											</tr>
											<tr>
												<td>적립포인트</td>
												<td>5000포인트</td>
											</tr>
										</tbody>
									</table>
								</div>
							</form>
						</div>
						<div id="buyinfo">
							<h3>2.배송지 확인</h3>
							<form id="orderpaymentform" name="orderpaymentform">
								<table border="1">
									<tr>
										<td>이름</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td>배송주소</td>
										<td><input type="text"><input type="button"
											value="주소찾기"><br> <input type="text"><input
											type="text" placeholder="나머지주소입력"></td>
									</tr>
									<tr>
										<td>핸드폰</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td>이메일</td>
										<td><input type="text"></td>
									</tr>
									<tr>
										<td>배송메세지</td>
										<td><input type="text" placeholder="택배기사님께 전달할 메세지"></td>
									</tr>
								</table>
							</form>
						</div>
						<div id="buymethod">
							<h3>3.결제방법</h3>
							<form>
								<table border="1">
									<tr>
										<td>결제방법</td>
										<td><input type="radio">신용카드</td>
										<td><input type="radio">계좌이체</td>
										<td><input type="radio">무통장입금</td>
								</table>
							</form>
						</div>
						<div id="buybtn">
							<input type="button" id="btnpayment" value="주문">
						</div>
					</div>

				</c:when>
				<c:otherwise>

				</c:otherwise>
			</c:choose>



			<jsp:include page="../rightside.jsp"></jsp:include>
		</div>

		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>