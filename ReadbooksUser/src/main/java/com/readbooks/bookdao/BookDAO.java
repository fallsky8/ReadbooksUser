package com.readbooks.bookdao;

import java.util.List;

import com.readbooks.bookvo.BookVO;
import com.readbooks.mylistvo.MyListVO;

public interface BookDAO {
	public List<BookVO> bestbookGet(BookVO book);

	public List<BookVO> foreignbookGet(BookVO book);

	public List<BookVO> koreabookGet(BookVO book);

	public List<BookVO> newbookGet(BookVO book);

	public BookVO detailbookGet(BookVO book);

	public List<BookVO> foreignlongbookGet(BookVO book);

	public List<BookVO> foreignshortbookGet(BookVO book);

	public List<BookVO> korealongbookGet(BookVO book);

	public List<BookVO> koreashortbookGet(BookVO book);



	public List<BookVO> mylistGet(MyListVO mylist);

	public List<BookVO> searchbookGet(BookVO book);

}
