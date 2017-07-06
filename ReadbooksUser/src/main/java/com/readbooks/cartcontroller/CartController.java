package com.readbooks.cartcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.cartservice.CartService;
import com.readbooks.cartvo.CartDTO;
import com.readbooks.cartvo.CartVO;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping("/")
public class CartController {

	@Autowired
	private CartService cartService;

	@RequestMapping(value = "/cartInsert", method = RequestMethod.GET)
	public String cartInsert(@ModelAttribute CartVO cart, @ModelAttribute UserVO user, HttpSession session) {
		int result = 0;
		String url = "";
		result = cartService.cartInsert(cart);
		if (result == 1) {
			url = "/cart/cartlist";
		}
		return url;
	}

	@RequestMapping(value = "/cartlistGet", method = RequestMethod.GET)
	public String cartlistGet(@ModelAttribute CartDTO cartdto, @ModelAttribute UserVO user,
			HttpSession session, HttpServletRequest request, Model model) {
		cartdto.setUser_id((String) session.getAttribute("user_id"));
		List<CartDTO> allbookGet = new ArrayList<CartDTO>();
		allbookGet = cartService.allbookGet(cartdto);
		model.addAttribute("cartbooklist", allbookGet);
		return "cart/cartlist";
	}

	@RequestMapping(value = "/cartDelete", method = RequestMethod.GET)
	private String cartDelete(@ModelAttribute CartVO cart, HttpSession session) {
		int result = 0;
		String url = "";
		result = cartService.cartDelete(cart);
		if (result == 1) {
			url = "/cartlistGet.do";
		}
		return "redirect:" + url;
	}

	@RequestMapping(value = "/cartDelete2", method = RequestMethod.GET)
	private String cartDelete2(@ModelAttribute CartVO cart, HttpSession session) {
		int result = 0;
		String url = "";
		result = cartService.cartDelete2(cart);
		if (result == 1) {
			url = "/cartlistGet.do";
		}
		return "redirect:" + url;
	}

}
