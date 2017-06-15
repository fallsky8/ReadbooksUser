package com.readbooks.cartcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.cartservice.CartService;
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
		session.setAttribute("user_id", user.getUser_id());
		result = cartService.cartInsert(cart);
		if (result == 1) {
			url = "cart/cartlist";
		}
		return url;
	}

	@RequestMapping(value = "/cartlistGet", method = RequestMethod.GET)
	public String cartlistGet(@ModelAttribute CartVO cart, @ModelAttribute UserVO user, HttpSession session,
			Model model) {
		session.setAttribute("user_id", user.getUser_id());
		List<CartVO> cartlistGet = new ArrayList<CartVO>();
		cartlistGet = cartService.cartlistGet(cart);
		model.addAttribute("cartlist", cartlistGet);
		return "cart/cartlist";
	}
}
