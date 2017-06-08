package com.readbooks.userdao;

import java.util.HashMap;

import com.readbooks.uservo.UserVO;

public interface UserDAO {
	public int userInsert(UserVO user);

	public HashMap<String, Object> selectOne(String user_id);
}
