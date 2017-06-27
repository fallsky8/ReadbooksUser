package com.readbooks.inquireboardvo;

import org.springframework.web.multipart.MultipartFile;

import com.readbooks.common.PagingVO;

public class InquireBoardVO extends PagingVO {
	private int inquireboard_number;
	private String user_id;
	private String inquireboard_title;
	private String inquireboard_contents;
	private String inquireboard_answer;
	private String inquireboard_registerdate;
	private String inquireboard_attachmentfile;
	private String inquireboard_type;
	private MultipartFile file;

	// 조건 검색시 사용할 필드
	private String search = "";
	private String keyword = "";

	// 열제목 클릭시 정렬을 위한 필드
	private String order_by;
	private String order_sc;

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

	public String getInquireboard_answer() {
		return inquireboard_answer;
	}

	public void setInquireboard_answer(String inquireboard_answer) {
		this.inquireboard_answer = inquireboard_answer;
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

	public String getSearch() {
		return search;
	}

	public void setSearch(String search) {
		this.search = search;
	}

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getOrder_by() {
		return order_by;
	}

	public void setOrder_by(String order_by) {
		this.order_by = order_by;
	}

	public String getOrder_sc() {
		return order_sc;
	}

	public void setOrder_sc(String order_sc) {
		this.order_sc = order_sc;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getInquireboard_type() {
		return inquireboard_type;
	}

	public void setInquireboard_type(String inquireboard_type) {
		this.inquireboard_type = inquireboard_type;
	}

}
