package com.readbooks.inquirereplydao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.inquirereplyvo.InquireReplyVO;

@Repository
@Transactional
public class InquireReplyDAOImpl implements InquireReplyDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int inquirereplyInsert(InquireReplyVO inquire) {
		return session.insert("inquirereplyInsert", inquire);
	}
}
