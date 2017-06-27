package com.readbooks.reviewreplydao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.readbooks.reviewreplyvo.ReviewReplyVO;

@Repository
public class ReviewReplyDaoImpl implements ReviewReplyDao {

	@Autowired
	private SqlSession session;

	// 글목록 구현
	@Override
	public List<ReviewReplyVO> reviewreplyList(Integer reviewboard_number) {
		return session.selectList("reviewreplyList", reviewboard_number);
	}

	// 글입력 구현
	@Override
	public int reviewreplyInsert(ReviewReplyVO reviewreplyvo) {
		return session.insert("reviewreplyInsert", reviewreplyvo);
	}

	// 글수정 구현

	@Override
	public int reviewreplyUpdate(ReviewReplyVO reviewreplyvo) {
		return session.update("reviewreplyUpdate", reviewreplyvo);
	}

	// 글삭제 구현

	@Override
	public int reviewreplyDelete(int reviewboard_number) {
		return session.delete("reviewreplyDelete", reviewboard_number);
	}

}
