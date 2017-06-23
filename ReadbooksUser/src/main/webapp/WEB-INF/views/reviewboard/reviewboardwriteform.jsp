<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<!DOCTYPE html>
<html>
<head>
<title>리뷰게시판 글쓰기</title>
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
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
	$(document)
			.ready(
					function() {
						/* 저장 버튼 클릭 시 처리 이벤트 */
						$("#boardInsert")
								.click(
										function() {
											// 입력값 체크 
											if (!chkSubmit($('#user_id'), "이름을"))
												return;
											else if (!chkSubmit(
													$('#reviewboard_title'),
													"제목을"))
												return;
											else if (!chkSubmit(
													$('#reviewboard_contents'),
													"작성할 내용을"))
												return;

											else {
												/* 배열내의 값을 찾아서 인덱스를 반환(요소가 없을 경우 -1반환) 
												jQuery.inArray(찾을값, 검색 대상의 배열) */
												var ext = $('#file').val()
														.split('.').pop()
														.toLowerCase();
												if (jQuery.inArray(ext, [
														'gif', 'png', 'jsp',
														'jpeg','']) == -1) {
													alert('gif,png,jpg,jpeg 파일만 업로드 할 수 있습니다.');
													return;
												}
												$("#f_writeForm")
														.attr(
																{
																	"method" : "POST",
																	"action" : "/reviewboardInsert.do"
																});
												$("#f_writeForm").submit();
											}
										});

						/* 목록 버튼 클릭 시 처리 이벤트 */
						$("#boardList").click(function() {
							location.href = "/reviewboardList.do"
						});
					});
</script>
</head>
<body>
	<div class="contentContainer">
		<div class="contentTit">
			<h3>게시판 글작성</h3>
		</div>
		<div class="contentTB">
			<form id="f_writeForm" name="f_writeForm"
				enctype="multipart/form-data">
				<input type="hidden" name="csrf" value="${CSRF_TOKEN}" /> <input
					type="hidden" name="user_id" id="user_id"
					value="${sessionScope.user_id}" />
				<table id="boardWrite">
					<colgroup>
						<col width="17%" />
						<col width="83%" />
					</colgroup>
					<tr>
						<td class="ac">작성자</td>
						<td>${sessionScope.user_id }</td>
					</tr>
					<tr>
						<td class="ac">글제목</td>
						<td><input type="text" name="reviewboard_title"
							id="reviewboard_title"></td>
					</tr>
					<tr>
						<td class="ac">내용</td>
						<td><textarea name="reviewboard_contents"
								id="reviewboard_contents"></textarea></td>
					</tr>
					<tr>
						<td class="ac">첨부파일</td>
						<td><input type="file" name="file" id="file"></td>
					</tr>

				</table>
			</form>
		</div>
		<div id="boardBut">
			<input type="button" value="저장" class="but" id="boardInsert">
			<input type="button" value="목록" class="but" id="boardList">
		</div>
	</div>
</body>
</html>