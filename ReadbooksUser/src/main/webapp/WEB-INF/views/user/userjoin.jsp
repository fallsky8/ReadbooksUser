<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>리드북스 회원가입</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script src="https://ssl.daumcdn.net/dmaps/map_js_init/postcode.v2.js"></script>
<script type="text/javascript">
	$(function() {
		$("#userjoin").click(function() {
			$("#joinform").attr({
				"method" : "POST",
				"action" : "/userInsert.do"
			});
			$("#joinform").submit();
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
			<div>
				<form id="joinform" name="joinform">
					<input type="button" onclick="Postcode()" value="주소검색"><br>
					<input type="text" id="user_address" name="user_address"
						placeholder="주소">
					<table>
						<tr>
							<td>필수정보입력</td>
						</tr>
						<tr>
							<td>아이디</td>
							<td><input type="text" name="user_id" id="user_id"></td>
							<td><input type="button" name="btnidcheck" id="btnidcheck"
								value="중복확인"> <small>4~12자리의 영문소문자와 숫자만 가능합니다</small></td>
						</tr>
						<tr>
							<td>비밀번호</td>
							<td><input type="password" name="user_pw" id="user_pw"></td>
							<td><small>8~20자리의 영문 대/소문자,숫자,특수문자 조합</small></td>
						</tr>
						<tr>
							<td>비밀번호확인</td>
							<td><input type="password" name="user_pwchk" id="user_pwchk"></td>
							<td><small>비밀번호를 한 번 더 입력해주세요</small></td>
						</tr>
						<tr>
							<td>이름</td>
							<td><input type="text" name="user_name" id="user_name"></td>
						</tr>
						<tr>
							<td>휴대폰번호</td>
							<td><input type="tel" id="user_phonenumber"
								name="user_phonenumber"></td>
						</tr>
						<tr>
							<td>비밀번호 찾기 질문 <input type="text" id="user_pwquestion"
								name="user_pwquestion"></td>
						</tr>
						<tr>
							<td>비밀번호 찾기 답 <input type="text" id="user_pwanswer"
								name="user_pwanswer"></td>
						</tr>
						<tr>
							<td>이메일</td>
							<td><input type="email" id="user_email" name="user_email"><input
								type="hidden" id="user_serviceagreement"
								name="user_serviceagreement"> <input type="hidden"
								id="user_collectiveagreement" name="user_collectiveagreement">
								<input type="hidden" id="user_referralagreement"
								name="user_referralagreement">
							<td><input type="button" id="userjoin" value="가입하기"></td>
						</tr>
					</table>
				</form>
			</div>
		</article>
		<aside>aside</aside>
	</div>
	<footer>
		<jsp:include page="../footer.jsp"></jsp:include>
	</footer>
</body>
</html>