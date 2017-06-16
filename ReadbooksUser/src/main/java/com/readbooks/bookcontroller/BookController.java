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
import com.readbooks.cartvo.CartVO;

@Controller
@RequestMapping(value = "/")
public class BookController {

	@Autowired
	private BookService bookService;

	@RequestMapping(value = "/bestbookGet", method = RequestMethod.GET)
	public String bestbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> bestbookget = new ArrayList<BookVO>();
		bestbookget = bookService.bestbookGet(book);
		model.addAttribute("bestbooklist", bestbookget);
		return "book/bookbestlist";
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

	@RequestMapping(value = "/foreignlongbookGet", method = RequestMethod.GET)
	public String foreignlongbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> foreignlongbookGet = new ArrayList<BookVO>();
		foreignlongbookGet = bookService.foreignlongbookGet(book);
		model.addAttribute("foreignlongbooklist", foreignlongbookGet);
		return "book/bookforeignlonglist";
	}

	@RequestMapping(value = "/foreignshortbookGet", method = RequestMethod.GET)
	public String foreignshortbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> foreignshortbookGet = new ArrayList<BookVO>();
		foreignshortbookGet = bookService.foreignshortbookGet(book);
		model.addAttribute("foreignshortbooklist", foreignshortbookGet);
		return "book/bookforeignshortlist";
	}

	@RequestMapping(value = "/korealongbookGet", method = RequestMethod.GET)
	public String korealongbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> korealongbookGet = new ArrayList<BookVO>();
		korealongbookGet = bookService.korealongbookGet(book);
		model.addAttribute("korealongbooklist", korealongbookGet);
		return "book/bookkorealonglist";
	}

	@RequestMapping(value = "/koreashortbookGet", method = RequestMethod.GET)
	public String koreashortbookGet(@ModelAttribute BookVO book, Model model) {
		List<BookVO> koreashortbookGet = new ArrayList<BookVO>();
		koreashortbookGet = bookService.koreashortbookGet(book);
		model.addAttribute("koreashortbooklist", koreashortbookGet);
		return "book/bookkoreashortlist";
	}

}
