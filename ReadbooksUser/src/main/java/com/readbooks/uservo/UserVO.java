package com.readbooks.uservo;

public class UserVO {
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

	
	public UserVO() {
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

}
