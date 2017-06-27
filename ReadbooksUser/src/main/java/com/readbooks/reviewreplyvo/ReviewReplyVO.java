package com.readbooks.reviewreplyvo;

public class ReviewReplyVO {
	private int reviewreply_number = 0; // 댓글번호
	private int reviewboard_number = 0; // 게시판 글번호
	private String user_id = ""; // 댓글 작성자
	private String reviewreply_contents = ""; // 댓글내용
	private String reviewreply_registerdate = ""; // 댓글 작성일

	public int getReviewreply_number() {
		return reviewreply_number;
	}

	public void setReviewreply_number(int reviewreply_number) {
		this.reviewreply_number = reviewreply_number;
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

	public String getReviewreply_contents() {
		return reviewreply_contents;
	}

	public void setReviewreply_contents(String reviewreply_contents) {
		this.reviewreply_contents = reviewreply_contents;
	}

	public String getReviewreply_registerdate() {
		return reviewreply_registerdate;
	}

	public void setReviewreply_registerdate(String reviewreply_registerdate) {
		this.reviewreply_registerdate = reviewreply_registerdate;
	}

}
