package com.readbooks.mylistvo;

public class MyListVO {
	private int mylist_number;
	private String user_id;
	private int book_number;

	public MyListVO() {
		super();
	}

	public int getMylist_number() {
		return mylist_number;
	}

	public void setMylist_number(int mylist_number) {
		this.mylist_number = mylist_number;
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

}
