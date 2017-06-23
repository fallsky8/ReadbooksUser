package com.readbooks.reviewboardvo;

import org.springframework.web.multipart.MultipartFile;

import com.readbooks.common.PagingVO;

public class ReviewBoardVO extends PagingVO {
	private int reviewboard_number; // 리뷰게시판 글번호
	private String user_id; // 회원 아이디
	private String reviewboard_title; // 리뷰게시판 제목
	private String reviewboard_contents; // 리뷰게시판 내용
	private String reviewboard_registerdate; // 글 작성일
	private String reviewboard_star; // 별점
	private String replypermit; // 리플 허용

	// 파일 업로드를 위한 속성
	private MultipartFile file; // 첨부파일
	private String reviewboard_attachmentfile = ""; // 서버에 저장될 첨부파일명

	// 조건 검색시 사용할 필드
	private String search = "";
	private String keyword = "";

	// 열제목 클릭시 정렬을 위한 필드
	private String order_by;
	private String order_sc;

	public ReviewBoardVO() {
		super();
	}

	public int getReviewboard_number() {
		return reviewboard_number;
	}

	public void setReviewboard_number(int reviewboard_number) {
		this.reviewboard_number = reviewboard_number;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getReviewboard_title() {
		return reviewboard_title;
	}

	public void setReviewboard_title(String reviewboard_title) {
		this.reviewboard_title = reviewboard_title;
	}

	public String getReviewboard_contents() {
		return reviewboard_contents;
	}

	public void setReviewboard_contents(String reviewboard_contents) {
		this.reviewboard_contents = reviewboard_contents;
	}

	public String getReviewboard_registerdate() {
		return reviewboard_registerdate;
	}

	public void setReviewboard_registerdate(String reviewboard_registerdate) {
		this.reviewboard_registerdate = reviewboard_registerdate;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getReviewboard_attachmentfile() {
		return reviewboard_attachmentfile;
	}

	public void setReviewboard_attachmentfile(String reviewboard_attachmentfile) {
		this.reviewboard_attachmentfile = reviewboard_attachmentfile;
	}

	public String getReviewboard_star() {
		return reviewboard_star;
	}

	public void setReviewboard_star(String reviewboard_star) {
		this.reviewboard_star = reviewboard_star;
	}

	public String getReplypermit() {
		return replypermit;
	}

	public void setReplypermit(String replypermit) {
		this.replypermit = replypermit;
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

	
}
