<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/custom_tag.tld" prefix="tag"%>
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
<title>공지사항 게시판</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
	$(function() {
		/* 검색 후 검색 대상과 검색 단어 출력 */
		if ("<c:out value='${data.keyword}'/>" != "") {
			$("#keyword").val("<c:out value='${data.keyword}' />");
			$("#search").val("<c:out value='${data.search}' />");
		}

		/* 한페이지에 보여줄 레코드 수 조회 후 선택한 값 그대로 유지하기 위한 설정 */
		if ("<c:out value='${data.pageSize}' />" != "") {
			$("#pageSize").val("<c:out value='${data.pageSize}' />");
		}

		/* 검색 대상이 변경될 때마다 처리 이벤트 */
		$("#search").change(function() {
			if ($("#search").val() == "all") {
				$("#keyword").val("글 목록 전체 조회");
			} else if ($("#search").val() != "all") {
				$("#keyword").val("");
				$("#keyword").focus();
			}
		});

		/* 검색 버튼 클릭 시 처리 이벤트 */
		$("#searchData").click(function() {
			if ($("#search").val() == "all") {
				if (!chkSubmit($('#keyword'), "검색어를"))
					return;
			}
			goPage(1);
		});

		/* 한페이지에 보여줄 레코드 수를 변경될 때마다 처리 이벤트 */
		$("#pageSize").change(function() {
			goPage(1);
		});

		/* 제목 클릭시 상세 페이지 이동을 위한 처리 이벤트 */
		$(".goDetail").click(function() {
			var noticeboard_number = $(this).parents("tr").attr("data-num");
			$("#noticeboard_number").val(noticeboard_number);
			//상세 페이지로 이동하기 위해 form 추가 (id: detailForm)
			$("#detailForm").attr({
				"method" : "get",
				"action" : "/noticeboarddetail.do"
			});
			$("#detailForm").submit();
		});

	});
	/* 정렬 버튼 클릭 시 처리 함수 */
	function setOrder(order_by) {
		$("#order_by").val(order_by);
		if ($("#order_sc").val() == 'DESC') {
			$("#order_sc").val('ASC');
		} else {
			$("#order_sc").val('DESC');
		}
		goPage(1);
	}

	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 위한 실질적인 처리 함수 */
	function goPage(page) {
		if ($("#search").val() == "all") {
			$("#keyword").val("");
		}
		$("#page").val(page);
		$("#f_search").attr({
			"method" : "get",
			"action" : "/noticeboardList.do"
		});
		$("#f_search").submit();
	}
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
					href="/faqboardList.do" class="menu-item">자주 묻는 질문</a> <a href="#"
					class="menu-item">1:1 문의</a>
			</div>
			<h2>공지사항</h2>
			<%--================상세 페이지 이동을 위한 FORM================= --%>
			<form name="detailForm" id="detailForm">
				<input type="hidden" name="noticeboard_number"
					id="noticeboard_number"> <input type="hidden" name="page"
					id="${data.page}"> <input type="hidden" name="pageSize"
					id="${data.pageSize}">
			</form>

			<%--================검색기능 시작================= --%>
			<div id="boardSearch">
				<form id="f_search" name="f_search">
					<input type="hidden" id="page" name="page" value="${data.page}">
					<input type="hidden" id="order_by" name="order_by"
						value="${data.order_by}" /> <input type="hidden" id="order_sc"
						name="order_sc" value="${data.order_sc}" />
					<table class="table">
						<tr>
							<td id="btd1"><label>검색 조건</label> <select id="search"
								name="search">
									<option value="all">전체</option>
									<option value="noticeboard_title">제목</option>
									<option value="noticeboard_contents">내용</option>
									<option value="noticeboard_writer">작성자</option>
							</select> <input type="text" name="keyword" id="keyword"
								placeholder="검색어를 입력하세요" /> <input type="button" value="검색"
								id="searchData" /></td>
							<td id="btd2">한페이지에 <select id="pageSize" name="pageSize">
									<option value="10">10줄</option>
									<option value="20">20줄</option>
									<option value="30">30줄</option>
									<option value="50">50줄</option>
									<option value="70">70줄</option>
									<option value="100">100줄</option>
							</select>
							</td>
						</tr>
					</table>
				</form>
			</div>
			<%--=================검색기능 종료================= --%>


			<%--=================리스트 시작================= --%>
			<div id="boardList">
				<table class="table" summary="게시판 리스트">
					<thead>
						<tr>
							<th><a href="javascript:setOrder('noticeboard_number');">글번호
									<c:choose>
										<c:when
											test="${data.order_by=='noticeboard_number' and data.order_sc=='ASC'}">▲</c:when>
										<c:when
											test="${data.order_by=='noticeboard_number' and data.order_sc=='DESC'}">▼</c:when>
										<c:otherwise>▲</c:otherwise>
									</c:choose>
							</a></th>
							<th>글제목</th>
							<th><a
								href="javascript:setOrder('noticeboard_registerdate');">작성일
									<c:choose>
										<c:when
											test="${data.order_by=='noticeboard_registerdate' and data.order_sc=='ASC'}">▲</c:when>
										<c:when
											test="${data.order_by=='noticeboard_registerdate' and data.order_sc=='DESC'}">▼</c:when>
										<c:otherwise>▲</c:otherwise>
									</c:choose>
							</a></th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터 출력 -->
						<c:choose>
							<c:when test="${not empty noticeboardList}">
								<c:forEach var="noticeboardList" items="${noticeboardList}"
									varStatus="status">
									<tr data-num="${noticeboardList.noticeboard_number}">
										<td>${count-(status.count-1)}</td>
										<%-- <td>${board.b_num}</td> --%>
										<td class="tal"><span class="goDetail">${noticeboardList.noticeboard_title}</span>
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

			<%--========================글쓰기 버튼 출력 시작===================== --%>

			<%--========================글쓰기 버튼 출력 종료===================== --%>

			<%--======================페이지 네비게이션 시작===================== --%>
			<div id="boardPage">
				<tag:paging page="${param.page}" total="${total}"
					list_size="${data.pageSize}" />
			</div>
			<%--======================페이지 네비게이션 종료===================== --%>
		</article>
		<aside>aside</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>