package com.readbooks.userservice;

import com.readbooks.uservo.UserVO;

public interface UserService {

	public int userInsert(UserVO user);

	public boolean login(String user_id, String user_pw);
}
