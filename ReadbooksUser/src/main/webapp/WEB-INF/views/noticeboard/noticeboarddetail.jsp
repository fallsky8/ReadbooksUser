<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>공지사항</title>
<script type="text/javascript">
	$(function() {
		$("#noticeboardList").click(function() {
			location.href = "/noticeboardList.do";
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
			<div>
				<table class="table">
					<tr>
						<th>작성자</th>
						<td>${noticeboarddetail.noticeboard_writer}</td>
						<th>작성일</th>
						<td>${noticeboarddetail.noticeboard_registerdate}</td>
					</tr>
					<tr>
						<td></td>
						<td></td>
						<td></td>
						<td></td>
					</tr>
					<tr>
						<th>제목</th>
						<td></td>
						<td colspan="2" style="text-align: left;">${noticeboarddetail.noticeboard_title}</td>
					</tr>
					<tr>
						<th>내용</th>
						<td></td>
						<td colspan="2" style="text-align: left;">${noticeboarddetail.noticeboard_contents}
						</td>
					</tr>
				</table>
				<input class="btn btn-default" type="button" id="noticeboardList"
					value="목록" style="margin-left: 827px;">
			</div>
		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>