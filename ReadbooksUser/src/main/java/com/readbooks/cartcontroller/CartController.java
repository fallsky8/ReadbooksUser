package com.readbooks.cartcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.swing.event.CaretListener;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.readbooks.bookservice.BookService;
import com.readbooks.bookvo.BookVO;
import com.readbooks.cartservice.CartService;
import com.readbooks.cartvo.CartVO;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping("/")
public class CartController {

	@Autowired
	private CartService cartService;
	@Autowired
	private BookService bookService;

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
	public String cartlistGet(@ModelAttribute CartVO cart, @ModelAttribute BookVO book, HttpSession session,
			HttpServletRequest request, Model model) {

		cart.setUser_id((String) session.getAttribute("user_id"));
		List<BookVO> allbookGet = new ArrayList<BookVO>();
		allbookGet = bookService.allbookGet(cart);
		model.addAttribute("cartbooklist", allbookGet);
		return "cart/cartlist";
	}
}