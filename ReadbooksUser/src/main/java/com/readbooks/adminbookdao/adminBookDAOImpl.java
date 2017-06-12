package com.readbooks.adminbookdao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.adminbookvo.AdminBookVO;


@Repository
@Transactional
public class AdminBookDAOImpl implements AdminBookDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int adminbookInsert(AdminBookVO AdminBookVO) {
		return session.insert("bookInsert", AdminBookVO);
	}

}
