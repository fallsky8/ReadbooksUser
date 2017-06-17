package com.readbooks.usercontroller;

import java.util.UUID;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.userservice.UserService;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping(value = "/")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/userjoin")
	public String insertuser(HttpSession session) {
		session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());

		return "user/userjoin";
	}

	@RequestMapping(value = "/usercheck")
	public String checkuser(HttpSession session) {

		return "user/usercheck";
	}

	@RequestMapping(value = "/userlogout")
	public String outuser(HttpSession session) {

		return "user/userlogout";
	}

	@RequestMapping(value = "/userInsert", method = RequestMethod.POST)
	public String userInsert(@ModelAttribute UserVO user) {
		int result = 0;
		String url = "";
		result = userService.userInsert(user);
		if (result == 1) {
			url = "/home";
		}
		return url;
	}

	@RequestMapping(value = "/userOut", method = RequestMethod.POST)
	public String userOut(@ModelAttribute UserVO user) {
		int result = 0;
		String url = "";
		result = userService.userOut(user);
		if (result == 1) {
			url = "/home";
		}
		return url;
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String userCheck(@ModelAttribute UserVO user, HttpSession session, Model model) {
		int result = 0;
		String url = "";
		result = userService.userCheck(user);
		UserVO userget = new UserVO();
		// userget = userService.userGet(user);
		session.setAttribute("user_id", user.getUser_id());
		// model.addAttribute("userlist", userget);
		if (result == 1) {
			url = "/home.do";
		}
		return "redirect:" + url;
	}

	@RequestMapping(value = "/userget", method = RequestMethod.POST)
	public String userGet(@ModelAttribute UserVO user, Model model) {
		UserVO userget = new UserVO();
		userget = userService.userGet(user);
		model.addAttribute("userlist", userget);
		return "/home";
	}

}
