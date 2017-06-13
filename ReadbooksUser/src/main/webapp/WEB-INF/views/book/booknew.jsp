<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="resources/css/new.css" type="text/css"
	media="screen" />
<title>리드북스신간</title>
</head>
<body>
	<jsp:include page="../header.jsp"></jsp:include>
	<div id="contents">
		<jsp:include page="../leftside.jsp"></jsp:include>
		<div id="new">
			<div id="newmenu">
				<h3>
					<a href="">신간</a>
				</h3>
				<div>
					<ul>
						<li><a href="">국내소설</a></li>
						<li><a href="">해외소설</a></li>
						<li><a href="">장편</a></li>
						<li><a href="">단편</a></li>
					</ul>
				</div>
			</div>
			<div id="newform">
				<div id="newtitle">
					<h1>
						<a href="">신간</a>
					</h1>
				</div>
				<div id="newcontents">
					<ul>
						<li><dl>
								<img alt="책상세이미지" src="">
							</dl>
							<dl id="newinfo">
								<dt>
									<p>책제목</p>
								</dt>
								<dd>
									<p>저자|출판사</p>
								</dd>
								<dd>
									<p>판매가</p>
								</dd>
								<dd>
									<p>짧은 책설명</p>
								</dd>
								<dd>
									<p>
										점수<img alt="별점" src="">
									</p>
								</dd>
							</dl>
							<dl id="newbtn">
								<dt>
									<span>수량</span>
								</dt>
								<dd>
									<a href="">상세보기</a>
								</dd>
								<dd>
									<a href="">장바구니</a>
								</dd>
								<dd>
									<a href="">찜하기</a>
								</dd>
							</dl></li>
					</ul>
				</div>
			</div>
		</div>
		<jsp:include page="../rightside.jsp"></jsp:include>
	</div>

	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>