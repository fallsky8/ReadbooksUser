package com.readbooks.reviewreplyservice;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.reviewboardvo.ReviewBoardVO;
import com.readbooks.reviewreplydao.ReviewReplyDao;
import com.readbooks.reviewreplyvo.ReviewReplyVO;

@Service
@Transactional
public class ReviewReplyServiceImpl implements ReviewReplyService {
	Logger logger = Logger.getLogger(ReviewReplyServiceImpl.class);

	@Autowired
	private ReviewReplyDao reviewreplyDao;

	// 글목록 구현
	@Override
	public List<ReviewReplyVO> reviewreplyList(Integer reviewboard_number) {
		List<ReviewReplyVO> myList = null;
		myList = reviewreplyDao.reviewreplyList(reviewboard_number);
		return myList;
	}

	// 글입력 구현

	@Override
	public int reviewreplyInsert(ReviewReplyVO reviewreplyvo) {
		int result = 0;
		result = reviewreplyDao.reviewreplyInsert(reviewreplyvo);
		return result;
	}

	// 글수정 구현

	@Override
	public int reviewreplyUpdate(ReviewReplyVO reviewreplyvo) {
		int result = 0;
		result = reviewreplyDao.reviewreplyUpdate(reviewreplyvo);
		return result;
	}

	// 글삭제 구현

	@Override
	public int reviewreplyDelete(int reviewreply_number) {
		int result = 0;
		result = reviewreplyDao.reviewreplyDelete(reviewreply_number);
		return result;
	}

}
