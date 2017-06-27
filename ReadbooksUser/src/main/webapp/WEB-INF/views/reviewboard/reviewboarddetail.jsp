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
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<title>글상세 보기</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	var butChk = 0; //수정버튼과 삭제버튼을 구별하기 위한 변수
	$(document).ready(function() {

		/* 	$("#pwdChk").hide(); */

		/*  첨부파일 이미지 보여주기 위한 속성 추가 
		var file = "<c:out value='${reviewdetail.reviewboard_attachmentfile}' />";
		if (file != "") {
		$("#fileImage")
		.attr(
			{
				src : "/uploadStorage/${reviewdetail.reviewboard_attachmentfile}",
				width : "450px",
				height : "200px"
			});
		}
		 */
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

		// 						/* 비밀번호 확인 버튼 클릭 시 처리 이벤트 */
		// 						$("#pwdBut").click(function() {
		// 							pwdConfirm();
		// 						});

		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#boardList").click(function() {
			location.href = "/reviewboardList.do";
		});
	});

	/* 비밀번호 클릭시 실질적인 처리 함수 
	function pwdConfirm() {
		if (!chkSubmit($('#b_pwd'), "비밀번호를"))
			return;
		else {
			$.ajax({
				url : "/board/pwdConfirm.do", //전송 url
				type : "POST", //전송 시 method 방식
				data : $("#f_pwd").serialize(), //폼전체 데이터 전송
				error : function() {
					alert('시스템 오류 입니다 관리자에게 문의하세요' + $("#f_pwd").serialize());
				},
				success : function(resultData) {

					var goUrl = ""; // 이동할 경로를 저장할 변수s
					if (resultData == 0) { //일치하지 않는 경우
						$("#msg").text("작성시 입력한 비밀번호가 일치하지 않습니다").css("color",
								"red");
						$("#b_pwd").select();
					} else if (resultData == 1) { //일지할 경우
						$("#msg").text("");
						if (butChk == 1) {
							goUrl = "/board/updateForm.do";
						} else if (butChk == 2) {
							goUrl = "/board/boardDelete.do";
						}
						$("#f_data").attr("action", goUrl);
						$("#f_data").submit();

					}
				}
			});
		}
	}*/
</script>
</head>
<body>
	<div id="boardTit">
		<h3>글상세</h3>
	</div>
	<form name="f_data" id="f_data" method="get">
		<input type="hidden" name="reviewboard_number" id="reviewboard_number"
			value="${reviewdetail.reviewboard_number}" /> <input type="hidden"
			id="user_id" name="user_id" value="${sessionScope.user_id }">
	</form>
	<%--======비밀번호 확인 버튼 및 버튼 추가 시작========= --%>
	<table id="boardPwdBut">
		<tr>
			<td id="btd1">
				<%-- <div id="pwdChk">
					<form name="f_pwd" id="f_pwd">
						<input type="hidden" name="reviewboard_number"
							id="reviewboard_number"
							value="${reviewdetail.reviewboard_number}" /> <label for="b_pwd"
							id="l_pwd">비밀번호: </label> <input type="password" name="b_pwd"
							id="b_pwd" /> <input type="button" id="pwdBut" value="확인" /> <span
							id="msg"></span>
					</form>
				</div> --%>
			</td>
			<td id="btd2"><input type="button" value="수정" id="updateForm">
				<input type="button" value="삭제" id="boardDelete"> <input
				type="button" value="목록" id="boardList"></td>
		</tr>
	</table>
	<%--======비밀번호 확인 버튼 및 버튼 추가 종료========= --%>

	<%--======상세정보 보여주기 시작========= --%>
	<div class="contentTB">
		<table>
			<colgroup>
				<col width="17%" />
				<col width="33%" />
				<col width="17%" />
				<col width="33%" />
			</colgroup>
			<tbody>
				<tr>
					<td class="ac">작성자</td>
					<td>${reviewdetail.user_id}</td>
					<td class="ac">작성일</td>
					<td>${reviewdetail.reviewboard_registerdate}</td>
				</tr>
				<tr>
					<td class="ac">제목</td>
					<td colspan="3">${reviewdetail.reviewboard_title}</td>
				</tr>
				<tr>
					<td class="ac">내용</td>
					<td colspan="3">${reviewdetail.reviewboard_contents}</td>
				</tr>
				<tr>
					<td class="ac">첨부파일 이미지</td>
					<td colspan="3"><input type="image"
						src="resources/image/${reviewdetail.reviewboard_attachmentfile}"></td>
				</tr>
				<tr>
					<td class="ac">별점</td>
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
			</tbody>
		</table>
	</div>
	<%--======상세정보 보여주기 종료========= --%>

	<jsp:include page="reviewboardreply.jsp"></jsp:include>
</body>
</html>