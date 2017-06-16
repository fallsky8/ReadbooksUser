package com.readbooks.mylistservice;

import java.util.List;

import com.readbooks.bookvo.BookVO;
import com.readbooks.mylistvo.MyListVO;

public interface MyListService {

	public int mylistInsert(MyListVO mylist);

	public List<BookVO> mylistGet(MyListVO mylist);

}
