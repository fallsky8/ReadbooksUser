package com.readbooks.noticeboardvo;

public class NoticeBoardVO {
	private int noticeboard_number;
	private String admin_id;
	private String noticeboard_title;
	private String noticeboard_writer;
	private String noticeboard_registerdate;
	private String noticeboard_contents;

	public NoticeBoardVO() {
		super();
	}

	public int getNoticeboard_number() {
		return noticeboard_number;
	}

	public void setNoticeboard_number(int noticeboard_number) {
		this.noticeboard_number = noticeboard_number;
	}

	public String getAdmin_id() {
		return admin_id;
	}

	public void setAdmin_id(String admin_id) {
		this.admin_id = admin_id;
	}

	public String getNoticeboard_title() {
		return noticeboard_title;
	}

	public void setNoticeboard_title(String noticeboard_title) {
		this.noticeboard_title = noticeboard_title;
	}

	public String getNoticeboard_writer() {
		return noticeboard_writer;
	}

	public void setNoticeboard_writer(String noticeboard_writer) {
		this.noticeboard_writer = noticeboard_writer;
	}

	public String getNoticeboard_registerdate() {
		return noticeboard_registerdate;
	}

	public void setNoticeboard_registerdate(String noticeboard_registerdate) {
		this.noticeboard_registerdate = noticeboard_registerdate;
	}

	public String getNoticeboard_contents() {
		return noticeboard_contents;
	}

	public void setNoticeboard_contents(String noticeboard_contents) {
		this.noticeboard_contents = noticeboard_contents;
	}

}