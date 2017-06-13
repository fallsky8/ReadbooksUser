<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="shortcut icon" href="/resources/image/favicon.ico">
<link rel="stylesheet" href="/resources/css/main.css" type="text/css"
	media="screen" />
<link rel="stylesheet" href="/resources/css/agree.css" type="text/css"
	media="screen" />
<title>동의</title>
</head>
<body>
	<div id="wrap">
		<jsp:include page="../header.jsp"></jsp:include>
		<div id="contents">
			<jsp:include page="../leftside.jsp"></jsp:include>

			<div id="agreewrap">
				<div id="agreecontents">
					<h3>약관동의</h3>
					<form>
						<table>
							<tr>
								<td>이용약관<br> <textarea cols="40" rows="10">제 1장 총 칙
제1조(목적)
이 약관은 리드북스 주식회사가 운영하는 인터넷사이트(http://www.readbooks.com) 에서 제공하는 전자상거래 관련 서비스를 이용함에 있어 회사와 이용자의 권리, 의무, 책임사항 및 서비스 이용절차 등에 관한 사항을 규정함을 목적으로 합니다. 회사가 운영하는 오프라인의 영업장과 관련된 전자상거래 관련 서비스에 대해서도 그 성질에 반하지 아니하는 한 이 약관을 준용합니다.</textarea>
									<br> <input type="checkbox">readbooks 이용약관에 동의합니다.
								</td>
								<td>개인정보 수집 및 이용동의<br> <textarea cols="40" rows="10">1. 개인정보의 수집, 이용 목적
"개인정보"라 함은 생존하는 개인에 관한 정보로서 당해 정보에 포함되어 있는 성명, 주민등록번호 등의 사항에 의하여 당해 개인을 식별할 수 있는 정보(당해 정보만으로는 특정 개인을 식별할 수 없더라도 다른 정보와 용이하게 결합하여 식별할 수 있는 것을 포함)를 말합니다.
개인정보 수집은 "readbooks" 서비스를 이용하고자 하는 이용자의 의사를 확인하며, 최적의 서비스를 제공하고자 하는 것입니다. "readbooks"는 인터넷 전자상거래회사로서 전자상거래 및 이와 관련한 다양한 서비스를 이용자들의 특성, 기호에 맞추어 제공하고 이용자가 "readbooks"의 서비스를 이용함에 따라 일어나는 문제를 해결하기 위해 일부 한정된 범위내에서 개인정보를 수집하고 있습니다.
							</textarea> <br> <input type="checkbox">개인정보 수집 및 이용에 동의합니다.
								</td>
							<tr>
								<td>개인정보 처리 위탁 동의<br> <textarea cols="40" rows="10">개인정보 처리위탁
회사는 서비스 향상을 위해서 아래와 같이 개인정보를 위탁하고 있으며, 관계 법령에 따라 위탁계약 시 개인정보가 안전하게 관리될 수 있도록 필요한 사항을 규정하고 있습니다. 또한 동의를 거부하시고자 하는 경우 회원정보변경을 통해 직접 탈퇴 진행 또는 고객센터로 요청할 수 있습니다. 단,동의거부에 따른 서비스사용에 제한이 있을 수 있습니다.</textarea>
									<br> <input type="checkbox">개인정보 처리 위탁에 동의합니다.
								</td>
						</table>
					</form>
				</div>
				<div id="agreebtn">
					<button type="button">가입하기</button>
				</div>
			</div>
			<jsp:include page="../rightside.jsp"></jsp:include>
		</div>
		<jsp:include page="../footer.jsp"></jsp:include>
	</div>
</body>
</html>