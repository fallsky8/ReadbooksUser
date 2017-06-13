<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/detail.css" type="text/css"
	media="screen" />
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$(".btnpay").on(
				{
					"click" : function() {
						$("#detailbookform").attr("action",
								"../order/orderinsertpage.do");
						$("#detailbookform").submit();
					}
				})
	})
</script>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<form id="detailbookform">
			<input id="book_number" type="hidden" name="book_number"
				value="${detailbook.book_number}"> <input id="book_name"
				type="hidden" name="book_name" value="${detailbook.book_name }">
		</form>
		<div id="detailcontents">
			<div id="detailleft">
				<input type="hidden" value="${detailbook.book_number} "> <img
					alt="책이미지" src="/resources/image/${detailbook.book_image }">
			</div>
			<div id="detailright">
				<div id="detailtitle">
					<ul>
						<li>${detailbook.book_name }</li>
						<li>${detailbook.book_writer }|${detailbook.book_publisher }</li>
						<li>${detailbook.book_price }</li>
						<li>${detailbook.book_price }</li>
					</ul>
				</div>
				<div id="detailbtn">
					<ul>
						<li><a class="btnpay">바로구매</a></li>
						<li><a href="../cart/cartlistpage.do">장바구니</a></li>
						<li><a href="../mylist/mylistpage.do">찜하기</a></li>
						<li><a href="../review/reviewboardlist.do">회원리뷰</a></li>
					</ul>
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
						<div>
							<h1>리뷰글</h1>
						</div>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>