<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
<title>리드북스에 오신 걸 환영합니다.</title>
<style type="text/css">
.carousel-indicators .active {
	background-color: #5fc5c5;
}

.carousel-indicators li {
	border: 1px solid #5fc5c5;
}

.carousel-control .glyphicon-chevron-left, .carousel-control .glyphicon-chevron-right,
	.carousel-control .icon-next, .carousel-control .icon-prev {
	color: #5fc5c5;
}

.ss_top {
	bottom: 80px !important;
}
</style>
</head>
<body>
	<header>
		<jsp:include page="header.jsp"></jsp:include>
	</header>
	<div id='main'>
		<article>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
					<li data-target="#myCarousel" data-slide-to="1"></li>
					<li data-target="#myCarousel" data-slide-to="2"></li>
				</ol>

				<!-- Wrapper for slides -->
				<div class="carousel-inner">
					<div class="item active">
						<img src="resources/image/111.jpg" style="margin-left: 115px;">
					</div>

					<div class="item">
						<img src="resources/image/222.jpg" style="margin-left: 115px;">
					</div>

					<div class="item">
						<img src="resources/image/777777777.jpg"
							style="margin-left: 115px;">
					</div>
				</div>
				<!-- Left and right controls -->
				<a class="left carousel-control" href="#myCarousel"
					data-slide="prev" style="background-image: none;"> <span
					class="glyphicon glyphicon-chevron-left"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="right carousel-control" href="#myCarousel"
					data-slide="next" style="background-image: none;"> <span
					class="glyphicon glyphicon-chevron-right"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
			<div class="issue_book">
				<h4 class="msub_tit">신간도서</h4>
				<br> <br> <br>
				<div id="swwww">
					<div class="swiper-container">
						<ul class="swiper-wrapper">
							<li class="swiper-slide"><c:forEach var="newbooklist"
									items="${newbooklist }" begin="0" end="4">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${newbooklist.book_number }"><img
													src="/resources/image/${newbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${newbooklist.book_number }">${newbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${newbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>
							<li class="swiper-slide"><c:forEach var="newbooklist"
									items="${newbooklist }" begin="5" end="9">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${newbooklist.book_number }"><img
													src="/resources/image/${newbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${newbooklist.book_number }">${newbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${newbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>



							<li class="swiper-slide"><c:forEach var="newbooklist"
									items="${newbooklist }" begin="10" end="14">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${newbooklist.book_number }"><img
													src="/resources/image/${newbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${newbooklist.book_number }">${newbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${newbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>


						</ul>
					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<script src="/resources/js/swiper.js"></script>
				<script>
					var swiper23 = new Swiper('#swwww .swiper-container', {
						pagination : '.swiper-pagination',
						slidesPerView : 1,
						paginationClickable : true,
						nextButton : '#swwww .swiper-button-next',
						prevButton : '#swwww .swiper-button-prev',
						loop : true,
						slidesPerGroup : 1,
						spaceBetween : 10
					});
				</script>
			</div>
			<div class="issue_book">
				<h4 class="msub_tit">베스트도서</h4>
				<br> <br> <br>

				<div id="dwwww">
					<div class="swiper-container">
						<ul class="swiper-wrapper">


							<li class="swiper-slide"><c:forEach var="bestbooklist"
									items="${bestbooklist }" begin="0" end="4">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${bestbooklist.book_number }"><img
													src="/resources/image/${bestbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${bestbooklist.book_number }">${bestbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${bestbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>

							<li class="swiper-slide"><c:forEach var="bestbooklist"
									items="${bestbooklist }" begin="5" end="9">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${bestbooklist.book_number }"><img
													src="/resources/image/${bestbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${bestbooklist.book_number }">${bestbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${bestbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>



							<li class="swiper-slide"><c:forEach var="bestbooklist"
									items="${bestbooklist }" begin="10" end="14">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${bestbooklist.book_number }"><img
													src="/resources/image/${bestbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${bestbooklist.book_number }">${bestbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${bestbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>


						</ul>
					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<script src="/resources/js/swiper.js"></script>
				<script>
					var swiper = new Swiper('#dwwww .swiper-container', {
						pagination : '.swiper-pagination',
						slidesPerView : 1,
						paginationClickable : true,
						nextButton : '#dwwww .swiper-button-next',
						prevButton : '#dwwww .swiper-button-prev',
						loop : true,
						slidesPerGroup : 1,
						spaceBetween : 10
					});
				</script>
			</div>
			<div class="issue_book">
				<h4 class="msub_tit">국내도서</h4>
				<br> <br> <br>
				<div id="fwwww">
					<div class="swiper-container">
						<ul class="swiper-wrapper">


							<li class="swiper-slide"><c:forEach var="koreabooklist"
									items="${koreabooklist }" begin="0" end="4">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${koreabooklist.book_number }"><img
													src="/resources/image/${koreabooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${koreabooklist.book_number }">${koreabooklist.book_name }</a>
												</dt>
												<dd class="b_author">${koreabooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>



							<li class="swiper-slide"><c:forEach var="koreabooklist"
									items="${koreabooklist }" begin="5" end="9">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${koreabooklist.book_number }"><img
													src="/resources/image/${koreabooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${koreabooklist.book_number }">${koreabooklist.book_name }</a>
												</dt>
												<dd class="b_author">${koreabooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>



							<li class="swiper-slide"><c:forEach var="koreabooklist"
									items="${koreabooklist }" begin="10" end="14">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${koreabooklist.book_number }"><img
													src="/resources/image/${koreabooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${koreabooklist.book_number }">${koreabooklist.book_name }</a>
												</dt>
												<dd class="b_author">${koreabooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>


						</ul>
					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<script src="/resources/js/swiper.js"></script>
				<script>
					var swiper = new Swiper('#fwwww .swiper-container', {
						pagination : '.swiper-pagination',
						slidesPerView : 1,
						paginationClickable : true,
						nextButton : '#fwwww .swiper-button-next',
						prevButton : '#fwwww .swiper-button-prev',
						loop : true,
						slidesPerGroup : 1,
						spaceBetween : 10
					});
				</script>

			</div>
			<div class="issue_book">
				<h4 class="msub_tit">해외도서</h4>
				<br> <br> <br>
				<div id="uwwww">
					<div class="swiper-container">
						<ul class="swiper-wrapper">


							<li class="swiper-slide"><c:forEach var="foreignbooklist"
									items="${foreignbooklist }" begin="0" end="4">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${foreignbooklist.book_number }"><img
													src="/resources/image/${foreignbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${foreignbooklist.book_number }">${foreignbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${foreignbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>

							<li class="swiper-slide"><c:forEach var="foreignbooklist"
									items="${foreignbooklist }" begin="5" end="9">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${foreignbooklist.book_number }"><img
													src="/resources/image/${foreignbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${foreignbooklist.book_number }">${foreignbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${foreignbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>



							<li class="swiper-slide"><c:forEach var="foreignbooklist"
									items="${foreignbooklist }" begin="10" end="14">
									<ul class="issue_book_list">

										<li>
											<div class="b_img">
												<a
													href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${foreignbooklist.book_number }"><img
													src="/resources/image/${foreignbooklist.book_image }"></a>
											</div>
											<dl>
												<dt>
													<a
														href="/bookdetail.do?user_id=${sessionScope.user_id }&book_number=${foreignbooklist.book_number }">${foreignbooklist.book_name }</a>
												</dt>
												<dd class="b_author">${foreignbooklist.book_writer }</dd>
											</dl>
										</li>

									</ul>
								</c:forEach></li>
						</ul>
					</div>
					<div class="swiper-button-prev"></div>
					<div class="swiper-button-next"></div>
				</div>
				<script src="/resources/js/swiper.js"></script>
				<script>
					var swiper = new Swiper('#uwwww .swiper-container', {
						pagination : '.swiper-pagination',
						slidesPerView : 1,
						paginationClickable : true,
						nextButton : '#uwwww .swiper-button-next',
						prevButton : '#uwwww .swiper-button-prev',
						loop : true,
						slidesPerGroup : 1,
						spaceBetween : 10
					});
				</script>
			</div>
		</article>
		<nav>
			<div id="tjfalstjr">
				<img src="/resources/image/right_170616_ondo_2.jpg" />
			</div>
		</nav>
		<aside>
			<div id="serviceWrap">
				<div class="ss_myshop">
					<a href="#"><span>주요서비스</span></a>
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
					<a href="#"><span>주문내역</span></a>
				</div>
			</div>
		</aside>
		<div id="onTop" class="ss_top">
			<a href="javascript://"><img
				src="http://image.bandinlunis.com/images/common/2014/btn_top.png"></a>
		</div>
	</div>
	<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>