package com.readbooks.noticeboarddao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.noticeboardvo.NoticeBoardVO;

@Repository
@Transactional
public class NoticeBoardDAOImpl implements NoticeBoardDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<NoticeBoardVO> noticeboardList(NoticeBoardVO noticeboard) {
		return session.selectList("noticeboardList", noticeboard);
	}

	@Override
	public int noticeboardListCnt(NoticeBoardVO noticeboard) {
		return (Integer) session.selectOne("noticeboardListCnt", noticeboard);
	}

	@Override
	public NoticeBoardVO noticeboardDetail(NoticeBoardVO noticeboard) {
		return (NoticeBoardVO) session.selectOne("noticeboardDetail", noticeboard);
	}
}
