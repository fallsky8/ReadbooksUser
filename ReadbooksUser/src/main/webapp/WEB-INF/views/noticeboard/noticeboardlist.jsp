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
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="#" class="menu-item">고객센터</a> <a href="#" class="menu-item">공지사항</a>
				<a href="#" class="menu-item">자주 묻는 질문</a> <a href="#"
					class="menu-item">1:1 문의</a>
			</div>

			<div class="tbl-content">

				<table>
						<tr>
							<th>번호</th>
							<th>제목</th>
							<th>작성자</th>
							<th>등록일자</th>
						</tr>
						<c:forEach var="noticeboardList" items="${noticeboardList}">
						<tbody>
							<tr data-num="${noticeboardList.noticeboard_number}">
								<td>${noticeboardList.noticeboard_number }</td>
								<td>${noticeboardList.noticeboard_title }</td>
								<td>${noticeboardList.noticeboard_writer }</td>
								<td>${noticeboardList.noticeboard_registerdate }</td>
							</tr>
						</tbody>
					</c:forEach>
				</table>
			</div>
		</article>
		<aside>aside</aside>
	</div>
</body>
</html>