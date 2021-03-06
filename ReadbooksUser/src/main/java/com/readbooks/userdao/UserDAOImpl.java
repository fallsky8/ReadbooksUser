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
	public UserVO userCheck(UserVO user) {
		return session.selectOne("userCheck", user);
	}

	@Override
	public UserVO userGet(UserVO user) {
		return (UserVO) session.selectOne("userGet", user);
	}

	@Override
	public int userOut(UserVO user) {
		return session.update("userOut", user);
	}

	@Override
	public int userupdate(UserVO user) {
		return session.update("userupdate", user);
	}

	@Override
	public UserVO findid(UserVO user) {
		return session.selectOne("findid", user);
	}

	@Override
	public int updatepw(UserVO user) {
		return session.update("updatepw", user);
	}

	@Override
	public UserVO userfindpw(UserVO user) {
		return session.selectOne("userfindpw", user);
	}

}
