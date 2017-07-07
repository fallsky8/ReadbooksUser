<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>공지사항</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/datatable.js"></script>
<script
	src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<script type="text/javascript">
	$(function() {
		var table = $('#example-table').DataTable();
		$("#example-table tbody").on('click', 'tr', function() {
			var data = table.row(this).data();
			$("#noticeboard_number").val(data[0]);
			$("#detailForm").attr({
				"method" : "get",
				"action" : "/noticeboarddetail.do"
			});
			$("#detailForm").submit();
		});
	});
</script>
<style type="text/css">
.table {
	width: 100%;
	border: 1px solid #5fc5c5;
	background-color: rgba(95, 197, 197, 0.1);
}

#btd1, #btd2 {
	border-top: 1px solid #5fc5c5;
}

div[class='row'] {
	float: left;
	width: 900px;
}

.dataTables_paginate {
	width: 570px;
	margin-top: -15px;
}

.col-sm-6 {
	width: 70%;
}

.col-sm-7 {
	width: 570px;
}

#boardList {
	margin-left: 180px;
}

#primary_nav_wrap ul #iii:NTH-CHILD(8) {
	background-color: #5fc5c5;
}

#sideMenu a:NTH-CHILD(2) {
	background-color: rgba(0, 0, 0, 0.15);
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
			<%--================상세 페이지 이동을 위한 FORM================= --%>
			<form name="detailForm" id="detailForm">
				<input type="hidden" name="noticeboard_number"
					id="noticeboard_number">
			</form>

			<div id="boardList">
				<table class="table" id="example-table">
					<thead>
						<tr>
							<th>글번호</th>
							<th>글제목</th>
							<th>작성일</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터 출력 -->
						<c:choose>
							<c:when test="${not empty noticeboardList}">
								<c:forEach var="noticeboardList" items="${noticeboardList}">
									<tr>
										<td>${noticeboardList.noticeboard_number}</td>
										<td>${noticeboardList.noticeboard_title}</td>
										<td>${noticeboardList.noticeboard_registerdate}</td>
										<td>${noticeboardList.noticeboard_writer}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td>등록된 게시물이 존재하지 않습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<%--==========================리스트 종료======================== --%>


		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>