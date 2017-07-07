<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>1:1 문의</title>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		$("#boardList").click(function() {
			location.href = "/inquireboardList.do";
		});
	})
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

.reviewreply {
	margin-left: 210px;
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

			<table class="table">
				<tr>
					<th id="btd2">작성자</th>
					<td id="btd2">${inquireboarddetail.user_id}</td>
					<th id="btd2">작성일</th>
					<td id="btd2">${inquireboarddetail.inquireboard_registerdate}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td>${inquireboarddetail.inquireboard_title}</td>
					<th>문의유형</th>
					<td>${inquireboarddetail.inquireboard_type}관련</td>

				</tr>
				<tr>
					<th>질문</th>
					<td colspan="3">Q .
						${inquireboarddetail.inquireboard_contents}</td>
				</tr>
				<c:if
					test="${inquireboarddetail.inquireboard_attachmentfile!=null }">
					<tr>
						<th>이미지</th>
						<td colspan="3"><input type="image" width="320px"
							height="240px"
							src="resources/image/${inquireboarddetail.inquireboard_attachmentfile}"></td>
					</tr>
				</c:if>
				<c:if
					test="${inquireboarddetail.inquireboard_attachmentfile==null }">
					<tr>
						<th>이미지</th>
						<td colspan="3">등록하신 이미지가 없습니다.</td>
					</tr>
				</c:if>
				<c:if test="${inquireboarddetail.inquireboard_answer==null}">
					<tr>
						<th>답변</th>
						<td colspan="3">답변대기 상태입니다.</td>
					</tr>
				</c:if>
				<c:if test="${inquireboarddetail.inquireboard_answer!=null}">
					<tr>
						<th>답변</th>
						<td colspan="3">A . ${inquireboarddetail.inquireboard_answer}</td>
					</tr>
				</c:if>
			</table>
			<input type="button" value="목록" id="boardList"
				class="btn btn-default" style="float: right; margin-top: -20px;">

		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>