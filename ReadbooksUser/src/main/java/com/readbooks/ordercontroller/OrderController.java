package com.readbooks.ordercontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.bookvo.BookVO;
import com.readbooks.orderservice.OrderService;
import com.readbooks.ordervo.OrderVO;

@Controller
@RequestMapping(value = "/")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/orderinsertpage")
	public String orderInsertPage(@ModelAttribute BookVO bookvo, HttpSession session, Model model) {
		model.addAttribute("bookvo", bookvo);
		return "order/orderinsert";
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
}