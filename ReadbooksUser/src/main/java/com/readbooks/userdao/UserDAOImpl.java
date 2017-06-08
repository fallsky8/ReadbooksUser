package com.readbooks.userdao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.uservo.UserVO;

@Repository
@Transactional
public class UserDAOImpl implements UserDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int userInsert(UserVO user) {
		return session.insert("userInsert", user);
	}

	@Override
	public int userCheck(UserVO user) {
		return (Integer) session.selectOne("userCheck", user);
	}
}
