package com.readbooks.ordervo;

public class OrderDTO {
	//오더
	private int order_number;
	private String order_password;
	private String order_orderer;
	private String order_recipient;
	private String order_date;
	private String order_paymentdate;
	private String order_receiptaddress;
	private String order_requirement;
	private String order_status;
	private String order_way;
	private int order_quantity;
	private int order_ordernumber;
	// 카트정보
	private int cart_number;
	private int cart_buyquantity;
	private int cart_buyprice;
	private int cart_totalquantity;
	private int cart_totalprice;
	private int cart_subtotal;
	private int cart_discount;

	// 책
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
	// 유저
	private String user_id;// 아이디 VARCHAR2(20 BYTE)
	private String user_address;// 주소 VARCHAR2(200 BYTE)
	private String user_name;// 이름 VARCHAR2(20 BYTE)
	private String user_email;// 이메일 VARCHAR2(100 BYTE)
	private String user_phonenumber;// 휴대폰 번호 VARCHAR2(20 BYTE)

	public OrderDTO() {
		super();
	}

	public int getOrder_number() {
		return order_number;
	}

	public void setOrder_number(int order_number) {
		this.order_number = order_number;
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

	public String getOrder_password() {
		return order_password;
	}

	public void setOrder_password(String order_password) {
		this.order_password = order_password;
	}

	public String getOrder_orderer() {
		return order_orderer;
	}

	public void setOrder_orderer(String order_orderer) {
		this.order_orderer = order_orderer;
	}

	public String getOrder_recipient() {
		return order_recipient;
	}

	public void setOrder_recipient(String order_recipient) {
		this.order_recipient = order_recipient;
	}

	public String getOrder_date() {
		return order_date;
	}

	public void setOrder_date(String order_date) {
		this.order_date = order_date.substring(0, 10);
	}

	public String getOrder_paymentdate() {
		return order_paymentdate;
	}

	public void setOrder_paymentdate(String order_paymentdate) {
		this.order_paymentdate = order_paymentdate;
	}

	public String getOrder_receiptaddress() {
		return order_receiptaddress;
	}

	public void setOrder_receiptaddress(String order_receiptaddress) {
		this.order_receiptaddress = order_receiptaddress;
	}

	public String getOrder_requirement() {
		return order_requirement;
	}

	public void setOrder_requirement(String order_requirement) {
		this.order_requirement = order_requirement;
	}

	public String getOrder_status() {
		return order_status;
	}

	public void setOrder_status(String order_status) {
		this.order_status = order_status;
	}

	public String getOrder_way() {
		return order_way;
	}

	public void setOrder_way(String order_way) {
		this.order_way = order_way;
	}

	public int getOrder_quantity() {
		return order_quantity;
	}

	public void setOrder_quantity(int order_quantity) {
		this.order_quantity = order_quantity;
	}

	public int getOrder_ordernumber() {
		return order_ordernumber;
	}

	public void setOrder_ordernumber(int order_ordernumber) {
		this.order_ordernumber = order_ordernumber;
	}

	public int getCart_number() {
		return cart_number;
	}

	public void setCart_number(int cart_number) {
		this.cart_number = cart_number;
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

	public String getUser_address() {
		return user_address;
	}

	public void setUser_address(String user_address) {
		this.user_address = user_address;
	}

	public String getUser_name() {
		return user_name;
	}

	public void setUser_name(String user_name) {
		this.user_name = user_name;
	}

	public String getUser_email() {
		return user_email;
	}

	public void setUser_email(String user_email) {
		this.user_email = user_email;
	}

	public String getUser_phonenumber() {
		return user_phonenumber;
	}

	public void setUser_phonenumber(String user_phonenumber) {
		this.user_phonenumber = user_phonenumber;
	}

	public int getCart_subtotal() {
		return cart_subtotal;
	}

	public void setCart_subtotal(int cart_subtotal) {
		this.cart_subtotal = cart_subtotal;
	}

	public int getCart_discount() {
		return cart_discount;
	}

	public void setCart_discount(int cart_discount) {
		this.cart_discount = cart_discount;
	}

}
