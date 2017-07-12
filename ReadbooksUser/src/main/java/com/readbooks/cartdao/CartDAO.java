package com.readbooks.cartdao;

import java.util.List;

import com.readbooks.cartvo.CartDTO;
import com.readbooks.cartvo.CartVO;

public interface CartDAO {

	public int cartInsert(CartVO cart);

	public int cartDelete(CartVO cart);

	public int cartDelete2(String string);

	public List<CartDTO> allbookGet(CartDTO cartdto);

}
