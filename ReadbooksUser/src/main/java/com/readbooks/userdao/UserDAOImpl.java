package com.readbooks.userdao;

import java.util.HashMap;

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
	public HashMap<String, Object> selectOne(String user_id) {
		return session.selectOne("userCheck", user_id);
	}

}
