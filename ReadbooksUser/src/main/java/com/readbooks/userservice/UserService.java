package com.readbooks.userservice;

import com.readbooks.uservo.UserVO;

public interface UserService {

	public int userInsert(UserVO user);

	public UserVO userCheck(UserVO user);

	public UserVO userGet(UserVO user);

	public int userOut(UserVO user);

	public int userupdate(UserVO user);

	public UserVO findid(UserVO user);

	public int updatepw(UserVO user);

	public UserVO userfindpw(UserVO user);

}
