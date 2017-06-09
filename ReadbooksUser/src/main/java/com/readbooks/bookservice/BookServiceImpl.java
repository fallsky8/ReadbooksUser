package com.readbooks.bookservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookdao.BookDAO;
import com.readbooks.bookvo.BookVO;

@Service
@Transactional
public class BookServiceImpl implements BookService {

	@Autowired
	private BookDAO bookdao;

	@Override
	public List<BookVO> bestbookGet(BookVO book) {
		List<BookVO> bookget = null;
		bookget = bookdao.bestbookGet(book);
		return bookget;
	}

	@Override
	public List<BookVO> foreignbookGet(BookVO book) {
		List<BookVO> bookget = null;
		bookget = bookdao.foreignbookGet(book);
		return bookget;

	}

	@Override
	public List<BookVO> koreabookGet(BookVO book) {
		List<BookVO> bookget = null;
		bookget = bookdao.koreabookGet(book);
		return bookget;

	}

	@Override
	public List<BookVO> newbookGet(BookVO book) {
		List<BookVO> bookget = null;
		bookget = bookdao.newbookGet(book);
		return bookget;

	}

}
