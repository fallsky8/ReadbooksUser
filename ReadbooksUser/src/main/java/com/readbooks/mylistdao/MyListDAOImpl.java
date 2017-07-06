package com.readbooks.mylistdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.mylistvo.MyListDTO;
import com.readbooks.mylistvo.MyListVO;

@Repository
@Transactional
public class MyListDAOImpl implements MyListDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int cartInsert(MyListVO mylist) {
		return session.insert("myListInsert", mylist);
	}

	@Override
	public List<MyListDTO> mylistGet(MyListVO mylist) {
		return session.selectList("myListGet", mylist);
	}

	@Override
	public int mylistDelete(MyListVO mylist) {
		return session.delete("myListDelete", mylist);
	}
}
