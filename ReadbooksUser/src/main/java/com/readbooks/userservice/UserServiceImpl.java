package com.readbooks.userservice;

import java.util.HashMap;

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

	private UserVO uservo;

	@Override
	public int userInsert(UserVO user) {
		int result = 0;
		result = userdao.userInsert(user);
		return result;
	}

	@Override
	public boolean login(String user_id, String user_pw) {
		HashMap<String, Object> result = userdao.selectOne(user_id);
		if (result == null)
			return false;
		else {
			String userpw = (String) result.get(uservo.getUser_pw());
			if (userpw == null)
				return false;
			else {
				if (userpw.equals(user_pw))
					return true;
				else
					return false;
			}
		}
	}

}
