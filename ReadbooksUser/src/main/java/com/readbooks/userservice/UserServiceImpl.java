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
	public int userCheck(UserVO user) {
		int result = 0;
		result = userdao.userCheck(user);
		System.out.println(result+"service");
		return result;
	}

}
