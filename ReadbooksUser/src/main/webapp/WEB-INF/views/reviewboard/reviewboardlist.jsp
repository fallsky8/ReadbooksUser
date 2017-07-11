<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/custom_tag.tld" prefix="tag"%>
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
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>리드북스에 오신 걸 환영합니다.</title>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js"></script>
<script type="text/javascript">
	$(function() {
		$('#keywords').tablesorter();
		/* 검색 후 검색 대상과 검색 단어 출력 */
		if ("<c:out value='${data.keywordreview}'/>" != "") {
			$("#keywordreview").val("<c:out value='${data.keywordreview}' />");
			$("#searchreview").val("<c:out value='${data.searchreview}' />");
		}

		/* 한페이지에 보여줄 레코드 수 조회 후 선택한 값 그대로 유지하기 위한 설정 */
		if ("<c:out value='${data.pageSize}' />" != "") {
			$("#pageSize").val("<c:out value='${data.pageSize}' />");
		}

		/* 검색 대상이 변경될 때마다 처리 이벤트 */
		$("#searchreview").change(function() {
			if ($("#searchreview").val() == "all") {
				$("#keywordreview").val("글 목록 전체 조회");
			} else if ($("#searchreview").val() != "all") {
				$("#keywordreview").val("");
				$("#keywordreview").focus();
			}
		});

		/* 검색 버튼 클릭 시 처리 이벤트 */
		$("#searchdata").click(function() {
			if ($("#searchreview").val() == "all") {
				if (!chkSubmit($('#keywordreview'), "검색어를"))
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
			var reviewboard_number = $(this).parents("tr").attr("data-num");
			$("#reviewboard_number").val(reviewboard_number);
			//상세 페이지로 이동하기 위해 form 추가 (id: detailForm)
			$("#detailForm").attr({
				"method" : "get",
				"action" : "/reviewboardDetail.do"
			});

			$("#detailForm").submit();
		});
		/* 글쓰기 버튼 클릭 시 처리 이벤트 */
		$("#InsertFormBtn").click(function() {
			var now = "${sessionScope.user_id}";
			if (now != "") {
				location.href = "/reviewboardwriteForm.do";
			} else if (now == "") {
				alert("로그인을 해주세요!")
				location.href = "/usercheck.do";
			}
		});
	});

	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 위한 실질적인 처리 함수 */
	function goPage(page) {
		if ($("#searchreview").val() == "all") {
			$("#keywordreview").val("");
		}
		$("#page").val(page);
		$("#r_search").attr({
			"method" : "get",
			"action" : "/reviewboardList.do"
		});
		$("#r_search").submit();
	}
</script>
<style type="text/css">
.title, #contentBtn, #boardPage {
	margin-left: 200px;
}

.table {
	width: 70%;
	margin-left: 200px;
	border: 1px solid #5fc5c5;
	background-color: rgba(95, 197, 197, 0.1);
}

#btd1, #btd2 {
	border-top: 1px solid #5fc5c5;
}

#primary_nav_wrap ul #iii:NTH-CHILD(6) {
	background-color: #5fc5c5;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<%--================상세 페이지 이동을 위한 FORM================= --%>
			<form name="detailForm" id="detailForm">
				<input type="hidden" name="reviewboard_number"
					id="reviewboard_number"> <input type="hidden" name="page"
					id="${data.page}"> <input type="hidden" name="pageSize"
					id="${data.pageSize}">
			</form>

			<%--================검색기능 시작================= --%>
			<div id="boardSearch">
				<form id="r_search" name="r_search">
					<input type="hidden" id="page" name="page" value="${data.page}">
					<input type="hidden" id="order_by" name="order_by"
						value="${data.order_by}" /> <input type="hidden" id="order_sc"
						name="order_sc" value="${data.order_sc}" />
					<table class="table">
						<tr>
							<td id="btd1"><select id="searchreview" name="searchreview"
								class="form-control"
								style="width: 100px !important; display: inline !important;">
									<option value="all">전체</option>
									<option value="reviewboard_title">제목</option>
									<option value="reviewboard_contents">내용</option>
									<option value="user_id">작성자</option>
							</select> <input type="text" name="keywordreview" id="keywordreview"
								placeholder="검색어를 입력하세요" class="form-control"
								style="width: 200px !important; display: inline !important;" />
								<input type="button" value="검색" id="searchdata"
								class="btn btn-default"
								style="height: 30px !important; margin-top: -3px;" /></td>
							<td id="btd2"><select id="pageSize" name="pageSize"
								class="form-control">
									<option value="10">10줄씩보이기</option>
									<option value="20">20줄씩보이기</option>
									<option value="30">30줄씩보이기</option>
									<option value="50">50줄씩보이기</option>
									<option value="70">70줄씩보이기</option>
									<option value="100">100줄씩보이기</option>
							</select></td>
						</tr>
					</table>
				</form>
			</div>
			<%--=================검색기능 종료================= --%>


			<%--=================리스트 시작================= --%>
			<div id="boardList">
				<table class="table" id="keywords" summary="게시판 리스트">
					<thead>
						<tr>
							<th>글번호</th>
							<th>별점</th>
							<th>글제목</th>
							<th>작성일</th>
							<th>작성자</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터 출력 -->
						<c:choose>
							<c:when test="${not empty reviewBoardList}">
								<c:forEach var="reviewboardList" items="${reviewBoardList}"
									varStatus="status">
									<tr data-num="${reviewboardList.reviewboard_number}"
										style="background-color: rgba(95, 197, 197, 0.1);">
										<td>${count-(status.count-1)}</td>
										<td><c:set var="star"
												value="${reviewboardList.reviewboard_star}"></c:set> <c:choose>
												<c:when test="${star eq '5'}">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/star.gif">
												</c:when>
												<c:when test="${star eq '4'}">
													<img src="resources/image/star.gif">
													<img src="resources/image/star.gif">
													<img src="resources/image/star.gif">
													<img src="resources/image/star.gif">
													<img src="resources/image/stargray.gif">
												</c:when>
												<c:when test="${star eq '3'}">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/stargray.gif">
													<img src="/resources/image/stargray.gif">
												</c:when>
												<c:when test="${star eq '2'}">
													<img src="resources/image/star.gif">
													<img src="resources/image/star.gif">
													<img src="resources/image/stargray.gif">
													<img src="resources/image/stargray.gif">
													<img src="resources/image/stargray.gif">
												</c:when>
												<c:when test="${star eq '1'}">
													<img src="/resources/image/star.gif">
													<img src="/resources/image/stargray.gif">
													<img src="/resources/image/stargray.gif">
													<img src="/resources/image/stargray.gif">
													<img src="/resources/image/stargray.gif">
												</c:when>
											</c:choose></td>
										<td class="tal"><span class="goDetail">${reviewboardList.reviewboard_title}</span>
										<td>${reviewboardList.reviewboard_registerdate}</td>
										<td>${reviewboardList.user_id}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr style="background-color: rgba(95, 197, 197, 0.1);">
									<td colspan="5">등록된 게시물이 존재하지 않습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
			<%--==========================리스트 종료======================== --%>

			<%--========================글쓰기 버튼 출력 시작===================== --%>
			<div id="contentBtn">
				<input type="button" value="글쓰기" id="InsertFormBtn"
					class="btn btn-default">
			</div>

			<%--========================글쓰기 버튼 출력 종료===================== --%>

			<%--======================페이지 네비게이션 시작===================== --%>
			<div id="boardPage">
				<tag:paging page="${param.page}" total="${total}"
					list_size="${data.pageSize}" />
			</div>
			<%--======================페이지 네비게이션 종료===================== --%>
		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>

	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>