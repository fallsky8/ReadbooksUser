<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<script type="text/javascript">
	$(function() {
		/* 검색 후 검색 대상과 검색 단어 출력 */
		if ("<c:out value='${data.keyword}'/>" != "") {
			$("#keyword").val("<c:out value='${data.keyword}' />");
			$("#search").val("<c:out value='${data.search}' />");
		}

		/* 검색 대상이 변경될 때마다 처리 이벤트 */
		$("#search").change(function() {
			if ($("#search").val() == "all") {
				$("#keyword").val("글 목록 전체 조회");
			} else if ($("#search").val() != "all") {
				$("#keyword").val("");
				$("#keyword").focus();
			}
		});

		/* 검색 버튼 클릭 시 처리 이벤트 */
		$("#searchData").click(function() {
			if ($("#search").val() == "all") {
				if (!chkSubmit($('#keyword'), "검색어를"))
					return;
			}
			$("#f_search").attr({
				"method" : "get",
				"action" : "/searchbookGet.do"
			});
		});

		$(".inquire").click(function() {
			var user_id = "${sessionScope.user_id}";
			if (user_id != "") {
				location.href = "/inquireboardList.do";
			} else {
				alert("회원만 들어갈 수 있습니다. 로그인 페이지로 이동합니다.");
				location.href = "/usercheck.do";
			}
		});
		$(".mylist").click(function() {
			var user_id = "${sessionScope.user_id}";
			if (user_id != "") {
				location.href = "/mylistGet.do";
			} else {
				alert("회원만 들어갈 수 있습니다. 로그인 페이지로 이동합니다.");
				location.href = "/usercheck.do";
			}
		});
		$(".userout").click(function() {
			var user_id = "${sessionScope.user_id}";
			if (user_id != "") {
				location.href = "/useroutpage.do";
			} else {
				alert("회원만 들어갈 수 있습니다. 로그인 페이지로 이동합니다.");
				location.href = "/usercheck.do";
			}
		});
		$(".userinfo").click(function() {
			var user_id = "${sessionScope.user_id}";
			if (user_id != "") {
				location.href = "/userinfo.do";
			} else {
				alert("회원만 들어갈 수 있습니다. 로그인 페이지로 이동합니다.");
				location.href = "/usercheck.do";
			}
		});
		$(".order").click(function() {
			var user_id = "${sessionScope.user_id}";
			if (user_id != "") {
				location.href = "/orderSelect.do";
			} else {
				alert("회원만 들어갈 수 있습니다. 로그인 페이지로 이동합니다.");
				location.href = "/usercheck.do";
			}
		});
	});
</script>
</head>
<body>
	<c:choose>
		<c:when test="${empty sessionScope.user_id }">
			<div class="loginjoin">
				<nav id="primary_nav_wrap">
					<ul>
						<li><a href="/usercheck.do">로그인</a></li>
						<li><a href="/useragreement.do">회원가입</a></li>
					</ul>
				</nav>
			</div>
		</c:when>
		<c:otherwise>
			<div class="loginjoin">
				<nav id="primary_nav_wrap">
					<ul>
						<li><a href="/userlogout.do">로그아웃</a></li>
					</ul>
				</nav>
			</div>
		</c:otherwise>
	</c:choose>
	<div class="logoimg">
		<a href="/home.do"><img src="/resources/image/readbooks-logo.png"
			width="240" height="60"></a>
	</div>
	<div class="search">
		<form id="f_search" name="f_search">
			<div class="searchbar">
				<select id="search" name="search" hidden="hidden">
					<option value="book_name">제목</option>
					<option value="all">전체</option>
				</select> <input type="text" name="keyword" id="keyword"
					placeholder="책 제목으로 검색하세요!" />
			</div>
			<div class="searchcart">
				<ul>
					<li><a id="searchData"> <input type="image"
							src="/resources/image/magnifying-glass.png" height="28"
							width="28"></a></li>
					<li><a href="/cartlistGet.do"><img alt="장바구니"
							src="/resources/image/shopping-cart.png" height="28" width="28"></a></li>
				</ul>
			</div>
		</form>
	</div>
	<div class="navmenu">
		<nav id="primary_nav_wrap">
			<ul>
				<li class="current-menu-item" id="iii"><a href="/home.do">Home</a></li>
				<li id="iii"><a href="/koreabookGet.do">국내소설</a>
					<ul>
						<li><a href="/korealongbookGet.do">국내 장편 소설</a></li>
						<li><a href="/koreashortbookGet.do">국내 단편 소설</a></li>
						<!-- 					<li><a href="#">Sub Menu 4</a> -->
						<!-- 						<ul> -->
						<!-- 							<li><a href="#">Deep Menu 1</a> -->
						<!-- 								<ul> -->
						<!-- 									<li><a href="#">Sub Deep 1</a></li> -->
						<!-- 									<li><a href="#">Sub Deep 2</a></li> -->
						<!-- 									<li><a href="#">Sub Deep 3</a></li> -->
						<!-- 									<li><a href="#">Sub Deep 4</a></li> -->
						<!-- 								</ul></li> -->
						<!-- 							<li><a href="#">Deep Menu 2</a></li> -->
						<!-- 						</ul></li> -->
					</ul></li>
				<li id="iii"><a href="/foreignbookGet.do">해외소설</a>
					<ul>
						<li><a href="/foreignlongbookGet.do">해외 장편 소설</a></li>
						<li><a href="/foreignshortbookGet.do">해외 단편 소설</a></li>
					</ul></li>
				<li id="iii"><a href="/bestbookGet.do">베스트소설</a> <!-- 				<ul> -->
					<!-- 					<li class="dir"><a href="#">Sub Menu 1</a></li> --> <!-- 					<li class="dir"><a href="#">Sub Menu 2 THIS IS SO LONG IT -->
					<!-- 							MIGHT CAUSE AN ISSEUE BUT MAYBE NOT?</a> --> <!-- 						<ul> -->
					<!-- 							<li><a href="#">Category 1</a></li> --> <!-- 							<li><a href="#">Category 2</a></li> -->
					<!-- 							<li><a href="#">Category 3</a></li> --> <!-- 							<li><a href="#">Category 4</a></li> -->
					<!-- 							<li><a href="#">Category 5</a></li> --> <!-- 						</ul></li> -->
					<!-- 					<li><a href="#">Sub Menu 3</a></li> --> <!-- 					<li><a href="#">Sub Menu 4</a></li> -->
					<!-- 					<li><a href="#">Sub Menu 5</a></li> --> <!-- 				</ul></li> -->
				<li id="iii"><a href="/newbookGet.do">신간소설</a></li>
				<li id="iii"><a href="/reviewboardList.do">리뷰게시판</a></li>
				<li id="iii"><a class="userinfo" style="cursor: pointer;">마이페이지</a>
					<ul>
						<li><a href="/userinfo.do">회원정보관리</a>
							<ul>
								<li class="dir"><a class="userout" style="cursor: pointer;">회원탈퇴</a></li>
								<li class="dir"><a class="userinfo" style="cursor: pointer;">개인정보관리</a></li>
							</ul></li>
						<li><a class="order" style="cursor: pointer;">주문내역</a></li>
						<li><a class="mylist"  style="cursor: pointer;">마이리스트</a></li>
					</ul></li>
				<li id="iii"><a href="/noticeboardList.do">고객센터</a>
					<ul>
						<li><a href="/noticeboardList.do">공지사항</a></li>
						<li><a href="/faqboardList.do">자주 묻는 질문</a></li>
						<li><a class="inquire" style="cursor: pointer;">1:1 문의</a><input type="hidden"
							id="user_id" name="user_id" value="${sessionScope.user_id}"></li>
					</ul></li>
			</ul>
		</nav>
	</div>
</body>
</html>