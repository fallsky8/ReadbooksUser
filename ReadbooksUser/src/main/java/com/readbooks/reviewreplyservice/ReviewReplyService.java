package com.readbooks.reviewreplyservice;

import java.util.List;

import com.readbooks.reviewreplyvo.ReviewReplyVO;

public interface ReviewReplyService {

	public List<ReviewReplyVO> reviewreplyList(Integer reviewboard_number);

	public int reviewreplyInsert(ReviewReplyVO reviewreplyvo);

	public int reviewreplyUpdate(ReviewReplyVO reviewreplyvo);

	public int reviewreplyDelete(int reviewreply_number);

}
