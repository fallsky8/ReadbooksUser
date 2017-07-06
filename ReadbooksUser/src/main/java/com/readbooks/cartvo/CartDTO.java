package com.readbooks.cartvo;

public class CartDTO {
	//카트정보
	private int cart_number;
	private String user_id;
	private int cart_buyquantity;
	private int cart_buyprice;
	private int cart_totalquantity;
	private int cart_totalprice;
	
	//책
	private int book_number;
	private String book_name;
	private int book_quantity;
	private int book_price;
	private String book_country;
	private String book_story;
	private String book_writer;
	private String book_publisher;
	private String book_bookinfo;
	private String book_writerinfo;
	private String book_publisherreview;
	private String book_image;
	private int book_discount;
	private String book_registerdate;
	private String book_status;
	private String book_opening;

	public CartDTO() {
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

	public int getCart_totalquantity() {
		return cart_totalquantity;
	}

	public void setCart_totalquantity(int cart_totalquantity) {
		this.cart_totalquantity = cart_totalquantity;
	}

	public int getCart_totalprice() {
		return cart_totalprice;
	}

	public void setCart_totalprice(int cart_totalprice) {
		this.cart_totalprice = cart_totalprice;
	}

	public String getBook_name() {
		return book_name;
	}

	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}

	public int getBook_quantity() {
		return book_quantity;
	}

	public void setBook_quantity(int book_quantity) {
		this.book_quantity = book_quantity;
	}

	public int getBook_price() {
		return book_price;
	}

	public void setBook_price(int book_price) {
		this.book_price = book_price;
	}

	public String getBook_country() {
		return book_country;
	}

	public void setBook_country(String book_country) {
		this.book_country = book_country;
	}

	public String getBook_story() {
		return book_story;
	}

	public void setBook_story(String book_story) {
		this.book_story = book_story;
	}

	public String getBook_writer() {
		return book_writer;
	}

	public void setBook_writer(String book_writer) {
		this.book_writer = book_writer;
	}

	public String getBook_publisher() {
		return book_publisher;
	}

	public void setBook_publisher(String book_publisher) {
		this.book_publisher = book_publisher;
	}

	public String getBook_bookinfo() {
		return book_bookinfo;
	}

	public void setBook_bookinfo(String book_bookinfo) {
		this.book_bookinfo = book_bookinfo;
	}

	public String getBook_writerinfo() {
		return book_writerinfo;
	}

	public void setBook_writerinfo(String book_writerinfo) {
		this.book_writerinfo = book_writerinfo;
	}

	public String getBook_publisherreview() {
		return book_publisherreview;
	}

	public void setBook_publisherreview(String book_publisherreview) {
		this.book_publisherreview = book_publisherreview;
	}

	public String getBook_image() {
		return book_image;
	}

	public void setBook_image(String book_image) {
		this.book_image = book_image;
	}

	public int getBook_discount() {
		return book_discount;
	}

	public void setBook_discount(int book_discount) {
		this.book_discount = book_discount;
	}

	public String getBook_registerdate() {
		return book_registerdate;
	}

	public void setBook_registerdate(String book_registerdate) {
		this.book_registerdate = book_registerdate;
	}

	public String getBook_status() {
		return book_status;
	}

	public void setBook_status(String book_status) {
		this.book_status = book_status;
	}

	public String getBook_opening() {
		return book_opening;
	}

	public void setBook_opening(String book_opening) {
		this.book_opening = book_opening;
	}

}
