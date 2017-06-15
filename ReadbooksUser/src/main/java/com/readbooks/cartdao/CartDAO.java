package com.readbooks.cartdao;

import java.util.List;

import com.readbooks.cartvo.CartVO;

public interface CartDAO {

	public int cartInsert(CartVO cart);

	public List<CartVO> cartlistGet(CartVO cart);

}
