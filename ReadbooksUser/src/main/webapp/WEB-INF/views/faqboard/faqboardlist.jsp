<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>Insert title here</title>
<style type="text/css">
.accordion {
	width: 380px;
	margin: 20px auto;
}

.accordion h1, h2, h3, h4 {
	cursor: pointer;
}

.accordion h2, h3, h4 {
	font-family: "News Cycle";
}

.accordion h1 {
	padding: 15px 20px;
	background-color: #333;
	font-family: Lobster;
	font-size: 1.5rem;
	font-weight: normal;
	color: #1abc9c;
}

.accordion h1:hover {
	color: #4afcdc;
}

.accordion h1:first-child {
	border-radius: 10px 10px 0 0;
}

.accordion h1:last-of-type {
	border-radius: 0 0 10px 10px;
}

.accordion









 









h1


















:not









 









(
:last-of-type









 









){
border-bottom


















:









 









1
px









 









dotted









 









#1abc9c


















;
}
.accordion div, .accordion p {
	display: none;
}

.accordion h2 {
	padding: 5px 25px;
	background-color: #1abc9c;
	font-size: 1.1rem;
	color: #333;
}

.accordion h2:hover {
	background-color: #09ab8b;
}

.accordion h3 {
	padding: 5px 30px;
	background-color: #b94152;
	font-size: .9rem;
	color: #ddd;
}

.accordion h3:hover {
	background-color: #a93142;
}

.accordion h4 {
	padding: 5px 35px;
	background-color: #ffc25a;
	font-size: .9rem;
	color: #af720a;
}

.accordion h4:hover {
	background-color: #e0b040;
}

.accordion p {
	padding: 15px 35px;
	background-color: #ddd;
	font-family: "Georgia";
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
									$(".accordion :visible:last").css(
											"border-radius", "0 0 10px 10px");
								});
								$(target).css({
									"border-bottom-right-radius" : "0",
									"border-bottom-left-radius" : "0"
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
	<div id="main">
		<aside class="accordion">
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
		</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>