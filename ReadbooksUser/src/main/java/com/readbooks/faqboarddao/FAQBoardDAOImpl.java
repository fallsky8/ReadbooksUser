package com.readbooks.faqboarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.faqboardvo.FAQBoardVO;

@Repository
@Transactional
public class FAQBoardDAOImpl implements FAQBoardDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<FAQBoardVO> faqboarduserList(FAQBoardVO faqboard) {
		return session.selectList("faqboarduserList", faqboard);
	}

	@Override
	public List<FAQBoardVO> faqboardbookList(FAQBoardVO faqboard) {
		return session.selectList("faqboardbookList", faqboard);
	}

	@Override
	public List<FAQBoardVO> faqboardorderList(FAQBoardVO faqboard) {
		return session.selectList("faqboardorderList", faqboard);
	}
}
