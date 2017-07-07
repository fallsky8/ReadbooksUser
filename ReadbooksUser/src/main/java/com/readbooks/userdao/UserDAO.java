package com.readbooks.userdao;

import com.readbooks.uservo.UserVO;

public interface UserDAO {
	public int userInsert(UserVO user);

	public UserVO userCheck(UserVO user);

	public UserVO userGet(UserVO user);

	public int userOut(UserVO user);

	public int userupdate(UserVO user);

	public UserVO findid(UserVO user);
}
