package com.readbooks.faqboardvo;

public class FAQBoardVO {

	private int faqboard_number;
	private String admin_id;
	private String faqboard_type;
	private String faqboard_question;
	private String faqboard_answer;
	private String faqboard_registerdate;

	public FAQBoardVO() {
		super();
	}

	public int getFaqboard_number() {
		return faqboard_number;
	}

	public void setFaqboard_number(int faqboard_number) {
		this.faqboard_number = faqboard_number;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getFaqboard_type() {
		return faqboard_type;
	}

	public void setFaqboard_type(String faqboard_type) {
		this.faqboard_type = faqboard_type;
	}

	public String getFaqboard_question() {
		return faqboard_question;
	}

	public void setFaqboard_question(String faqboard_question) {
		this.faqboard_question = faqboard_question;
	}

	public String getFaqboard_answer() {
		return faqboard_answer;
	}

	public void setFaqboard_answer(String faqboard_answer) {
		this.faqboard_answer = faqboard_answer;
	}

	public String getFaqboard_registerdate() {
		return faqboard_registerdate;
	}

	public void setFaqboard_registerdate(String faqboard_registerdate) {
		this.faqboard_registerdate = faqboard_registerdate;
	}

}
