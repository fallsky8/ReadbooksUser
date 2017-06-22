package com.readbooks.inquireboarddao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.inquireboardvo.InquireBoardVO;

@Repository
@Transactional
public class InquireBoardDAOImpl implements InquireBoardDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int inquireboardInsert(InquireBoardVO inquire) {
		return session.insert("inquireboardInsert", inquire);
	}
}
