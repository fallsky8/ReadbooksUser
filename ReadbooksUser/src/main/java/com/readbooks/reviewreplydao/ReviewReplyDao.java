package com.readbooks.reviewreplydao;

import java.util.List;

import com.readbooks.reviewreplyvo.ReviewReplyVO;

public interface ReviewReplyDao {
	public List<ReviewReplyVO> reviewreplyList(Integer reviewreply_number);

	public int reviewreplyInsert(ReviewReplyVO reviewreplyvo);

	public int reviewreplyUpdate(ReviewReplyVO reviewreplyvo);

	public int reviewreplyDelete(int reviewreply_number);

}
