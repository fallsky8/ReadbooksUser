<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/swipers.css" type="text/css"
	media="screen" />
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<script src="/resources/js/cart.js"></script>
<link rel="stylesheet"
	href="http://www.bandinlunis.com/common/css/newMain.1.06.css?v=20170623"
	type="text/css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/subpage.css" type="text/css"
	media="screen" />
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript" src="/resources/js/common.js"></script>
<title>개인정보관리</title>
<style type="text/css">
.tbl_model {
	width: 771px;
	table-layout: fixed;
	border-spacing: 0;
	border-collapse: collapse;
	word-wrap: break-word;
	word-break: keep-all;
	border: 0;
	border-bottom: 1px solid #e5e5e5;
	margin-left: 230px;
}

.tbl_model td, .tbl_model th {
	line-height: 14px;
	vertical-align: top;
	border: 0;
	border-top: 1px solid #e5e5e5
}

.tbl_model th {
	color: #333;
	border-right: 1px solid #e5e5e5;
	background: #f9f9f9;
	width: 120px;
}

.tbl_model td {
	color: #565656
}

.tbl_model .tdcell {
	padding: 20px 20px 20px 20px !important;
}

.tbl_model .thcell {
	padding: 20px 20px 20px 20px !important;
}

.tbl_model input[readonly], .tbl_model input[type=text].focus {
	color: #8e8e8e
}

.tbl_model input[type=checkbox] {
	width: 13px;
	height: 13px;
	margin: 0 7px 0 0;
	vertical-align: top;
	*margin: 0 8px 0 -1px
}

.tbl_model select {
	font-size: 12px;
	float: left;
	height: 18px;
	margin-top: 5px;
	vertical-align: top;
	letter-spacing: 0;
	color: #333;
	border: 1px solid #ccc;
	background: #fff
}

#primary_nav_wrap ul #iii:NTH-CHILD(7) {
	background-color: #5fc5c5;
}

#sideMenu a:NTH-CHILD(3) {
	background-color: rgba(0, 0, 0, 0.15);
}
</style>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnuserupdate").click(function() {
			$("#userupdateform").attr({
				"method" : "POST",
				"action" : "/userupdate.do"
			});
			$("#userupdateform").submit();

		});
	});
	function Postcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 각 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullAddr = ''; // 최종 주소 변수
						var extraAddr = ''; // 조합형 주소 변수

						// 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
						if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
							fullAddr = data.roadAddress;

						} else { // 사용자가 지번 주소를 선택했을 경우(J)
							fullAddr = data.jibunAddress;
						}

						// 사용자가 선택한 주소가 도로명 타입일때 조합한다.
						if (data.userSelectedType === 'R') {
							//법정동명이 있을 경우 추가한다.
							if (data.bname !== '') {
								extraAddr += data.bname;
							}
							// 건물명이 있을 경우 추가한다.
							if (data.buildingName !== '') {
								extraAddr += (extraAddr !== '' ? ', '
										+ data.buildingName : data.buildingName);
							}
							// 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
							fullAddr += (extraAddr !== '' ? ' (' + extraAddr
									+ ')' : '');
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('user_address').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('user_address').value = data.zonecode
								+ fullAddr;

						// 커서를 상세주소 필드로 이동한다.
						document.getElementById('user_address').focus();
					}
				}).open();
	}
</script>
</head>
<body>
	<header>
		<jsp:include page="../header.jsp"></jsp:include>
	</header>
	<div id="main">
		<article>
			<div id="sideMenu" class="side-menu">
				<a href="/userinfo.do" class="menu-item">마이페이지</a> <a
					href="/userinfo.do" class="menu-item">회원정보관리</a> <a
					href="/userinfo.do" class="menu-item">&nbsp;&nbsp;&nbsp;-개인정보관리</a>
				<a href="/useroutpage.do" class="menu-item">&nbsp;&nbsp;&nbsp;-회원탈퇴</a>
				<a href="#" class="menu-item">주문내역</a> <a href="/mylistGet.do"
					class="menu-item">마이리스트</a>
			</div>
			<form id="userupdateform">
				<input type="hidden" id="user_id" name="user_id"
					value="${sessionScope.user_id}">
				<table class="tbl_model">
					<tr>
						<th><div class="thcell">아이디</div></th>
						<td>
							<div class="tdcell">${userlist.user_id }</div>
						</td>
					</tr>
					<tr>
						<th>

							<div class="thcell">비밀번호</div>

						</th>
						<td><div class="tdcell">
								<input type="password" name="user_pw" id="user_pw"
									class="form-control" value="${userlist.user_pw }"
									readonly="readonly">
							</div></td>
					</tr>
					<tr>
						<th>

							<div class="thcell">이름</div>

						</th>
						<td><div class="tdcell">${userlist.user_name }</div></td>
					</tr>
					<tr>
						<th>

							<div class="thcell">이메일</div>

						</th>
						<td><div class="tdcell">${userlist.user_email }</div></td>
					</tr>
					<tr>
						<th>

							<div class="thcell">휴대폰번호</div>

						</th>
						<td><div class="tdcell">
								<input type="text" name="user_phonenumber" id="user_phonenumber"
									class="form-control" value="${userlist.user_phonenumber }">
							</div></td>
					</tr>
					<tr>
						<th>

							<div class="thcell">주소</div>

						</th>
						<td><div class="tdcell">
								<input type="text" name="user_address" id="user_address"
									class="form-control" value="${userlist.user_address }">
								<input type="button" onclick="Postcode()"
									class="btn btn-warning" value="주소검색" style="float: right;">
							</div></td>
					</tr>
				</table>
			</form>
			<input type="button" value="내정보수정" id="btnuserupdate"
				class="btn btn-success" style="float: right; margin-top: -10px;">
		</article>

		<aside>
			<jsp:include page="../aside.jsp"></jsp:include>
		</aside>
	</div>
	<jsp:include page="../footer.jsp"></jsp:include>
</body>
</html>