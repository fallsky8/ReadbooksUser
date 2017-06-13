package com.readbooks.ordervo;

public class OrderVO {
	private int order_number;
	private String user_id;
	private int book_number;
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

	public OrderVO() {
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
		this.order_date = order_date;
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
}
