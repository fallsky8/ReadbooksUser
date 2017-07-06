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
<script type="text/javascript">
	$(function() {

		$("#payment").click(function() {
			$("#order_info").attr({
				"method" : "POST",
				"action" : "/orderInsert.do"
			});
			$("#order_info").submit();
		});
	});
</script>
<title>주문 목록</title>
</head>
<body>

	<p>유저아이디 : ${orderUserGet.user_id };</p>
	<p>유저주소 : ${orderUserGet.user_address };</p>

	<c:forEach var="orderlist" items="${orderInfoGet}">
		<table>
			<tr>

				<th>저자</th>
				<td>${orderlist.book_writer}</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>${orderlist.book_price}</td>
			</tr>


			<tr>

				<th>저자</th>
				<td>${orderlist.cart_buyquantity}</td>
			</tr>
			<tr>
				<th>가격</th>
				<td>${orderlist.book_price}</td>
			</tr>


		</table>

	</c:forEach>
	<input type="button" id="payment" value="전송 ">
</body>
</html>