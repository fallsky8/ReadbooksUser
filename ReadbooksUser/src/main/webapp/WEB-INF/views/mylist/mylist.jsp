<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>찜</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<div id="mylistwrap">
				<div id="mylistcheck">
					<table>
						<tr>
							<th>상품이미지</th>
							<th>상품명</th>
							<th><input type="checkbox"><input type="button"
								value="장바구니"></th>
						</tr>
						<tr>
							<td>이미지</td>
							<td>건방진 장루이와 68일</td>
							<td><input type="checkbox"><input type="button"
								value="장바구니"><input type="button" value="삭제">
					</table>
				</div>
				<div id="mylistbtn">
					<button>쇼핑계속하기</button>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>