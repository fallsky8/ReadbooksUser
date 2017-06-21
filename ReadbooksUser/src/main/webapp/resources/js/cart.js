$(function() {
	$(".btndetail").click(function() {
		var b_num = $(this).parents("article").attr("data-num");
		$("#book_number").val(b_num);
		$("#booknumform").attr({
			"method" : "GET",
			"action" : "/bookdetail.do"
		});
		$("#booknumform").submit();
	});

	$(".cartlist").click(function() {
		var b_num = $(this).parents("article").attr("data-num");
		$("#book_number").val(b_num);
		$.ajax({
			url : "/cartInsert.do",
			type : "GET",
			data : $("#booknumform").serialize(),
		})

		var context = confirm("장바구니에 추가되었습니다. 장바구니로 이동하시겠습니까?");
		if (context == true) {
			location.href = "/cartlistGet.do";
		} else {
		}
	});
	$(".mylist").click(function() {
		var b_num = $(this).parents("article").attr("data-num");
		$("#book_number").val(b_num);
		$.ajax({
			url : "/mylistInsert.do",
			type : "GET",
			data : $("#booknumform").serialize(),
			success : function() {
				var context = confirm("마이리스트에 추가되었습니다. 마이리스트로 이동하시겠습니까?");
				if (context == true) {
					location.href = "/mylistGet.do";
				} else {
				}
			}
		})
	});

	var check = false;

	function changeVal(el) {
		var c_num = $(this).parents("article").attr("data-num");
		var c_number = $("#" + c_num).val(".qt");
		var qt = parseFloat(el.parent().children(".qt").html());
		var price = parseFloat(el.parent().children(".price").html());
		var eq = Math.round(price * qt * 100) / 100;
		$("#cart_buyquantity").val(qt);

		el.parent().children(".full-price").html(eq + "원");

		changeTotal();
	}

	function changeTotal() {

		var price = 0;

		$(".full-price").each(function(index) {
			price += parseFloat($(".full-price").eq(index).html());
		});

		price = Math.round(price * 100) / 100;
		var discount = Math.round(price * 10) / 100;
		var fullPrice = Math.round((price - discount) * 100) / 100;

		if (price == 0) {
			fullPrice = 0;
		}

		$(".subtotal span").html(price);
		$(".discount span").html(discount);
		$(".total span").html(fullPrice);
	}

	$(document)
			.ready(
					function() {
						if ($("#cart_buyquantity").val() == 0) {
							$("#cart_buyquantity").val(1);
						}
						changeTotal();
						$(".remove")
								.click(
										function() {
											var el = $(this);
											el.parent().parent().addClass(
													"removed");
											window
													.setTimeout(
															function() {
																el
																		.parent()
																		.parent()
																		.slideUp(
																				'fast',
																				function() {
																					el
																							.parent()
																							.parent()
																							.remove();
																					if ($(".product").length == 0) {
																						if (check) {
																							// 구매완료
																							$(
																									"#cart")
																									.html(
																											"<h1>구매 완료</h1><p>감사합니다 구매가 완료되었습니다. 쇼핑을 계속 하시려면 <a href='/home.do'>readbooks</a>. </p>");
																						} else {
																							// 상품없을시
																							$(
																									"#cart")
																									.html(
																											"<h1>장바구니에 등록된 상품이 없습니다.!</h1>");
																						}
																					}
																					changeTotal();
																				});
															}, 200);
										});
						// 수량 추가
						$(".qt-plus").click(
								function() {
									$(this).parent().children(".qt").html(
											parseInt($(this).parent().children(
													".qt").html()) + 1);

									$(this).parent().children(".full-price")
											.addClass("added");

									var el = $(this);
									window.setTimeout(function() {
										el.parent().children(".full-price")
												.removeClass("added");
										changeVal(el);
									}, 150);
								});
						// 수량 감소
						$(".qt-minus").click(
								function() {

									child = $(this).parent().children(".qt");

									if (parseInt(child.html()) > 1) {
										child.html(parseInt(child.html()) - 1);
									}

									$(this).parent().children(".full-price")
											.addClass("minused");

									var el = $(this);
									window.setTimeout(function() {
										el.parent().children(".full-price")
												.removeClass("minused");
										changeVal(el);
									}, 150);
								});

						window.setTimeout(function() {
							$(".is-open").removeClass("is-open")
						}, 1200);

						$(".payment").click(function() {
							check = true;
							$(".remove").click();
						});
					});
});