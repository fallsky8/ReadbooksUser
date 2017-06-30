package com.readbooks.inquireboarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.inquireboardvo.InquireBoardVO;
import com.readbooks.noticeboardvo.NoticeBoardVO;

@Repository
@Transactional
public class InquireBoardDAOImpl implements InquireBoardDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int inquireboardInsert(InquireBoardVO inquire) {
		return session.insert("inquireboardInsert", inquire);
	}

	@Override
	public List<InquireBoardVO> inquireboardList(InquireBoardVO inquire) {
		return session.selectList("inquireboardList", inquire);
	}

	@Override
	public int inquireboardListCnt(InquireBoardVO inquire) {
		return (Integer) session.selectOne("inquireboardListCnt", inquire);
	}

	@Override
	public InquireBoardVO inquireboardDetail(InquireBoardVO inquire) {
		return (InquireBoardVO) session.selectOne("inquireboardDetail", inquire);
	}
}
