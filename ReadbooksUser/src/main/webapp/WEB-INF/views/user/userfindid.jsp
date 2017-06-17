<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/common.css" type="text/css"
	media="screen" />
<title>id찾기</title>
</head>
<body>
	<div>
		<div>

			<h2>아이디찾기</h2>

			<table>
				<tr>
					<td>이름</td>
					<td><input type="text" name="" id="">가입 시 등록된 실명</td>
				</tr>
				<tr>
					<td>생년월일</td>
					<td><input type="date" name="" id="">신분증 상의 생년월일</td>
				</tr>
				<tr>
					<td>휴대폰번호</td>
					<td><select name="" id="">
							<option value="">선택</option>
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="016">016</option>
							<option value="018">018</option>
					</select> - <input type="text" name="" id=""> - <input type="text"
						name="" id=""></td>
				<tr>
					<td>이메일</td>
					<td><input type="text" name="" id="">@<input
						type="text" name="" id=""> <select name="" id="">
							<option value="">선택</option>
							<option value="naver.com">네이버</option>
							<option value="gmail">구글(메일)</option>
							<option value="daum.net">다음</option>
							<option value="nate.com">네이트</option>
					</select><br>가입 시 등록된 이메일 주소
				</tr>
				<tr>
					<td></td>
					<td><input type="button" name="" id="" value="확인"> <input
						type="button" name="" id="" value="다시 입력"></td>
				</tr>
			</table>

			<div id="idsearchfooter">
				<div id="logobox">
					<img id="idsearchlogo" alt="로고"
						src="resources/image/readbooks-logo.png">
				</div>
				<div id="idsearchfooter1">
					<div id="idsearchfooter2">
						<ul>
							<li>아직 리드북스 회원이 아니세요?</li>
							<li><input type="button" name="" id="" value="리드북스 회원가입">
						</ul>
					</div>
					<div id="idsearchfooter3">
						<ul>
							<li><a href="">로그인</a></li>
							<li><a href="">비밀번호찾기</a></li>
							<li><a href="">고객센터</a></li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>