package com.readbooks.bookdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookvo.BookVO;

@Repository
@Transactional
public class BookDAOImpl implements BookDAO {

	@Autowired
	private SqlSession session;

	@Override
	public List<BookVO> bestbookGet(BookVO book) {
		return session.selectList("bestbookGet", book);
	}

	@Override
	public List<BookVO> foreignbookGet(BookVO book) {
		return session.selectList("foreignbookGet", book);
	}

	@Override
	public List<BookVO> koreabookGet(BookVO book) {
		return session.selectList("koreabookGet", book);
	}

	@Override
	public List<BookVO> newbookGet(BookVO book) {
		return session.selectList("newbookGet", book);
	}

}
