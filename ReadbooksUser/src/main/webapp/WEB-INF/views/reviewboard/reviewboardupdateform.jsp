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
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript">
	$(function() {

		/* 수정 버튼 클릭 시 처리 이벤트 */
		$("#boardUpdateBtn").click(
				function() {
					//입력값 체크
					if (!chkSubmit($('#b_title'), "제목을"))
						return;
					else if (!chkSubmit($('#b_content'), "작성할 내용을"))
						return;
					else {

						if ($('#file').val().indexOf(".") > -1) {
							var ext = $('#file').val().split('.').pop()
									.toLowerCase();
							if (jQuery.inArray(ext, [ 'gif', 'png', 'jpg',
									'jpeg' ]) == -1) {
								alert('gif,png,jpg,jpeg 파일만 업로드 할 수 있습니다.');
								return;
							}
						}
					}
					//console.log("기본 파일명: " +$('#reviewboard_attachmentfile').val());
					$("#f_writeForm").attr({
						"method" : "POST",
						"action" : "/reviewboardUpdate.do"
					});
					$("#f_writeForm").submit();
				});

		/* 목록 버튼 클릭 시 처리 이벤트 */
		$("#boardListBtn").click(function() {
			location.href = "/reviewboardList.do";
		});
	});

	$(document)
			.ready(
					function() {
						/* 이미지 호버 이벤트 */
						var img = $("<img>");
						$('#imgView')
								.hover(
										function() {
											img
													.attr({
														src : "/uploadStorage/${reviewupdateData.reviewboard_attachmentfile}",
														width : "450px",
														height : "200px"
													});
											img.addClass("imgViewData");
											$('#imgArea').append(img);
										}, function() {
											img.remove();
										});
					});
</script>
</head>
<body>
	<div id="contentContainer">
		<div class="contentTit">
			<h3>게시판 글수정</h3>
		</div>
		<div class="contentTB">
			<form id="f_writeForm" name="f_writeForm"
				enctype="multipart/form-data">
				<input type="hidden" id="reviewboard_number"
					name="reviewboard_number"
					value="${reviewupdateData.reviewboard_number}" /> <input
					type="hidden" name="page" id="page" value="${param.page}" /> <input
					type="hidden" name="pageSize" id="pageSize"
					value="${param.pageSize}" /> <input type="hidden"
					name="reviewboard_attachmentfile" id="reviewboard_attachmentfile"
					value="${reviewupdateData.reviewboard_attachmentfile}" />
				<table>
					<colgroup>
						<col width="17%" />
						<col width="33%" />
						<col width="17%" />
						<col width="33%" />
					</colgroup>
					<tbody>
						<tr>
							<td class="ac">글번호</td>
							<td>${reviewupdateData.reviewboard_number}</td>
							<td class="ac">작성일</td>
							<td><input type="hidden" id="reviewboard_registerdate"
								name="reviewboard_registerdate"
								value="${reviewupdateData.reviewboard_registerdate}">${reviewupdateData.reviewboard_registerdate}</td>
						<tr>
							<td class="ac">작성자</td>
							<td colspan="3"><input type="hidden" id="user_id"
								name="user_id" value="${reviewupdateData.user_id}">${reviewupdateData.user_id}</td>
						</tr>
						<tr>
							<td class="ac">글제목</td>
							<td colspan="3"><input type="text" name="reviewboard_title"
								id="reviewboard_title"
								value="${reviewupdateData.reviewboard_title}" /></td>
						</tr>
						<tr>
							<td class="ac vm">내용</td>
							<td colspan="3"><textarea name="reviewboard_contents"
									id="reviewboard_contents">${reviewupdateData.reviewboard_contents}</textarea></td>
						</tr>
						<tr>
							<td class="ac">첨부파일</td>
							<td colspan="3"><input type="file" name="file" id="file"><label
								id="imgView">기존 이미지 파일명:
									${reviewupdateData.reviewboard_attachmentfile}<span
									id="imgArea"></span>
							</label></td>
						</tr>
						<!-- <tr>
							<td class="ac">비밀번호</td>
							<td colspan="3"><input type="password" name="b_pwd"
								id="b_pwd" /> <label>수정할 비밀번호를 입력해 주세요.</label></td>
						</tr> -->
					</tbody>
				</table>
			</form>
		</div>

		<div class="contentBtn">
			<input type="button" value="수정" id="boardUpdateBtn" /> <input
				type="button" value="목록" id="boardListBtn" />
		</div>
	</div>


</body>
</html>