<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/custom_tag.tld" prefix="tag"%>
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
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>리드북스에 오신 걸 환영합니다.</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" type="text/css"
	href="/resources/css/jquery.cleditor.css">
<script type="text/javascript"
	src="/resources/js/jquery.cleditor.min.js"></script>
<script type="text/javascript"
	src="/resources/js/jquery.cleditor.table.min.js"></script>
<script type="text/javascript">
	$(function() {
		$("#reviewboard_contents").cleditor({
			width : 500,
			height : 300
		});
		var getstar = "${reviewupdateData.reviewboard_star}";
		check = document.getElementById("star-rating-" + getstar);
		check.checked = true;
		// star rating
		$(".star-rating__input").click(function() {
			var star = $("input:radio[name='reviewboard_star']:checked").val();
		});
		/* 수정 버튼 클릭 시 처리 이벤트 */
		$("#boardUpdateBtn").click(function() {

			/* if ($('#file').val().indexOf(".") > -1) {
						var ext = $('#file').val().split('.').pop()
								.toLowerCase();
						if (jQuery.inArray(ext, [ 'gif', 'png', 'jpg',
								'jpeg' ]) == -1) {
							alert('gif,png,jpg,jpeg 파일만 업로드 할 수 있습니다.');
							return;
						}
					}
			 */
			//console.log("기본 파일명: " +$('#reviewboard_attachmentfile').val());
			$("#f_writeForm").attr({
				"method" : "POST",
				"action" : "/reviewboardUpdate.do"
			});
			$("#f_writeForm").submit();
		});

		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#boardListBtn").click(function() {
			location.href = "/reviewboardList.do";
		});
	});

	/* $(document)
			.ready(
					function() {
						/* 이미지 호버 이벤트 
						var img = $("<img>");
						$('#imgView')
								.hover(
										function() {
											img
													.attr({
														src : "/uploadStorage/${reviewupdateData.reviewboard_attachmentfile}",
														width : "450px",
														height : "200px"
													});
											img.addClass("imgViewData");
											$('#imgArea').append(img);
										}, function() {
											img.remove();
										});
					}); */
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

.table {
	width: 78%;
	margin-left: 210px;
	border: 1px solid #5fc5c5;
	background-color: rgba(95, 197, 197, 0.1);
}

#btd1, #btd2 {
	border-top: 1px solid #5fc5c5;
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

.reviewreplyupdatebtn {
	margin-left: 210px;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id='main'>
		<article>
			<div id="contentContainer">
				<div class="contentTB">
					<form id="f_writeForm" name="f_writeForm"
						enctype="multipart/form-data">
						<input type="hidden" id="reviewboard_number"
							name="reviewboard_number"
							value="${reviewupdateData.reviewboard_number}" /> <input
							type="hidden" name="page" id="page" value="${param.page}" /> <input
							type="hidden" name="pageSize" id="pageSize"
							value="${param.pageSize}" /> <input type="hidden"
							name="reviewboard_attachmentfile" id="reviewboard_attachmentfile"
							value="${reviewupdateData.reviewboard_attachmentfile}" />
						<table class="table">
							<tr>
								<th id="btd2">글번호</th>
								<td id="btd2">${reviewupdateData.reviewboard_number}</td>
								<th id="btd2">작성일</th>
								<td id="btd2"><input type="hidden"
									id="reviewboard_registerdate" name="reviewboard_registerdate"
									value="${reviewupdateData.reviewboard_registerdate}">${reviewupdateData.reviewboard_registerdate}</td>
							<tr>
								<th>작성자</th>
								<td colspan="3"><input type="hidden" id="user_id"
									name="user_id" value="${reviewupdateData.user_id}">${reviewupdateData.user_id}</td>
							</tr>
							<tr>
								<th>글제목</th>
								<td colspan="3"><input type="text" name="reviewboard_title"
									id="reviewboard_title"
									value="${reviewupdateData.reviewboard_title}"
									class="form-control" /></td>
							</tr>
							<tr>
								<th>내용</th>
								<td colspan="3"><textarea name="reviewboard_contents"
										id="reviewboard_contents" class="form-control">${reviewupdateData.reviewboard_contents}</textarea></td>
							</tr>
							<tr>
								<th>첨부파일</th>
								<td colspan="3"><input type="file" name="file" id="file"
									class="btn btn-default"><label id="imgView">기존
										이미지 파일명: ${reviewupdateData.reviewboard_attachmentfile}<span
										id="imgArea"></span>
								</label></td>
							</tr>
							<tr>
								<th>별점</th>
								<td colspan="3">
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
							</tr>
						</table>
					</form>
				</div>

				<div class="reviewreplyupdatebtn">
					<input type="button" value="수정" id="boardUpdateBtn"
						class="btn btn-default" /> <input type="button" value="목록"
						id="boardListBtn" class="btn btn-default" />
				</div>
			</div>
		</article>
		<aside>
			<div id="serviceWrap">
				<div class="ss_myshop">
					<a href="/siteMap.do"><span>주요서비스</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/usercheck.do"><span>로그인</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/userjoin.do"><span>회원가입</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/cartlistGet.do"><span>쇼핑카트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/mylistGet.do"><span>마이리스트</span></a>
				</div>
				<div class="ss_myshop">
					<a href="/orderSelect.do"><span>주문내역</span></a>
				</div>
			</div>
		</aside>
		<div id="onTop" class="ss_top">
			<a href="javascript://"><img
				src="http://image.bandinlunis.com/images/common/2014/btn_top.png"></a>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>

</body>
</html>