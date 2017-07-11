<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/datatable.js"></script>
<script
	src="https://cdn.datatables.net/1.10.15/js/dataTables.bootstrap.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>주문내역</title>
<script type="text/javascript">
	$(function() {
		var table = $('#keywords').DataTable();
		$("#keywords tbody").on('click', 'tr', function() {
			var data = table.row(this).data();
			$("#order_number").val(data[0]);
			$("#detailForm").attr({
				"method" : "get",
				"action" : "/orderdetail.do"
			});
			$("#detailForm").submit();
		});
	});
</script>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Amarante');

/** page structure **/
#keywords {
	width: 100%;
	font-size: 13px;
	margin-left: 60px;
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

div[class='row'] {
	float: left;
	width: 900px;
}

.dataTables_paginate {
	width: 570px;
	margin-top: -15px;
}

.col-sm-6 {
	width: 70%;
	margin-left: 60px;
}

.col-sm-7 {
	width: 570px;
	margin-left: 60px;
}

#boardList {
	margin-left: 180px;
}

#keywords_info {
	margin-left: 60px;
}

#primary_nav_wrap ul #iii:NTH-CHILD(7) {
	background-color: #5fc5c5;
}

#sideMenu a:NTH-CHILD(5) {
	background-color: rgba(0, 0, 0, 0.15);
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
			<form name="detailForm" id="detailForm">
				<input type="hidden" name="order_number" id="order_number">
			</form>
			<table id="keywords">
				<thead>
					<tr>
						<th><span>번호</span></th>
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
							<td>${orderlist.order_number }</td>
							<td class="lalign">${orderlist.order_ordernumber }</td>
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
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
		<div id="onTop" class="ss_top">
			<a href="javascript://"><img
				src="http://image.bandinlunis.com/images/common/2014/btn_top.png"></a>
		</div>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>