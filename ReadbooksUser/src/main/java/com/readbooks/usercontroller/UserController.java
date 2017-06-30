package com.readbooks.usercontroller;

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

		return "user/userjoin";
	}

	@RequestMapping(value = "/useroutpage")
	public String useroutpage(HttpSession session) {

		return "user/userout";
	}

	@RequestMapping(value = "/usercheck")
	public String checkuser(HttpSession session) {

		return "user/usercheck";
	}

	@RequestMapping(value = "/findbutton")
	public String findbutton(HttpSession session) {

		return "user/findbutton";
	}

	@RequestMapping(value = "/userlogout")
	public String outuser(HttpSession session) {

		return "user/userlogout";
	}

	@RequestMapping(value = "/userinfo", method = RequestMethod.GET)
	public String userinfo(HttpSession session, @ModelAttribute UserVO user, Model model) {
		user.setUser_id((String) session.getAttribute("user_id"));
		UserVO userget = userService.userGet(user);
		model.addAttribute("userlist", userget);
		return "user/userinfo";
	}

	@RequestMapping(value = "/userfindid")
	public String userfindid(HttpSession session) {

		return "user/userfindid";
	}

	@RequestMapping(value = "/userfindpw")
	public String userfindpw(HttpSession session) {

		return "user/userfindpw";
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
	public String userOut(@ModelAttribute UserVO user, HttpSession session) {
		int result = 0;
		String url = "";
		result = userService.userOut(user);
		if (result == 1) {
			url = "/userlogout.do";
		}
		return "redirect:" + url;
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public String userCheck(@ModelAttribute UserVO user, HttpSession session, Model model) {
		int result = 0;
		String url = "";
		result = userService.userCheck(user);
		session.setAttribute("user_id", user.getUser_id());
		if (result == 1) {
			url = "/home.do";
		}
		return "redirect:" + url;
	}

	// @RequestMapping(value = "/userget", method = RequestMethod.POST)
	// public String userGet(@ModelAttribute UserVO user, Model model) {
	// UserVO userget = new UserVO();
	// userget = userService.userGet(user);
	// model.addAttribute("userlist", userget);
	// return "/home";
	// }

	@RequestMapping(value = "/userupdate", method = RequestMethod.POST)
	public String userupdate(@ModelAttribute UserVO user, Model model) {
		int result = 0;
		String url = "";
		result = userService.userupdate(user);
		if (result == 1) {
			url = "/userinfo.do";
		}
		return "redirect:" + url;
	}

}
