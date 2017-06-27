<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>문의하기</title>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function() {
		/* 저장 버튼 클릭 시 처리 이벤트 */
		$("#inquireboardInsert").click(function() {
			// 입력값 체크 
			if (!chkSubmit($('#inquireboard_title'), "제목을"))
				return;
			else if (!chkSubmit($('#inquireboard_contents'), "작성할 내용을"))
				return;

			$("#inquireinsertForm").attr({
				"method" : "POST",
				"action" : "/inquireboardInsert.do"
			});
			$("#inquireinsertForm").submit();

		});

		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#inquireboardList").click(function() {
			location.href = "/inquireboardList.do"
		});
	});
</script>
<style type="text/css">
.table {
	width: 78%;
	margin-left: 210px;
	border: 1px solid #5fc5c5;
	background-color: rgba(95, 197, 197, 0.1);
}

#btd1, #btd2 {
	border-top: 1px solid #5fc5c5;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="/noticeboardList.do" class="menu-item">고객센터</a> <a
					href="/noticeboardList.do" class="menu-item">공지사항</a> <a
					href="/faqboardList.do" class="menu-item">자주 묻는 질문</a> <a
					href="/inquireboardList.do" class="menu-item">1:1 문의</a>
			</div>
			<h2>1:1 문의</h2>
			<form id="inquireinsertForm" name="inquireinsertForm"
				enctype="multipart/form-data">
				<input type="hidden" name="user_id" id="user_id"
					value="${sessionScope.user_id }">
				<table class="table">
					<tr id="btd1">
						<td id="btd2">상담유형</td>
						<td id="btd2"><select id="inquireboard_type"
							name="inquireboard_type">
								<option value="회원">회원</option>
								<option value="상품">상품</option>
								<option value="환불">환불</option>
						</select></td>
					</tr>
					<tr>
						<td>글제목</td>
						<td><input type="text" name="inquireboard_title"
							id="inquireboard_title"></td>
					</tr>
					<tr>
						<td>문의내용</td>
						<td><textarea name="inquireboard_contents"
								id="inquireboard_contents"></textarea></td>
					</tr>
					<tr>
						<td>첨부파일</td>
						<td><input type="file" name="file" id="file"></td>
					</tr>
				</table>
			</form>
			<input type="button" class="btn btn-default" value="문의하기"
				id="inquireboardInsert"> <input type="button"
				class="btn btn-default" value="목록" id="inquireboardList">
		</article>
		<aside>aside</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>