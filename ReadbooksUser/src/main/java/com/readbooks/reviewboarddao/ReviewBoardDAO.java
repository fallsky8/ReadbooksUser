package com.readbooks.reviewboarddao;

import java.util.List;

import com.readbooks.reviewboardvo.ReviewBoardVO;

public interface ReviewBoardDAO {

	public int reviewboardListCnt(ReviewBoardVO reviewboard);

	public List<ReviewBoardVO> reviewboardList(ReviewBoardVO reviewboard);

	public int reviewboardInsert(ReviewBoardVO reviewboard);

	public ReviewBoardVO reviewboardDetail(ReviewBoardVO reviewboard);

	public int reviewboardUpdate(ReviewBoardVO reviewboard);

	public int reviewboardDelete(int reviewboard_number);

}
