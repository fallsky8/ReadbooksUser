package com.readbooks.cartservice;

import java.util.List;

import com.readbooks.cartvo.CartVO;

public interface CartService {

	public int cartInsert(CartVO cart);

	public List<CartVO> cartlistGet(CartVO cart);

}
