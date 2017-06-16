<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="resources/css/common.css" type="text/css"
	media="screen" />
<title>리드북스에 오신 걸 환영합니다.</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {

		setInterval(function() {
			moveRight();
		}, 3000);

		var slideCount = $('#slider ul li').length;
		var slideWidth = $('#slider ul li').width();
		var slideHeight = $('#slider ul li').height();
		var sliderUlWidth = slideCount * slideWidth;

		$('#slider').css({
			width : slideWidth,
			height : slideHeight
		});

		$('#slider ul').css({
			width : sliderUlWidth,
			marginLeft : -slideWidth
		});

		$('#slider ul li:last-child').prependTo('#slider ul');

		function moveLeft() {
			$('#slider ul').animate({
				left : +slideWidth
			}, 200, function() {
				$('#slider ul li:last-child').prependTo('#slider ul');
				$('#slider ul').css('left', '');
			});
		}
		;

		function moveRight() {
			$('#slider ul').animate({
				left : -slideWidth
			}, 200, function() {
				$('#slider ul li:first-child').appendTo('#slider ul');
				$('#slider ul').css('left', '');
			});
		}
		;

		$('a.control_prev').click(function() {
			moveLeft();
		});

		$('a.control_next').click(function() {
			moveRight();
		});

	});
</script>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<div id='main'>
		<article>
			<div id="slider">
				<a href="#" class="control_next"><img
					src="resources/image/right-arrow.png"></a> <a href="#"
					class="control_prev"><img src="resources/image/left-arrow.png"></a>
				<ul>
					<li><img alt="" src="resources/image/10.jpg"></li>
					<li><img alt="" src="resources/image/11.jpg"></li>
					<li><img alt="" src="resources/image/12.jpg"></li>
					<li><img alt="" src="resources/image/13.jpg"></li>
				</ul>
			</div>
			<div class="newbooks">
				<h3>신간도서</h3>
				<div class="booksinfo">
					<div class="booksimg">
						<img src="resources/image/10.jpg">
					</div>
					<div class="bookstable">
						<table>
							<tr>
								<td>책제목</td>
							</tr>
							<tr>
								<td>저자</td>
							</tr>
							<tr>
								<td>책설명</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

			<div class="bestbooks">
				<h3>베스트</h3>
				<div class="booksinfo">
					<div class="booksimg">
						<img src="resources/image/11.jpg">
					</div>
					<div class="bookstable">
						<table>
							<tr>
								<td>책제목</td>
							</tr>
							<tr>
								<td>저자</td>
							</tr>
							<tr>
								<td>책설명</td>
							</tr>
						</table>
					</div>
				</div>
			</div>

		</article>
		<nav>nav</nav>
		<aside>aside</aside>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>