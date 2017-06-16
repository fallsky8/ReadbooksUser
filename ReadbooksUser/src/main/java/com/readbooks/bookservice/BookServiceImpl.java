package com.readbooks.bookservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookdao.BookDAO;
import com.readbooks.bookvo.BookVO;
import com.readbooks.cartvo.CartVO;
import com.readbooks.mylistvo.MyListVO;

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

	@Override
	public BookVO detailbookGet(BookVO book) {
		BookVO detailbookGet = null;
		detailbookGet = bookdao.detailbookGet(book);
		return detailbookGet;
	}

	@Override
	public List<BookVO> foreignlongbookGet(BookVO book) {
		List<BookVO> foreignlongbookGet = null;
		foreignlongbookGet = bookdao.foreignlongbookGet(book);
		return foreignlongbookGet;
	}

	@Override
	public List<BookVO> foreignshortbookGet(BookVO book) {
		List<BookVO> foreignshortbookGet = null;
		foreignshortbookGet = bookdao.foreignshortbookGet(book);
		return foreignshortbookGet;
	}

	@Override
	public List<BookVO> korealongbookGet(BookVO book) {
		List<BookVO> korealongbookGet = null;
		korealongbookGet = bookdao.korealongbookGet(book);
		return korealongbookGet;
	}

	@Override
	public List<BookVO> koreashortbookGet(BookVO book) {
		List<BookVO> koreashortbookGet = null;
		koreashortbookGet = bookdao.koreashortbookGet(book);
		return koreashortbookGet;
	}

	@Override
	public List<BookVO> allbookGet(CartVO cart) {
		List<BookVO> allbookGet = null;
		allbookGet = bookdao.allbookGet(cart);
		return allbookGet;
	}

	@Override
	public List<BookVO> mylistGet(MyListVO mylist) {
		List<BookVO> mylistGet = null;
		mylistGet = bookdao.mylistGet(mylist);
		return mylistGet;
	}

}
