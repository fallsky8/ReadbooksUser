<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰게시판 글쓰기</title>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet"
	href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
<!-- <link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"> -->
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
	$(document).ready(function() {
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
</style>

</head>
<body>
	<div class="contentContainer">
		<div class="contentTit">
			<h3>게시판 글작성</h3>
		</div>
		<div class="contentTB">
			<form id="f_writeForm" name="f_writeForm"
				enctype="multipart/form-data">
				<input type="hidden" name="csrf" value="${CSRF_TOKEN}" /> <input
					type="hidden" name="user_id" id="user_id"
					value="${sessionScope.user_id}" />
				<table id="boardWrite">
					<colgroup>
						<col width="17%" />
						<col width="83%" />
					</colgroup>
					<tr>
						<td class="ac">작성자</td>
						<td>${sessionScope.user_id }</td>
					</tr>
					<tr>
						<td class="ac">글제목</td>
						<td><input type="text" name="reviewboard_title"
							id="reviewboard_title"></td>
					</tr>
					<tr>
						<td class="ac">내용</td>
						<td><textarea name="reviewboard_contents"
								id="reviewboard_contents"></textarea></td>
					</tr>
					<tr>
						<td class="ac">첨부파일</td>
						<td><input type="file" name="file" id="file"></td>
					</tr>
					<tr>
						<td class="ac">별점</td>
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
		<div id="boardBut">
			<input type="button" value="저장" class="but" id="boardInsert">
			<input type="button" value="목록" class="but" id="boardList">
		</div>
	</div>
</body>
</html>