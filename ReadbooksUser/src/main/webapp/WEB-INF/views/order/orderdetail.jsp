<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#printbtn").click(function() {
			$("#serviceWrap").hide();
			$("#sideMenu").hide();
			$("#fooot").hide();
			$("#headd").hide();
			$("#printbtn").hide();
			$("#listbtn").hide();
			window.print();
			window.location.reload(true);
		});

		$("#ordercencle").click(function() {
			$("#orderdata").attr({
				"method" : "POST",
				"action" : "/orderstatus.do"
			});
			$("#orderdata").submit();
		});
	});
</script>
<title>주문 상세 내역</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Amarante');

/** page structure **/
#primary_nav_wrap ul #iii:NTH-CHILD(7) {
	background-color: #5fc5c5;
}

#sideMenu a:NTH-CHILD(5) {
	background-color: rgba(0, 0, 0, 0.15);
}

.table {
	width: 100%;
}

.orderdiv {
	margin-left: 210px;
}
</style>
</head>
<body>
	<header id="headd">
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="#" class="menu-item">마이페이지</a> <a href="#"
					class="menu-item">회원정보관리</a> <a href="#" class="menu-item">&nbsp;&nbsp;&nbsp;-개인정보관리</a>
				<a href="/useroutpage.do" class="menu-item">&nbsp;&nbsp;&nbsp;-회원탈퇴</a>
				<a href="#" class="menu-item">주문내역</a> <a href="/mylistGet.do"
					class="menu-item">마이리스트</a>
			</div>
			<form id="orderdata" name="orderdata">
				<div class="orderdiv">
					<input type="button" value="프린트하기" id="printbtn"> <input
						type="hidden" name="order_number" id="order_number"
						value="${orderdetail.order_number}" />
					<table class="table">
						<caption>주문 상품 정보</caption>
						<thead>
							<tr>
								<th><span>상태</span></th>
								<th><span>상품명</span></th>
								<th><span>주문수량</span></th>
								<th><span>가격</span></th>
								<th><span>주문취소</span></th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td class="lalign">${orderdetail.order_status}</td>
								<td>${orderdetail.book_name}</td>
								<td>${orderdetail.order_quantity}권</td>
								<td>${orderdetail.order_orderprice}원</td>
								<td><input type="button" id="ordercencle"
									name="ordercencle" value="주문취소"></td>
							</tr>
						</tbody>
					</table>
					<table id="keywords" class="table">
						<caption>주문,배송 정보</caption>
						<tr>
							<th><span>주문번호</span></th>
							<td class="lalign">${orderdetail.order_number}</td>
						</tr>
						<tr>
							<th><span>주문일자</span></th>
							<td>${orderdetail.order_date}</td>
						</tr>
						<tr>
							<th><span>주문자</span></th>
							<td>${orderdetail.order_orderer}</td>
						</tr>
						<tr>
							<th><span>수령자</span></th>
							<td>${orderdetail.order_recipient}</td>
						</tr>
						<tr>
							<th><span>휴대폰번호</span></th>
							<td>010-6292-9657</td>
						</tr>
						<tr>
							<th><span>배송지주소</span></th>
							<td>${orderdetail.order_receiptaddress}</td>
						</tr>
						<tr>
							<th><span>요청사항</span></th>
							<td>${orderdetail.order_requirement}</td>
						</tr>
					</table>
					<input type="button" value="목록보기" id="listbtn"
						onclick="history.go(-1)">
				</div>
			</form>
		</article>
		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
		<footer id="fooot">
			<jsp:include page="../footer.jsp"></jsp:include>
		</footer>
	</div>
</body>
</html>