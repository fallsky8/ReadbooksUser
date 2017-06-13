package com.readbooks.bookcontroller;

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
@RequestMapping(value = "/book")
public class BookController {

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/bestbookGet", method = RequestMethod.GET)
	public String bestbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> bestbookget = new ArrayList<BookVO>();
		bestbookget = bookService.bestbookGet(book);
		model.addAttribute("bestbooklist", bestbookget);
		return "book/bookbest";
	}

	@RequestMapping(value = "/foreignbookGet", method = RequestMethod.GET)
	public String foreignbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> foreignbookGet = new ArrayList<BookVO>();
		foreignbookGet = bookService.foreignbookGet(book);
		model.addAttribute("foreignbooklist", foreignbookGet);
		return "book/bookforeignlist";
	}

	@RequestMapping(value = "/koreabookGet", method = RequestMethod.GET)
	public String koreabookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> koreabookGet = new ArrayList<BookVO>();
		koreabookGet = bookService.koreabookGet(book);
		model.addAttribute("koreabooklist", koreabookGet);
		return "book/bookkorealist";
	}

	@RequestMapping(value = "/newbookGet", method = RequestMethod.GET)
	public String newbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> newbookGet = new ArrayList<BookVO>();
		newbookGet = bookService.newbookGet(book);
		model.addAttribute("newbooklist", newbookGet);
		return "book/booknewlist";
	}

	@RequestMapping(value = "/bookdetail", method = RequestMethod.GET)
	public String bookdetailGet(@ModelAttribute BookVO book, Model model) {
		BookVO detailbookGet = new BookVO();
		detailbookGet = bookService.detailbookGet(book);
		model.addAttribute("detailbook", detailbookGet);
		return "book/bookdetail";
	}
}
