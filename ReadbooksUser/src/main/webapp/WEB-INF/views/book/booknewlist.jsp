<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css"
	media="screen" />
<title>리드북스신간</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$(".btndetail").click(function() {
			var b_num = $(this).parents("tr").attr("data-num");
			$("#book_number").val(b_num);
			$("#booknumform").attr({
				"method" : "GET",
				"action" : "/bookdetail.do"
			});
			$("#booknumform").submit();
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
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<jsp:include page="../leftside.jsp"></jsp:include>
			<div id="new">
				<div id="newform">
					<div id="newtitle">
						<h1>신간</h1>
					</div>
					<div id="newcontents">
						<form id="booknumform">
							<input type="hidden" id="book_number" name="book_number">
						</form>
						<c:choose>
							<c:when test="${not empty newbooklist}">
								<c:forEach var="newbook" items="${newbooklist}"
									varStatus="status">
									<table>
										<tr data-num="${newbook.book_number} ">
											<td>${newbook.book_number }</td>
											<td><img alt="책상세이미지"
												src="/resources/image/${newbook.book_image }" width="150"
												height="180"></td>
											<td>${newbook.book_name }</td>
											<td>${newbook.book_writer }|${newbook.book_publisher}</td>
											<td>${newbook.book_price}</td>
											<td><b>수량</b><input type="text" name="num" value="1"
												id="num" class="num" size="2" readonly="readonly" /> <img
												src="http://placehold.it/10x10" alt="" width="10"
												height="10" class="bt_up" /> <img
												src="http://placehold.it/10x10" alt="" width="10"
												height="10" class="bt_down" /></td>
											<td><input type="button" class="btndetail" value="상세보기"></td>
											<td><input type="button" class="cartlist"
												value="장바구니에 담기"></td>
											<td><input type="button" class="mylist"
												value="마이리스트에 추가"></td>
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
			<jsp:include page="../rightside.jsp"></jsp:include>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>