<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="resources/css/buycom.css" type="text/css"
	media="screen" />
<title>주문완료</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<jsp:include page="../leftside.jsp"></jsp:include>

			<div id="buycomwrap">
				<div id="buycomcheck">
					<h3>주문이 완료되었습니다.</h3>
					<table>
						<tr>
							<th>상품이미지</th>
							<th>상품명</th>
							<th>상품가격</th>
							<th>주문금액</th>
							<th>주문비밀번호</th>
						</tr>
						<tr>
							<td>이미지</td>
							<td>잠1</td>
							<td>12,800</td>
							<td></td>
						</tr>
					</table>
				</div>

				<div id="buycomsum">
					<table>
						<tr>
							<th>총상품갯수</th>
							<th>총상품금액</th>
							<th rowspan="2">+</th>
							<th>총배송비</th>
							<th rowspan="2">-</th>
							<th>상품할인</th>
							<th rowspan="2">=</th>
							<th>최종결제금액</th>
						</tr>
						<tr>
							<td>2개</td>
							<td>25,600원</td>
							<td>0원</td>
							<td>0원</td>
							<td>25,600원</td>
						</tr>
					</table>
				</div>
				<div id="buycomshop">
					<button>쇼핑계속하기</button>
				</div>
			</div>

			<jsp:include page="../rightside.jsp"></jsp:include>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>