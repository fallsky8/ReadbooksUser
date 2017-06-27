package com.readbooks.reviewboarddao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.reviewboardvo.ReviewBoardVO;

@Repository
@Transactional
public class ReviewBoardDAOImpl implements ReviewBoardDAO {

	@Autowired
	private SqlSession session;

	// 글목록
	@Override
	public List<ReviewBoardVO> reviewboardList(ReviewBoardVO reviewboard) {
		return session.selectList("reviewboardList", reviewboard);
	}

	@Override
	public int reviewboardListCnt(ReviewBoardVO reviewboard) {
		return (Integer) session.selectOne("reviewboardListCnt", reviewboard);
	}

	@Override
	public int reviewboardInsert(ReviewBoardVO reviewboard) {
		return session.insert("reviewboardInsert", reviewboard);
	}

	@Override
	public ReviewBoardVO reviewboardDetail(ReviewBoardVO reviewboard) {
		return (ReviewBoardVO) session.selectOne("reviewboardDetail", reviewboard);
	}

	@Override
	public int reviewboardUpdate(ReviewBoardVO reviewboard) {
		return session.update("reviewboardUpdate", reviewboard);
	}

	@Override
	public int reviewboardDelete(int reviewboard_number) {
		return session.delete("reviewboardDelete", reviewboard_number);
	}

}
