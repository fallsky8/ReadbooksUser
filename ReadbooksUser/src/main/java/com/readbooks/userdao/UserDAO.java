package com.readbooks.userdao;

import com.readbooks.uservo.UserVO;

public interface UserDAO {
	public int userInsert(UserVO user);

	public int userCheck(UserVO user);
}
