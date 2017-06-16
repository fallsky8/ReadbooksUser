package com.readbooks.cartdao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.cartvo.CartVO;

@Repository
@Transactional
public class CartDAOImpl implements CartDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int cartInsert(CartVO cart) {
		return session.insert("cartInsert", cart);
	}

}
