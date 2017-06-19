<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/board.css" type="text/css"
	media="screen" />
<title>공지사항 게시판</title>
</head>
<body>
	<div class="tbl-header">
		<table>
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>등록일자</th>
				</tr>
			</thead>
		</table>
	</div>

	<div class="tbl-content">
		<c:forEach var="noticeboardList" items="${noticeboardList}">
			<table>
				<tbody>
					<tr data-num="${noticeboardList.noticeboard_number}">
						<td>${noticeboardList.noticeboard_number }</td>
						<td>${noticeboardList.noticeboard_title }</td>
						<td>${noticeboardList.noticeboard_writer }</td>
						<td>${noticeboardList.noticeboard_registerdate }</td>
					</tr>
				</tbody>
			</table>
		</c:forEach>
	</div>
</body>
</html>