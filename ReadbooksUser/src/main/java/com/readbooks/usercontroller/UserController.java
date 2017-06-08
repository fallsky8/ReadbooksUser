package com.readbooks.usercontroller;

import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.readbooks.userservice.UserService;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping(value = "/user")
public class UserController {

	@Autowired
	private UserService userService;

	@RequestMapping(value = "/userjoin")
	public String insertuser(HttpSession session) {
		session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());

		return "user/userjoin";
	}

	@RequestMapping(value = "/userlogin")
	public String checkuser(HttpSession session) {
		session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());

		return "user/userlogin";
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

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.setAttribute("userLoginInfo", null);
		return "redirect:login";
	}

	@RequestMapping(value = "/userlogin", method = RequestMethod.POST)
	public ModelAndView loginProcess(String user_id, String user_pw, HttpSession session, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		if (userService.login(user_id, user_pw)) {
			session.setAttribute("userid", user_id);
			mav.setViewName("redirect:home.do");
		} else {
			mav.setViewName("redirect:userlogin.do");
		}
		return mav;

	}
}
