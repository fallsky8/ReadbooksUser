package com.readbooks.cartservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.cartdao.CartDAO;
import com.readbooks.cartvo.CartVO;

@Service
@Transactional
public class CartServiceImpl implements CartService {

	@Autowired
	private CartDAO cartdao;

	@Override
	public int cartInsert(CartVO cart) {
		int result = 0;
		result = cartdao.cartInsert(cart);
		return result;
	}

	@Override
	public List<CartVO> cartlistGet(CartVO cart) {
		List<CartVO> cartlistGet = null;
		cartlistGet = cartdao.cartlistGet(cart);
		return cartlistGet;
	}

}
