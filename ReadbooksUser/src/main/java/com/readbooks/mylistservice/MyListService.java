package com.readbooks.mylistservice;

import java.util.List;

import com.readbooks.mylistvo.MyListDTO;
import com.readbooks.mylistvo.MyListVO;

public interface MyListService {

	public int mylistInsert(MyListVO mylist);

	public List<MyListDTO> mylistGet(MyListVO mylist);

	public int mylistDelete(MyListVO mylist);

}
