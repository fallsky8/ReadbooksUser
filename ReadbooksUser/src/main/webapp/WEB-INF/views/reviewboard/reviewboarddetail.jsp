<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ taglib uri="/WEB-INF/tld/custom_tag.tld" prefix="tag"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
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
<script type="text/javascript">
	var butChk = 0; //수정버튼과 삭제버튼을 구별하기 위한 변수
	$(document).ready(function() {
		/* 수정 버튼 클릭 시 처리 이벤트 */
		$("#updateForm").click(function() {
			var now = "${sessionScope.user_id}";
			var user = "${reviewdetail.user_id}";
			if (now == user) {
				$("#f_data").attr({
					"method" : "get",
					"action" : "/reviewboardupdateForm.do"
				});
				$("#f_data").submit();
			} else if (now == "") {
				alert("당신은 비회원입니다.");
			} else if (now != user) {
				alert("당신은 작성자가 아닙니다.");
			}
		});
		/* 삭제 버튼 클릭 시 처리 이벤트 */
		$("#boardDelete").click(function() {
			var now = "${sessionScope.user_id}";
			var user = "${reviewdetail.user_id}";
			if (now == user) {
				$("#f_data").attr({
					"method" : "get",
					"action" : "/reviewboardDelete.do"
				});
				$("#f_data").submit();
			} else if (now == "") {
				alert("당신은 비회원입니다.");
			} else if (now != user) {
				alert("당신은 작성자가 아닙니다.");
			}
		});

		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#boardList").click(function() {
			location.href = "/reviewboardList.do";
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
			<form name="f_data" id="f_data">
				<input type="hidden" name="reviewboard_number"
					id="reviewboard_number" value="${reviewdetail.reviewboard_number}" />
				<input type="hidden" id="user_id" name="user_id"
					value="${sessionScope.user_id }">
			</form>

			<%--======상세정보 보여주기 시작========= --%>
			<input style="margin-left: 820px;" class="btn btn-default"
				type="button" value="수정" id="updateForm"> <input
				type="button" value="삭제" id="boardDelete" class="btn btn-default">
			<input type="button" value="목록" id="boardList"
				class="btn btn-default"> <br> <br>
			<table class="table">
				<tr>
					<th id="btd2">작성자</th>
					<td id="btd2">${reviewdetail.user_id}</td>
					<th id="btd2">작성일</th>
					<td id="btd2">${reviewdetail.reviewboard_registerdate}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="3">${reviewdetail.reviewboard_title}</td>
				</tr>
				<tr>
					<th>내용</th>
					<td colspan="3">${reviewdetail.reviewboard_contents}</td>
				</tr>
				<tr>
					<th>이미지</th>
					<td colspan="3"><input type="image" width="320px"
						height="240px"
						src="resources/image/${reviewdetail.reviewboard_attachmentfile}"></td>
				</tr>
				<tr>
					<th>별점</th>
					<td colspan="3"><c:set var="star"
							value="${reviewdetail.reviewboard_star}"></c:set> <c:choose>
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
				</tr>
			</table>
			<%--======상세정보 보여주기 종료========= --%>
			<div class="reviewreply">
				<jsp:include page="reviewboardreply.jsp"></jsp:include>
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

	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>