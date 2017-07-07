package com.readbooks.userservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.userdao.UserDAO;
import com.readbooks.uservo.UserVO;

@Service
@Transactional
public class UserServiceImpl implements UserService {

	@Autowired
	private UserDAO userdao;

	@Override
	public int userInsert(UserVO user) {
		int result = 0;
		result = userdao.userInsert(user);
		return result;
	}

	@Override
	public UserVO userCheck(UserVO user) {
		UserVO result = null;
		result = userdao.userCheck(user);
		return result;
	}

	@Override
	public UserVO userGet(UserVO user) {
		UserVO userget = null;
		userget = userdao.userGet(user);
		return userget;
	}

	@Override
	public int userOut(UserVO user) {
		int result = 0;
		result = userdao.userOut(user);
		return result;
	}

	@Override
	public int userupdate(UserVO user) {
		int result = 0;
		result = userdao.userupdate(user);
		return result;
	}

}
