package com.readbooks.bookdao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookvo.BookVO;
import com.readbooks.cartvo.CartVO;
import com.readbooks.mylistvo.MyListVO;

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

	@Override
	public BookVO detailbookGet(BookVO book) {
		return session.selectOne("detailbookGet", book);
	}

	@Override
	public List<BookVO> foreignlongbookGet(BookVO book) {
		return session.selectList("foreignlongbookGet", book);
	}

	@Override
	public List<BookVO> foreignshortbookGet(BookVO book) {
		return session.selectList("foreignshortbookGet", book);
	}

	@Override
	public List<BookVO> korealongbookGet(BookVO book) {
		return session.selectList("korealongbookGet", book);
	}

	@Override
	public List<BookVO> koreashortbookGet(BookVO book) {
		return session.selectList("koreashortbookGet", book);
	}

	@Override
	public List<BookVO> allbookGet(CartVO cart) {
		return session.selectList("allbookGet", cart);
	}

	@Override
	public List<BookVO> mylistGet(MyListVO mylist) {
		return session.selectList("myListGet", mylist);
	}

}
