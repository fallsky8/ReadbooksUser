package com.readbooks.ordercontroller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.readbooks.orderservice.OrderService;
import com.readbooks.ordervo.OrderDTO;
import com.readbooks.ordervo.OrderForm;
import com.readbooks.ordervo.OrderVO;

@Controller
@RequestMapping(value = "/")
public class OrderController {

	@Autowired
	private OrderService orderService;

	@RequestMapping(value = "/orderinsertpage", method = RequestMethod.GET)
	public ModelAndView orderInsertPage(@ModelAttribute OrderDTO orderdto, HttpSession session, Model model) {
		OrderForm orderForm = new OrderForm();
		orderdto.setUser_id((String) session.getAttribute("user_id"));
		List<OrderDTO> orderInfoGet = new ArrayList<OrderDTO>();
		orderInfoGet = orderService.orderInfoGet(orderdto);
		OrderDTO userget = orderService.orderUserGet(orderdto);
		model.addAttribute("orderUserGet", userget);
		orderForm.setOrderdtos(orderInfoGet);

		return new ModelAndView("order/orderinsert", "orderForm", orderForm);

	}

	@RequestMapping(value = "/orderInsert", method = RequestMethod.POST)
	public ModelAndView insertOrder(@ModelAttribute("orderForm") OrderForm orderForm, @ModelAttribute OrderDTO orderdto,
			HttpSession session, Model model, @RequestParam(value = "order_orderer") String orderer,
			@RequestParam(value = "order_recipient") String recipient,
			@RequestParam(value = "order_receiptaddress") String receiptaddress,
			@RequestParam(value = "order_requirement") String requirement,
			@RequestParam(value = "order_recipientphonenumber") String recipientphonenumber) {
		orderdto.setUser_id((String) session.getAttribute("user_id"));
		List<OrderDTO> orderInfoGet = new ArrayList<OrderDTO>();
		orderInfoGet = orderService.orderInfoGet(orderdto);
		for (int i = 0; orderInfoGet.size() > i; i++) {
			int seq = orderService.orderseq();
			orderInfoGet.get(i).setOrder_number(seq);
			orderInfoGet.get(i).setOrder_orderer(orderer);
			orderInfoGet.get(i).setOrder_recipient(recipient);
			orderInfoGet.get(i).setOrder_receiptaddress(receiptaddress);
			orderInfoGet.get(i).setOrder_requirement(requirement);
			orderInfoGet.get(i).setOrder_recipientphonenumber(recipientphonenumber);
			orderInfoGet.get(i).setOrder_quantity(orderInfoGet.get(i).getCart_buyquantity());
			orderInfoGet.get(i).setOrder_orderprice(
					orderInfoGet.get(i).getBook_price() * orderInfoGet.get(i).getCart_buyquantity());
		}
		orderForm.setOrderdtos(orderInfoGet);
		List<OrderDTO> orderdt = orderForm.getOrderdtos();
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("list", orderdt);
		orderService.orderInsert(map);
		return new ModelAndView("order/orderlist", "orderForm", orderForm);
	}

	@RequestMapping(value = "/orderSelect", method = RequestMethod.GET)
	public String selectorder(@ModelAttribute OrderDTO order, Model model, HttpSession session) {
		order.setUser_id((String) session.getAttribute("user_id"));
		List<OrderDTO> orderlistget = new ArrayList<OrderDTO>();
		orderlistget = orderService.orderSelect(order);
		model.addAttribute("orderlist", orderlistget);
		return "order/orderlist";
	}

	@RequestMapping(value = "/orderdetail", method = RequestMethod.GET)
	public String bookdetailGet(@ModelAttribute OrderDTO order, Model model, HttpSession session) {
		List<OrderDTO> orderdetail = new ArrayList<OrderDTO>();
		orderdetail = orderService.orderdetail(order);
		int totalprice = 0;
		for (int i = 0; orderdetail.size() > i; i++) {
			totalprice += orderdetail.get(i).getOrder_orderprice();
			orderdetail.get(i).setOrder_totalprice(totalprice);
		}
		model.addAttribute("orderdetail", orderdetail);
		return "order/orderdetail";
	}

	@RequestMapping(value = "/orderstatus", method = RequestMethod.POST)
	public String orderstatus(@ModelAttribute OrderDTO order, Model model, HttpSession session) {
		int orderstatus = 0;
		String url = "";
		orderstatus = orderService.orderstatus(order);
		if (orderstatus != 0) {
			url = "/orderSelect.do";
		}
		model.addAttribute("orderstatus", orderstatus);
		return "redirect:" + url;
	}
}