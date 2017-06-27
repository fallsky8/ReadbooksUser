<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<link rel="stylesheet" type="text/css" href="/resources/css/common.css" />
<link rel="stylesheet" type="text/css" href="/resources/css/board.css" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<title>comment</title>
<script type="text/javascript">
	$(function() {
		/* 기본 덧글 목록 불러오기 */
		var reviewboard_number = "<c:out value='${reviewdetail.reviewboard_number}' />";
		listAll(reviewboard_number)

		/* 덧글 내용 저장 이벤트 */
		$("#reviewreplyInsert").click(function() {
			// 작성자 이름에 대한 입력 여부 검사

			var insertUrl = "/reviewreplyInsert.do";
			/* 글 저장을 위한 Post 방식의 Ajax 연동 처리 */
			$.ajax({
				url : insertUrl, //전송 url
				type : "post", //전송 시 method 방식
				headers : {
					"Content-Type" : "application/json",
					"X-HTTP-Method-Override" : "POST"
				},
				dataType : "text",
				data : JSON.stringify({
					reviewboard_number : reviewboard_number,
					user_id : $("#user_id").val(),
					reviewreply_contents : $("#reviewreply_contents").val()
				}),
				error : function() { //실행시 오류가 발생하였을 경우
					alert('시스템 오류 입니다. 관리자에게 문의 하세요');
				},
				success : function(resultData) {
					if (resultData == "SUCCESS") {
						alert("댓글 등록이 완료되었습니다.");
						dataReset();
						listAll(reviewboard_number);
					}
				}
			});

		});

		/* 수정 버튼 클릭시 수정폼 출력 */
		$(document)
				.on(
						"click",
						".update_form",
						function() {
							var now = "${sessionScope.user_id}";
							if (now == user_id) {
								$(".reset_btn").click();
								var conText = $(this).parents("li").children()
										.eq(1).html();
								console.log("conText: " + conText);
								$(this).parents("li").find(
										"input[type='button']").hide();
								$(this).parents("li").children().eq(0).html();
								var conArea = $(this).parents("li").children()
										.eq(1);

								conArea.html("");
								var data = "<textarea name='content' id='content'>"
										+ conText + "</textarea>";
								data += "<input type='button' class='update_btn' value='수정완료'>";
								data += "<input type='button' class='reset_btn' value='수정취소'>";
								conArea.html(data);
							} else if (now == "") {
								alert("당신은 비회원입니다.");
							} else {
								alert("당신은 작성자가 아닙니다.");
							}

						});

		/* 초기화 버튼 */
		$(document).on("click", ".reset_btn", function() {
			var conText = $(this).parents("li").find("textarea").html();
			$(this).parents("li").find("input[type='button']").show();
			var conArea = $(this).parents("li").children().eq(1);
			conArea.html(conText);
		});

		/* 글 수정을 위한 Ajax 연동 처리 */
		$(document).on("click", ".update_btn", function() {
			var reviewreply_number = $(this).parents("li").attr("data-num");
			var reviewreply_contents = $("#content").val();
			if (!chkSubmit($("#content"), "댓글 내용을"))
				return;
			else {
				$.ajax({
					url : '/' + reviewreply_number + ".do",
					type : 'put',
					headers : {
						"Content-Type" : "application/json",
						"X-HTTP-Method-Override" : "PUT"
					},
					data : JSON.stringify({
						reviewreply_contents : reviewreply_contents
					}),
					dataType : 'text',
					success : function(result) {
						console.log("result: " + result);
						if (result == 'SUCCESS') {
							alert("수정 되었습니다.");
							listAll(reviewboard_number);
						}
					}
				});
			}
		});

		/* 글 삭제를 위한 Ajax 연동 처리 */
		$(document).on(
				"click",
				".delete_btn",
				function() {

					var now = "${sessionScope.user_id}";
					if (now == user_id) {
						var reviewreply_number = $(this).parents("li").attr(
								"data-num");
						console
								.log("reviewreply_number: "
										+ reviewreply_number);

						if (confirm("선택하신 댓글을 삭제하시겠습니까?")) {
							$.ajax({
								type : 'delete',
								url : '/' + reviewreply_number + ".do",
								headers : {
									"Content-Type" : "application/json",
									"X-HTTP-Method-Override" : "DELETE"
								},
								dataType : 'text',
								success : function(result) {
									console.log("result: " + result);
									if (result == 'SUCCESS') {
										alert("삭제 되었습니다.");
										listAll(reviewboard_number);
									}
								}
							});
						}

					} else if (now == "") {
						alert("당신은 비회원입니다.");
					} else {
						alert("당신은 작성자가 아닙니다.");
					}

				});
	});

	//리스트 요청 함수
	function listAll(reviewboard_number) {
		$("#comment_list").html("");
		var url = "/all/" + reviewboard_number + ".do";
		$
				.getJSON(
						url,
						function(data) {
							console.log(data.length);

							$(data)
									.each(
											function() {
												var reviewreply_number = this.reviewreply_number;
												var user_id = this.user_id;
												var reviewreply_contents = this.reviewreply_contents;
												var reviewreply_registerdate = this.reviewreply_registerdate;
												addNewItem(reviewreply_number,
														user_id,
														reviewreply_contents,
														reviewreply_registerdate);
											});
						}).fail(function() {
					alert("덧글 목록을 불러오는데 실패하였습니다. 잠시후에 다시 시도해주세요.");
				});

	}

	/* 새로운 글을 화면에 추가하기 위한 함수 */
	function addNewItem(reviewreply_number, user_id, reviewreply_contents,
			reviewreply_registerdate) {
		//새로운 글이 추가될 li태그 객체
		var new_li = $("<li>");
		new_li.attr("data-num", reviewreply_number);
		new_li.addClass("comment_item");

		/* 작성자 정보가 지정될 <p>태그 */
		var writer_p = $("<p>");
		writer_p.addClass("writer");

		//작성자 정보의 이름
		var name_span = $("<span>");
		name_span.addClass("name");
		name_span.html(user_id + "님");

		//작성일시
		var date_span = $("<span>");
		date_span.html("/" + reviewreply_registerdate + " ");

		// 수정하기 버튼
		var up_input = $("<input>");
		up_input.attr({
			"type" : "button",
			"value" : "수정하기"
		});
		up_input.addClass("update_form");

		// 삭제하기 버튼
		var del_input = $("<input>");
		del_input.attr({
			"type" : "button",
			"value" : "삭제하기"
		});
		del_input.addClass("delete_btn");

		// 내용
		var content_p = $("<p>");
		content_p.addClass("con");
		content_p.html(reviewreply_contents);

		// 조립하기
		writer_p.append(name_span).append(date_span).append(up_input).append(
				del_input)
		new_li.append(writer_p).append(content_p);
		$("#comment_list").append(new_li);
	}
	function dataReset() {
		$("#reviewreply_contents").val("");
	}
</script>
</head>
<body>
	<div id="replyContainer">
		<h1></h1>
		<div id="comment_write">
			<form id="comment_form">
				<div>
					<label for="user_id">작성자</label>${sessionScope.user_id}<input
						type="hidden" id="user_id" name="user_id"
						value="${sessionScope.user_id}"> <label for="user_id">
						<input type="button" id="reviewreplyInsert" value="저장하기" />
					</label>
				</div>
				<div>
					<label for="reviewreply_contents">덧글 내용</label>
					<textarea name="reviewreply_contents" id="reviewreply_contents"></textarea>
				</div>
			</form>
		</div>
		<ul id="comment_list">
			<!-- 여기에 동적 생성 요소가 들어가게 됩니다. -->
		</ul>
	</div>
</body>
</html>