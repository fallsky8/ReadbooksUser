<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/best.css" type="text/css"
	media="screen" />
<title>리드북스베스트</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$(".btndetail").click(function() {
			var b_num = $(this).parents("tr").attr("data-num");
			$("#book_number").val(b_num);
			$("#booknumform").attr({
				"method" : "GET",
				"action" : "/book/bookdetail.do"
			});
			$("#booknumform").submit();
		});
	});
</script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<jsp:include page="../leftside.jsp"></jsp:include>
			<div id="best">
				<div id="bestform">
					<div id="besttitle">
						<h1>베스트</h1>
					</div>
					<div id="bestcontents">
						<form id="booknumform">
							<input type="hidden" id="book_number" name="book_number">
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
											<td><input type="button" class="btndetail" value="상세보기"></td>
											<td><input type="button" class="cartlist" value="장바구니">
												<a href="">찜하기</a></td>
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