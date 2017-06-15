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
		$(".btnpay").on({
			"click" : function() {
				$("#detailbookform").attr("action", "/orderinsertpage.do");
				$("#detailbookform").submit();
			}
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
			<form id="detailbookform">
				<input id="book_number" type="hidden" name="book_number"
					value="${detailbook.book_number}"> <input id="book_name"
					type="hidden" name="book_name" value="${detailbook.book_name }">
				<input type="hidden" id="user_id" name="user_id"
					value="${sessionScope.user_id }">
			</form>
			<div id="detailcontents">
				<div id="detailleft">
					<input type="hidden" value="${detailbook.book_number} "> <img
						alt="책이미지" src="/resources/image/${detailbook.book_image }">
				</div>
				<div id="detailright">
					<div id="detailtitle">
						<ul>
							<li>수량<input type="text" name="num" value="1" id="num"
								class="num" size="2" readonly="readonly" /> <img
								src="http://placehold.it/10x10" alt="" width="10" height="10"
								class="bt_up" /> <img src="http://placehold.it/10x10" alt=""
								width="10" height="10" class="bt_down" /></li>
							<li>${detailbook.book_name }</li>
							<li>${detailbook.book_writer }|${detailbook.book_publisher }</li>
							<li>${detailbook.book_price }</li>
							<li>${detailbook.book_opening }</li>
						</ul>
					</div>
					<div id="detailbtn">
						<ul>
							<li><a class="btnpay">바로구매</a></li>
							<li><a href="/cartInsert.do">장바구니에 담기</a></li>
							<li><a href="/mylist.do">찜하기</a></li>
							<li><a href="/reviewboardlist.do">회원리뷰</a></li>
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
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>