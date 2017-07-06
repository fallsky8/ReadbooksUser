package com.readbooks.cartdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.cartvo.CartDTO;
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

	@Override
	public int cartDelete(CartVO cart) {
		return session.delete("cartDelete", cart);
	}

	@Override
	public int cartDelete2(CartVO cart) {
		return session.delete("cartDelete2", cart);
	}

	@Override
	public List<CartDTO> allbookGet(CartDTO cartdto) {
		return session.selectList("allbookGet", cartdto);
	}

}
