package com.readbooks.inquireboardvo;

public class InquireBoardVO {
	private int inquireboard_number;
	private String user_id;
	private String inquireboard_title;
	private String inquireboard_contents;
	private String inquireboard_registerdate;
	private String inquireboard_attachmentfile;

	public InquireBoardVO() {
		super();
	}

	public int getInquireboard_number() {
		return inquireboard_number;
	}

	public void setInquireboard_number(int inquireboard_number) {
		this.inquireboard_number = inquireboard_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getInquireboard_title() {
		return inquireboard_title;
	}

	public void setInquireboard_title(String inquireboard_title) {
		this.inquireboard_title = inquireboard_title;
	}

	public String getInquireboard_contents() {
		return inquireboard_contents;
	}

	public void setInquireboard_contents(String inquireboard_contents) {
		this.inquireboard_contents = inquireboard_contents;
	}

	public String getInquireboard_registerdate() {
		return inquireboard_registerdate;
	}

	public void setInquireboard_registerdate(String inquireboard_registerdate) {
		this.inquireboard_registerdate = inquireboard_registerdate;
	}

	public String getInquireboard_attachmentfile() {
		return inquireboard_attachmentfile;
	}

	public void setInquireboard_attachmentfile(String inquireboard_attachmentfile) {
		this.inquireboard_attachmentfile = inquireboard_attachmentfile;
	}

}
