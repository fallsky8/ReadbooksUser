package com.readbooks.userservice;

import com.readbooks.uservo.UserVO;

public interface UserService {

	public int userInsert(UserVO user);

	public int userCheck(UserVO user);

	public UserVO userGet(UserVO user);

	public int userOut(UserVO user);

}
