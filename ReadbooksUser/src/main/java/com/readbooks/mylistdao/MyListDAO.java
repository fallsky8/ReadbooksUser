package com.readbooks.mylistdao;

import java.util.List;

import com.readbooks.bookvo.BookVO;
import com.readbooks.mylistvo.MyListVO;

public interface MyListDAO {

	public int cartInsert(MyListVO mylist);

	public List<BookVO> mylistGet(MyListVO mylist);

}
