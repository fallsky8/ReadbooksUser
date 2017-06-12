<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>리드북스 상품 등록</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(function() {
		$("#btnbookinsert").click(function() {
			$("#bookinsertform").attr({
				"method" : "POST",
				"action" : "/adminbook/adminbookinsert.do"
			});
			$("#bookinsertform").submit();
		});
	});
</script>
</head>
<body>
	<form id="bookinsertform" name="bookinsert">
		<table>
			<tr>
				<td>책 번호<input type="text" id="book_number" name="book_number"></td>
			</tr>
			<tr>
				<td>상품명 <input type="text" id="book_name" name="book_name"></td>
			</tr>
			<tr>
				<td>상품수량<input type="text" id="book_quantity" name="book_quantity"></td>
			</tr>
			<tr>
				<td>상품 가격<input type="text" id="book_price" name="book_price"></td>
			</tr>
			<tr>
				<td>국내외여부 <input type="text" id="book_country" name="book_country"></td>
			</tr>
			<tr>
				<td>장단편여부 <input type="text" id="book_story"
					name="book_story"></td>
			</tr>
			<tr>
				<td>저자 <input type="text" id="book_writer"
					name="book_writer"></td>
			</tr>	
			<tr>
				<td>출판사 <input type="text" id="book_publisher"
					name="book_publisher"></td>
			</tr>
			<tr>
				<td>책소개  <input type="text" id="book_info"
					name="book_info"></td>
			</tr>
			<tr>
				<td>저자소개 <input type="text" id="book_writerinfo"
					name="book_writerinfo"></td>
			</tr>
			<tr>
				<td>출판사리뷰  <input type="text" id="book_publisherreview"
					name="book_publisherreview"></td>
			</tr>
			<tr>
				<td>상품이미지  <input type="text" id="book_image"
					name="book_image"></td>
			</tr>
			
			<tr>
				<td>할인율  <input type="text" id="book_discount"
					name="book_discount"></td>
			</tr>
			
			
			<tr>
				<td><input type="button" id="btnbookinsert" value="등록하기"></td>
			</tr>
			<tr>
				<td><input type="button" id="btnbookcancle" value="취소"></td>
			</tr>
		</table>
	</form>
</body>
</html>