package com.readbooks.cartservice;

import com.readbooks.cartvo.CartVO;

public interface CartService {

	public int cartInsert(CartVO cart);

	public int cartDelete(CartVO cart);

	public int cartDelete2(CartVO cart);

}
