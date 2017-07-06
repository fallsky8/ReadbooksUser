package com.readbooks.mylistdao;

import java.util.List;

import com.readbooks.mylistvo.MyListDTO;
import com.readbooks.mylistvo.MyListVO;

public interface MyListDAO {

	public int cartInsert(MyListVO mylist);

	public List<MyListDTO> mylistGet(MyListVO mylist);

	public int mylistDelete(MyListVO mylist);

}
