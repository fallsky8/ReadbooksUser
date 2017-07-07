<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰게시판 글쓰기</title>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/swipers.css" type="text/css"
	media="screen" />
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.cleditor.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>리드북스에 오신 걸 환영합니다.</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.cleditor.min.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.cleditor.table.min.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		$("#reviewboard_contents").cleditor({
			width : 650,
			height : 340
		});
		var getstar = "1";
		check = document.getElementById("star-rating-" + getstar);
		check.checked = true;
		// star rating
		$(".star-rating__input").click(function() {
			var star = $("input:radio[name='reviewboard_star']:checked").val();
		});
		var locked = 0;
		/* 저장 버튼 클릭 시 처리 이벤트 */
		$("#boardInsert").click(function() {

			$("#f_writeForm").attr({
				"method" : "POST",
				"action" : "/reviewboardInsert.do"
			});
			$("#f_writeForm").submit();

		});

		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#boardList").click(function() {
			location.href = "/reviewboardList.do"
		});
	});
</script>
<style type="text/css">
.star-rating {
	font-size: 0;
}

.star-rating__wrap {
	display: inline-block;
	font-size: 1rem;
}

.star-rating__wrap:after {
	content: "";
	display: table;
	clear: both;
}

.star-rating__ico {
	float: right;
	padding-left: 2px;
	cursor: pointer;
	color: #FFB300;
}

.star-rating__ico:last-child {
	padding-left: 0;
}

.star-rating__input {
	display: none;
}

.star-rating__ico:hover:before, .star-rating__ico:hover ~
	.star-rating__ico:before, .star-rating__input:checked ~
	.star-rating__ico:before {
	content: "\f005";
}

#title, #boardBut {
	margin-left: 210px;
}

.table {
	width: 80%;
	margin-left: 210px;
	border: 1px solid #5fc5c5;
	background-color: rgba(95, 197, 197, 0.1);
}

/* #tr td { */
/* 	border-bottom: 1px solid #5fc5c5 !important; */
/* } */

/* #tr td:NTH-CHILD(1) { */
/* 	border-right: 1px solid #5fc5c5 !important; */
/* } */
#btd1, #btd2 {
	border-top: 1px solid #5fc5c5;
}

.reviewboardwritebtn {
	margin-left: 210px;
}

#serviceWrap {
	top: 260px !important;
}

.ss_fixed {
	margin-top: -220px !important;
}

#serviceWrap .ss_myshop {
	border: 1px solid #e9e9e9;
}

#serviceWrap .ss_myshop a {
	color: #5fc5c5;
	font: normal 12 px;
	font-weight: bold;
	padding: 5px;
}
</style>

</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div class="contentContainer">
				<div id="title" class="contentTit">
					<h3>게시판 글작성</h3>
				</div>
				<div class="contentTB">
					<form id="f_writeForm" name="f_writeForm"
						enctype="multipart/form-data">
						<input type="hidden" name="csrf" value="${CSRF_TOKEN}" /> <input
							type="hidden" name="user_id" id="user_id"
							value="${sessionScope.user_id}" />
						<table class="table" id="boardWrite">
							<tr id="btd1">
								<th id="btd1">작성자</th>
								<td id="btd1">${sessionScope.user_id }</td>
							</tr>
							<tr id="tr">
								<th>글제목</th>
								<td><input type="text" name="reviewboard_title"
									id="reviewboard_title" class="form-control"></td>
							</tr>

							<!-- <textarea name="reviewboard_contents" id="reviewboard_contents"
								class="form-control"></textarea> -->

							<tr id="tr">
								<th>내용</th>
								<td><textarea name="reviewboard_contents"
										id="reviewboard_contents" class="form-control"></textarea></td>

							</tr>

							<tr id="tr">
								<th>첨부파일</th>
								<td><input type="file" name="file" id="file"
									class="btn btn-default"></td>
							</tr>

							<tr id="tr">
								<th>별점</th>
								<td>
									<div class="star-rating">
										<div class="star-rating__wrap">
											<input class="star-rating__input" id="star-rating-5"
												type="radio" name="reviewboard_star" value="5"> <label
												class="star-rating__ico fa fa-star-o fa-lg"
												for="star-rating-5" title="5 out of 5 stars"></label> <input
												class="star-rating__input" id="star-rating-4" type="radio"
												name="reviewboard_star" value="4"> <label
												class="star-rating__ico fa fa-star-o fa-lg"
												for="star-rating-4" title="4 out of 5 stars"></label> <input
												class="star-rating__input" id="star-rating-3" type="radio"
												name="reviewboard_star" value="3"> <label
												class="star-rating__ico fa fa-star-o fa-lg"
												for="star-rating-3" title="3 out of 5 stars"></label> <input
												class="star-rating__input" id="star-rating-2" type="radio"
												name="reviewboard_star" value="2"> <label
												class="star-rating__ico fa fa-star-o fa-lg"
												for="star-rating-2" title="2 out of 5 stars"></label> <input
												class="star-rating__input" id="star-rating-1" type="radio"
												name="reviewboard_star" value="1"> <label
												class="star-rating__ico fa fa-star-o fa-lg"
												for="star-rating-1" title="1 out of 5 stars"></label>
										</div>
									</div>
								</td>
							</tr>

						</table>

					</form>
				</div>
				<div class="reviewboardwritebtn">
					<input type="button" value="저장" class="btn btn-default"
						id="boardInsert"> <input type="button" value="목록"
						class="btn btn-default" id="boardList">
				</div>
			</div>
		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>