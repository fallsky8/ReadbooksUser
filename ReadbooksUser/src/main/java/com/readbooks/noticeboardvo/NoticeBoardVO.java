package com.readbooks.noticeboardvo;

import com.readbooks.common.PagingVO;

public class NoticeBoardVO extends PagingVO {
	private int noticeboard_number;
	private String admin_id;
	private String noticeboard_title;
	private String noticeboard_writer;
	private String noticeboard_registerdate;
	private String noticeboard_contents;
	// 조건 검색시 사용할 필드
	private String search = "";
	private String keyword = "";

	// 열제목 클릭시 정렬을 위한 필드
	private String order_by;
	private String order_sc;

	public NoticeBoardVO() {
		super();
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