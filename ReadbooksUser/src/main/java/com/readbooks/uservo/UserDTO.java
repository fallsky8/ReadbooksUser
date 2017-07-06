package com.readbooks.uservo;

public class UserDTO {
	private String user_id;// 아이디 VARCHAR2(20 BYTE)
	private String user_pw;// 비밀번호 VARCHAR2(20 BYTE)
	private String user_address;// 주소 VARCHAR2(200 BYTE)
	private String user_name;// 이름 VARCHAR2(20 BYTE)
	private String user_email;// 이메일 VARCHAR2(100 BYTE)
	private String user_phonenumber;// 휴대폰 번호 VARCHAR2(20 BYTE)
	private String user_registerdate;// 회원가입날짜 DATE
	private String user_serviceagreement;// 서비스 이용약관 동의VARCHAR2(20 BYTE)
	private String user_collectiveagreement;// 개인정보 수집 동의VARCHAR2(20 BYTE)
	private String user_referralagreement;// 개인정보 처리 위탁 동의VARCHAR2(20 BYTE)
	private String user_outreason;// 탈퇴 사유 VARCHAR2(50 BYTE)
	private String user_outdate;// 탈퇴 일자 DATE
	// 인증코드
	private String user_authnum;

	//오더 
	private int order_number;
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
	private int order_ordernumber;
	

	public UserDTO() {
		super();
	}

	public String getUser_authnum() {
		return user_authnum;
	}

	public void setUser_authnum(String user_authnum) {
		this.user_authnum = user_authnum;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getUser_pw() {
		return user_pw;
	}

	public void setUser_pw(String user_pw) {
		this.user_pw = user_pw;
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

	public String getUser_registerdate() {
		return user_registerdate;
	}

	public void setUser_registerdate(String user_registerdate) {
		this.user_registerdate = user_registerdate;
	}

	public String getUser_serviceagreement() {
		return user_serviceagreement;
	}

	public void setUser_serviceagreement(String user_serviceagreement) {
		this.user_serviceagreement = user_serviceagreement;
	}

	public String getUser_collectiveagreement() {
		return user_collectiveagreement;
	}

	public void setUser_collectiveagreement(String user_collectiveagreement) {
		this.user_collectiveagreement = user_collectiveagreement;
	}

	public String getUser_referralagreement() {
		return user_referralagreement;
	}

	public void setUser_referralagreement(String user_referralagreement) {
		this.user_referralagreement = user_referralagreement;
	}

	public String getUser_outreason() {
		return user_outreason;
	}

	public void setUser_outreason(String user_outreason) {
		this.user_outreason = user_outreason;
	}

	public String getUser_outdate() {
		return user_outdate;
	}

	public void setUser_outdate(String user_outdate) {
		this.user_outdate = user_outdate;
	}

	public int getOrder_number() {
		return order_number;
	}

	public void setOrder_number(int order_number) {
		this.order_number = order_number;
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

	public int getOrder_ordernumber() {
		return order_ordernumber;
	}

	public void setOrder_ordernumber(int order_ordernumber) {
		this.order_ordernumber = order_ordernumber;
	}

}
