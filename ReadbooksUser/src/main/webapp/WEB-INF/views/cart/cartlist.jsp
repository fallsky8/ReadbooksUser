<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="resources/image/favicon.ico">
<link rel="stylesheet" href="resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="resources/css/cart.css" type="text/css"
	media="screen" />
<title>장바구니</title>
</head>
<body>
	<div id="wrap">
		<input type="hidden" id="user_id" name="user_id"
			value="${sessionScope.user_id }">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<div id="cartwrap">
				<div id="cartcheck">
					<table>
						<tr>
							<th><input type="checkbox"></th>
							<th>상품이미지</th>
							<th>상품명</th>
							<th>상품가격</th>
							<th>수량</th>
							<th>합계</th>
							<th>삭제</th>
							<th>주문비밀번호</th>
						</tr>
						<tr>
							<td><input type="checkbox"></td>
							<td>이미지</td>
							<td>잠1</td>
							<td>12,800</td>
							<td><input type="text"><input type="button"
								value="수정"></td>
							<td>합계넣는다</td>
							<td><input type="button" value="삭제"></td>
						</tr>
					</table>
				</div>
				<div id="cartsum">
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
						<tr>
							<td>적립포인트</td>
							<td>200포인트</td>
						</tr>
					</table>
				</div>
				<div id="cartbtn">
					<button>쇼핑계속하기</button>
					<button>주문하기</button>
				</div>
			</div>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>