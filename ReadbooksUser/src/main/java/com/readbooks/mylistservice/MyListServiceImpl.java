package com.readbooks.mylistservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.mylistdao.MyListDAO;
import com.readbooks.mylistvo.MyListVO;

@Service
@Transactional
public class MyListServiceImpl implements MyListService {

	@Autowired
	private MyListDAO mylistdao;

	@Override
	public int mylistInsert(MyListVO mylist) {
		int result = 0;
		result = mylistdao.cartInsert(mylist);
		return result;
	}
}
