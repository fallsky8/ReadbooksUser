package com.readbooks.ordercontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.bookservice.BookService;
import com.readbooks.bookvo.BookVO;
import com.readbooks.cartvo.CartVO;
import com.readbooks.orderservice.OrderService;
import com.readbooks.ordervo.OrderVO;
import com.readbooks.userservice.UserService;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping(value = "/")
public class OrderController {

	@Autowired
	private OrderService orderService;
	@Autowired
	private UserService userService;
	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/orderinsertpage", method = RequestMethod.GET)
	public String orderInsertPage(@ModelAttribute BookVO bookvo, @ModelAttribute UserVO uservo,
			@ModelAttribute CartVO cartvo, HttpSession session, Model model) {
		// 유저 정보
		uservo.setUser_id((String) session.getAttribute("user_id"));
		cartvo.setUser_id((String) session.getAttribute("user_id"));
		UserVO userget = userService.userGet(uservo);
		model.addAttribute("uservo", userget);
		// 카트에 있던 책정보
		List<BookVO> allbookGet = new ArrayList<BookVO>();
		allbookGet = bookService.allbookGet(cartvo);
		model.addAttribute("bookvo", allbookGet);
		return "order/orderinsert";
		// 주문자 이름
		// 그 책 정보
	}

	@RequestMapping(value = "/orderInsert", method = RequestMethod.POST)
	public String insertOrder(@ModelAttribute OrderVO order) {
		int result = 0;
		String url = "";
		result = orderService.orderInsert(order);
		if (result == 1) {
			url = "/home";
		}
		return url;
	}

	@RequestMapping(value = "/orderSelect", method = RequestMethod.GET)
	public String selectOrder(@ModelAttribute OrderVO order, Model model, @ModelAttribute UserVO user,
			HttpSession session) {
		order.setUser_id((String) session.getAttribute("user_id"));
		List<OrderVO> orderselect = orderService.orderSelect(order);
		model.addAttribute("orderlist", orderselect);
		return "order/orderlist";
	}

	@RequestMapping(value = "/orderdetail", method = RequestMethod.GET)
	public String bookdetailGet(@ModelAttribute OrderVO order, Model model, HttpSession session) {
		OrderVO orderdetail = new OrderVO();
		orderdetail = orderService.orderdetail(order);
		model.addAttribute("orderdetail", orderdetail);
		return "order/orderdetail";
	}

}