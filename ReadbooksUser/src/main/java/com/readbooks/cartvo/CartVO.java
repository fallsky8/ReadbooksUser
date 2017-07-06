package com.readbooks.cartvo;

public class CartVO {
	private int cart_number;
	private String user_id;
	private int book_number;
	private int cart_buyquantity;
	private int cart_buyprice;
	
	//책
	

	public CartVO() {
		super();
	}

	public int getCart_number() {
		return cart_number;
	}

	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public int getBook_number() {
		return book_number;
	}

	public void setBook_number(int book_number) {
		this.book_number = book_number;
	}

	public int getCart_buyquantity() {
		return cart_buyquantity;
	}

	public void setCart_buyquantity(int cart_buyquantity) {
		this.cart_buyquantity = cart_buyquantity;
	}

	public int getCart_buyprice() {
		return cart_buyprice;
	}

	public void setCart_buyprice(int cart_buyprice) {
		this.cart_buyprice = cart_buyprice;
	}

}
