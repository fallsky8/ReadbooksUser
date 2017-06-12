package com.readbooks.bookdao;

import java.util.List;

import com.readbooks.bookvo.BookVO;

public interface BookDAO {
	public List<BookVO> bestbookGet(BookVO book);

	public List<BookVO> foreignbookGet(BookVO book);

	public List<BookVO> koreabookGet(BookVO book);

	public List<BookVO> newbookGet(BookVO book);
}