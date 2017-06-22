<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>자주 묻는 질문</title>
<style type="text/css">
.accordion {
	width: 750px;
	border: 1px solid #5FC5C5;
	margin-left: 220px;
}

.accordion h1, h2, h3, h4 {
	cursor: pointer;
}

.accordion h1 {
	padding: 15px 20px;
	background-color: rgba(95, 197, 197, 0.1);
	font-size: 1.5rem;
	font-weight: normal;
	color: #1abc9c;
}

.accordion h1:hover {
	color: #4afcdc;
}

/* .accordion h1:first-child { */
/* 	border-radius: 10px 10px 0 0; */
/* } */

/* .accordion h1:last-of-type { */
/* 	border-radius: 0 0 10px 10px; */
/* } */
.accordion div, .accordion p {
	display: none;
}

.accordion h2 {
	padding: 5px 25px;
	/* 	background-color: #1abc9c; */
	font-size: 1.1rem;
	color: #333;
}

.accordion h2:hover {
	background-color: #09ab8b;
}

.accordion h3 {
	padding: 5px 30px;
	/* 	background-color: #b94152; */
	font-size: .9rem;
	color: #ddd;
}

.accordion h3:hover {
	background-color: #a93142;
}

.accordion h4 {
	padding: 5px 35px;
	/* 	background-color: #ffc25a; */
	font-size: .9rem;
	color: #af720a;
}

.accordion h4:hover {
	background-color: #e0b040;
}

.accordion p {
	padding: 15px 35px;
	/* 	background-color: #ddd; */
	font-size: .8rem;
	color: #333;
	line-height: 1.3rem;
}

.accordion .opened-for-codepen {
	display: block;
}
</style>
<script src="//ajax.googleapis.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
<script type="text/javascript">
	var headers = [ "H1", "H2", "H3", "H4", "H5", "H6" ];
	$(function() {
		$(".accordion")
				.click(
						function(event) {
							var target = event.target, name = target.nodeName
									.toUpperCase();

							if ($.inArray(name, headers) > -1) {
								var subItem = $(target).next();

								var depth = $(subItem).parents().length;
								var allAtDepth = $(
										".accordion p, .accordion div")
										.filter(
												function() {
													if ($(this).parents().length >= depth
															&& this !== subItem
																	.get(0)) {
														return true;
													}
												});
								$(allAtDepth).slideUp("fast");

								subItem.slideToggle("fast", function() {
									// 									$(".accordion :visible:last").css(
									// 											"border-radius", "0 0 10px 10px");
								});
								$(target).css({
								// 									"border-bottom-right-radius" : "0",
								// 									"border-bottom-left-radius" : "0"
								});
							}
						});
	});
</script>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id='main'>
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="/noticeboardList.do" class="menu-item">고객센터</a> <a
					href="/noticeboardList.do" class="menu-item">공지사항</a> <a
					href="/faqboardList.do" class="menu-item">자주 묻는 질문</a> <a href="#"
					class="menu-item">1:1 문의</a>
			</div>
			<div class="accordion">
				<h1>회원 FAQ</h1>
				<c:forEach var="faqboarduserList" items="${faqboarduserList}">
					<div class="opened-for-codepen">
						<h4>Q . ${faqboarduserList.faqboard_question}</h4>
						<p>A . ${faqboarduserList.faqboard_answer}</p>
					</div>
				</c:forEach>
				<h1>상품 FAQ</h1>
				<c:forEach var="faqboardbookList" items="${faqboardbookList}">
					<div class="opened-for-codepen">
						<h4>Q . ${faqboardbookList.faqboard_question}</h4>
						<p>A . ${faqboardbookList.faqboard_answer}</p>
					</div>
				</c:forEach>
				<h1>주문 FAQ</h1>
				<c:forEach var="faqboardorderList" items="${faqboardorderList}">
					<div class="opened-for-codepen">
						<h4>Q . ${faqboardorderList.faqboard_question}</h4>
						<p>A . ${faqboardorderList.faqboard_answer}</p>
					</div>
				</c:forEach>
			</div>
			<div>
				&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;찾으시는 질문이 없나요? <b><ins>문의 게시판</ins></b>에
				문의해주세요. <input type="button" class="btn btn-default" value="문의하기">
			</div>
		</article>
		<aside>aside</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>