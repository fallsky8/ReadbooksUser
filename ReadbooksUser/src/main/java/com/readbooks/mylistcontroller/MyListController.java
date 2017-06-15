package com.readbooks.mylistcontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.mylistservice.MyListService;
import com.readbooks.mylistvo.MyListVO;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping("/")
public class MyListController {

	@Autowired
	private MyListService myListService;

	@RequestMapping(value = "/mylistInsert", method = RequestMethod.GET)
	public String cartInsert(@ModelAttribute MyListVO mylist, @ModelAttribute UserVO user, HttpSession session) {
		int result = 0;
		String url = "";
		session.setAttribute("user_id", user.getUser_id());
		result = myListService.mylistInsert(mylist);
		if (result == 1) {
			url = "/home";
		}
		return url;
	}
}
