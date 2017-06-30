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
<script type="text/javascript" src="/resources/js/common.js"></script>
<script type="text/javascript"
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery.tablesorter/2.28.14/js/jquery.tablesorter.min.js"></script>
<title>주문내역</title>
<script type="text/javascript">
	$(function() {
		$('#keywords').tablesorter();
	});
</script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Amarante');

/** page structure **/
#keywords {
	font-size: 13px;
	margin-left: 140px;
}

#keywords thead {
	cursor: pointer;
	background: #5fc5c5;
}

#keywords thead tr th {
	font-weight: bold;
	padding: 12px 30px;
	padding-left: 30px;
	text-align: center;
}

#keywords tbody tr {
	color: #555;
}

#keywords tbody tr td {
	font-family: 'Helvetica Neue', Helvetica, Arial, sans-serif;
	padding: 25px 10px;
	text-align: center;
}

#keywords thead .tablesorter-header-inner {
	width: 90px !important;
}
</style>
</head>
<body>
	<header>
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

			<table id="keywords">
				<thead>
					<tr>
						<th><span>주문번호</span></th>
						<th><span>주문일자</span></th>
						<th><span>주문내역</span></th>
						<th><span>주문금액/수량 </span></th>
						<th><span>주문자</span></th>
						<th><span>주문상태</span></th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="orderlist" items="${orderlist }">
						<tr>
							<td class="lalign">${orderlist.order_number }</td>
							<td>${orderlist.order_date }</td>
							<td>언어의 온도 외 2권</td>
							<td>${orderlist.order_quantity}</td>
							<td>${orderlist.order_orderer }</td>
							<td>${orderlist.order_status }</td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</article>
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
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>