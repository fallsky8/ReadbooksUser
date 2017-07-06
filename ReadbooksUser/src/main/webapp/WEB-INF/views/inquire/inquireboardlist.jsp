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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js"></script>
<title>1:1문의</title>
<script type="text/javascript">
	$(document).ready(
			function() {
				/* 검색 후 검색 대상과 검색 단어 출력 */
				if ("<c:out value='${data.keywordinquire}'/>" != "") {
					$("#keywordinquire").val(
							"<c:out value='${data.keywordinquire}' />");
					$("#searchinquire").val(
							"<c:out value='${data.searchinquire}' />");
				}

				/* 한페이지에 보여줄 레코드 수 조회 후 선택한 값 그대로 유지하기 위한 설정 */
				if ("<c:out value='${data.pageSize}' />" != "") {
					$("#pageSize").val("<c:out value='${data.pageSize}' />");
				}

				/* 검색 대상이 변경될 때마다 처리 이벤트 */
				$("#searchinquire").change(function() {
					if ($("#searchinquire").val() == "all") {
						$("#keywordinquire").val("글 목록 전체 조회");
					} else if ($("#searchinquire").val() != "all") {
						$("#keywordinquire").val("");
						$("#keywordinquire").focus();
					}
				});

				/* 검색 버튼 클릭 시 처리 이벤트 */
				$("#searchdata").click(function() {
					if ($("#searchinquire").val() == "all") {
						if (!chkSubmit($('#keyword'), "검색어를"))
							return;
					}
					goPage(1);
				});
				$(".goDetail").click(
						function() {
							var inquireboard_number = $(this).parents("tr")
									.attr("data-num");
							$("#inquireboard_number").val(inquireboard_number);
							//상세 페이지로 이동하기 위해 form 추가 (id: detailForm)
							$("#detailForm").attr({
								"method" : "get",
								"action" : "/inquireboardDetail.do"
							});

							$("#detailForm").submit();
						});

				/* 한페이지에 보여줄 레코드 수를 변경될 때마다 처리 이벤트 */
				$("#pageSize").change(function() {
					goPage(1);
				});

				$("#inquireInsert").click(function() {
					location.href = "/inquireinsertpage.do";
				});

			});

	/* 검색과 한 페이지에 보여줄 레코드 수 처리 및 페이징을 위한 실질적인 처리 함수 */
	function goPage(page) {
		if ($("#searchinquire").val() == "all") {
			$("#keywordinquire").val("");
		}
		$("#page").val(page);
		$("#i_search").attr({
			"method" : "get",
			"action" : "/inquireboardList.do"
		});
		$("#i_search").submit();
	}
	$(function() {
		$('#keywords').tablesorter();
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

#primary_nav_wrap ul #iii:NTH-CHILD(8) {
	background-color: #5fc5c5;
}

#sideMenu a:NTH-CHILD(4) {
	background-color: rgba(0, 0, 0, 0.15);
}
</style>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<form name="detailForm" id="detailForm">
			<input type="hidden" name="inquireboard_number"
				id="inquireboard_number"> <input type="hidden" name="page"
				id="${data.page}"> <input type="hidden" name="pageSize"
				id="${data.pageSize}">
		</form>
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="/noticeboardList.do" class="menu-item">고객센터</a> <a
					href="/noticeboardList.do" class="menu-item">공지사항</a> <a
					href="/faqboardList.do" class="menu-item">자주 묻는 질문</a> <a
					href="/inquireboardList.do" class="menu-item">1:1 문의</a>
			</div>
			<%--================검색기능 시작================= --%>
			<div id="boardSearch">
				<form id="i_search" name="i_search">
					<input type="hidden" id="page" name="page" value="${data.page}">
					<input type="hidden" id="order_by" name="order_by"
						value="${data.order_by}" /> <input type="hidden" id="order_sc"
						name="order_sc" value="${data.order_sc}" />
					<table class="table">
						<tr>
							<td id="btd1"><select id="searchinquire"
								name="searchinquire" class="form-control"
								style="width: 100px !important; display: inline !important;">
									<option value="all">전체</option>
									<option value="inquireboard_title">제목</option>
									<option value="inquireboard_contents">질문</option>
									<option value="inquireboard_answer">답변</option>
							</select> <input type="text" name="keywordinquire" id="keywordinquire"
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
							<th>글제목</th>
							<th>작성일</th>
							<th>상담유형</th>
							<th>답변여부</th>
						</tr>
					</thead>
					<tbody>
						<!-- 데이터 출력 -->
						<c:choose>
							<c:when test="${not empty inquireboardList}">
								<c:forEach var="inquireboardList" items="${inquireboardList}"
									varStatus="status">
									<tr data-num="${inquireboardList.inquireboard_number}">
										<td>${count-(status.count-1)}</td>
										<td><span class="goDetail">${inquireboardList.inquireboard_title}</span></td>
										<td>${inquireboardList.inquireboard_registerdate}</td>
										<td>${inquireboardList.inquireboard_type }</td>
										<td><c:if
												test="${inquireboardList.inquireboard_answer==null}">답변대기
											</c:if> <c:if test="${inquireboardList.inquireboard_answer!=null}">답변완료
											</c:if></td>
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
			<input type="button" class="btn btn-default" value="문의하기"
				id="inquireInsert" style="margin-left: 90px; margin-top: -10px;">
			<%--========================글쓰기 버튼 출력 종료===================== --%>

			<%--======================페이지 네비게이션 시작===================== --%>
			<div id="boardPage">
				<tag:paging page="${param.page}" total="${total}"
					list_size="${data.pageSize}" />
			</div>
			<%--======================페이지 네비게이션 종료===================== --%>
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
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>