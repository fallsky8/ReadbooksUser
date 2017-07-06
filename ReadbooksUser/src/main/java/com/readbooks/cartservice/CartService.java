package com.readbooks.cartservice;

import java.util.List;

import com.readbooks.cartvo.CartDTO;
import com.readbooks.cartvo.CartVO;

public interface CartService {

	public int cartInsert(CartVO cart);

	public int cartDelete(CartVO cart);

	public int cartDelete2(CartVO cart);

	public List<CartDTO> allbookGet(CartDTO cartdto);

}
