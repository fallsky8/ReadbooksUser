<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="resources/css/main.css" type="text/css"
	media="screen" />
<title>리드북스에 오신 걸 환영합니다.</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="header.jsp"></jsp:include>

		<div id="contents">
			<jsp:include page="leftside.jsp"></jsp:include>
			
			<div id="center">
				<div id="slidebanner">
					<h3>슬라이드배너</h3>
				</div>
				<div id="maincontents">
					<div id="best">
						<h3>베스트</h3>
						<table>
							<tr>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
							</tr>

						</table>
					</div>
					<div id="newarrival">
						<h3>신간</h3>
						<table>
							<tr>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
								<td><img alt="책이미지" src=""><br>책제목넣기<br>가격넣기</td>
							</tr>
						</table>
					</div>
				</div>
			</div>
			<jsp:include page="rightside.jsp"></jsp:include>
		</div>

		<jsp:include page="footer.jsp"></jsp:include>
	</div>
</body>
</html>