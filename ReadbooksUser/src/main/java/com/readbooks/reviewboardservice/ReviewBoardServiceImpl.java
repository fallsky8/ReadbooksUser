package com.readbooks.reviewboardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.reviewboarddao.ReviewBoardDAO;
import com.readbooks.reviewboardvo.ReviewBoardVO;

@Service
@Transactional
public class ReviewBoardServiceImpl implements ReviewBoardService {

	//ReviewBoardDAO 가져옴
	@Autowired
	private ReviewBoardDAO reviewboarddao;

	@Override
	public List<ReviewBoardVO> reviewboardList(ReviewBoardVO reviewboard) {
		List<ReviewBoardVO> reviewboardList = null;
		reviewboardList = reviewboarddao.reviewboardList(reviewboard);
		return reviewboardList;
	}

	@Override
	public int reviewboardListCnt(ReviewBoardVO reviewboard) {
		return reviewboarddao.reviewboardListCnt(reviewboard);
	}

	@Override
	public int reviewboardInsert(ReviewBoardVO reviewboard) {
		int result = 0;
		result = reviewboarddao.reviewboardInsert(reviewboard);
		return result;
	}

	@Override
	public ReviewBoardVO reviewboardDetail(ReviewBoardVO reviewboard) {
		ReviewBoardVO reviewdetail = null;
		reviewdetail = reviewboarddao.reviewboardDetail(reviewboard);
		return reviewdetail;
	}

	@Override
	public int reviewboardUpdate(ReviewBoardVO reviewboard) {
		int result = 0;
		result = reviewboarddao.reviewboardUpdate(reviewboard);
		return result;
	}

	@Override
	public int reviewboardDelete(int reviewboard_number) {
		int result = 0;
		result = reviewboarddao.reviewboardDelete(reviewboard_number);
		return result;
	}

	
}
