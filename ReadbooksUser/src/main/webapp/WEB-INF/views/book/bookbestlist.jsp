<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />

<title>리드북스베스트</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$(".btndetail").click(function() {
			var c_num = $(this).parents("tr").attr("data-num");
			var c_number = $("#" + c_num).val();
			var cart_num = $("#" + c_num).val();
			$("#cart_buyquantity").val(cart_num);
			var b_num = $(this).parents("tr").attr("data-num");
			$("#book_number").val(b_num);
			$("#booknumform").attr({
				"method" : "GET",
				"action" : "/bookdetail.do"
			});
			$("#booknumform").submit();
		});

		$(".cartlist").click(function() {
			var c_num = $(this).parents("tr").attr("data-num");
			var c_number = $("#" + c_num).val();
			var cart_num = $("#" + c_num).val();
			$("#cart_buyquantity").val(cart_num);
			var b_num = $(this).parents("tr").attr("data-num");
			$("#book_number").val(b_num);
			$.ajax({
				url : "/cartInsert.do",
				type : "GET",
				data : $("#booknumform").serialize(),
			})

			var context = confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?");
			if (context == true) {
				location.href = "/cartlistGet.do";
			} else {
			}
		});
		$(".mylist").click(function() {
			var b_num = $(this).parents("tr").attr("data-num");
			$("#book_number").val(b_num);
			$.ajax({
				url : "/mylistInsert.do",
				type : "GET",
				data : $("#booknumform").serialize(),
				success : function() {
					var context = confirm("마이리스트에 추가되었습니다. 마이리스트로 이동하시겠습니까?");
					if (context == true) {
						location.href = "/mylistGet.do";
					} else {
					}
				}
			})
		});

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
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="#" class="menu-item">Home</a> <a href="#" class="menu-item">Collections</a>
				<a href="#" class="menu-item">Communities</a> <a href="#"
					class="menu-item">Profile</a> <a href="#" class="menu-item">Notifications</a>
				<a href="#" class="menu-item">Settings</a> <a href="#"
					class="menu-item">Send feedback</a> <a href="#" class="menu-item">Help</a>
			</div>
			<div id="best">
				<div id="bestform">
					<div id="bestcontents">
						<form id="booknumform">
							<input type="hidden" id="user_id" name="user_id"
								value="${sessionScope.user_id }"> <input type="hidden"
								id="book_number" name="book_number"> <input
								type="hidden" id="cart_buyquantity" id="cart_buyquantity"
								name="cart_buyquantity">
						</form>
						<c:choose>
							<c:when test="${not empty bestbooklist}">
								<c:forEach var="bestbook" items="${bestbooklist}"
									varStatus="status">
									<table>
										<tr data-num="${bestbook.book_number} ">
											<td>${bestbook.book_number }</td>
											<td><img alt="책상세이미지"
												src="/resources/image/${bestbook.book_image }" width="150"
												height="180"></td>
											<td>${bestbook.book_name }</td>
											<td>${bestbook.book_writer }|${bestbook.book_publisher}</td>
											<td>${bestbook.book_price}</td>
											<td><b>수량</b><input type="text" name="num" class="num"
												id="${bestbook.book_number}" size="1" readonly="readonly"
												value="1" /> <img src="http://placehold.it/10x10"
												width="10" height="10" class="bt_up" /> <img
												src="http://placehold.it/10x10" width="10" height="10"
												class="bt_down" /></td>
											<td><nav id="primary_nav_wrap">
													<ul>
														<li><a class="btndetail">상세보기</a></li>
														<li><a class="cartlist">장바구니에 담기</a></li>
														<li><a class="mylist">마이리스트에 추가</a></li>
														<li><a class="orderinsert">주문하기</a></li>
													</ul>
												</nav>
											<td>
										</tr>
									</table>
								</c:forEach>
							</c:when>
							<c:otherwise>
			등록된 책이 존재하지 않습니다.
		</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</article>
		<aside>aside</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>