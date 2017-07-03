package com.readbooks.shoppingmall;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.bookservice.BookService;
import com.readbooks.bookvo.BookVO;

@Controller
public class HomeController {

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/home", method = RequestMethod.GET)
	public String home(@ModelAttribute BookVO book, Model model) {
		List<BookVO> bestbookget = new ArrayList<BookVO>();
		bestbookget = bookService.bestbookGet(book);
		List<BookVO> foreignbookGet = new ArrayList<BookVO>();
		foreignbookGet = bookService.foreignbookGet(book);
		List<BookVO> koreabookGet = new ArrayList<BookVO>();
		koreabookGet = bookService.koreabookGet(book);
		List<BookVO> newbookGet = new ArrayList<BookVO>();
		newbookGet = bookService.newbookGet(book);
		model.addAttribute("koreabooklist", koreabookGet);
		model.addAttribute("newbooklist", newbookGet);
		model.addAttribute("bestbooklist", bestbookget);
		model.addAttribute("foreignbooklist", foreignbookGet);
		return "home";
	}

	@RequestMapping(value = "/searchbookGet", method = RequestMethod.GET)
	public String searchbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> searchbookGet = new ArrayList<BookVO>();
		searchbookGet = bookService.searchbookGet(book);
		model.addAttribute("searchbooklist", searchbookGet);
		return "book/booksearchlist";
	}
}
