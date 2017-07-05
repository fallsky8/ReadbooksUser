package com.readbooks.usercontroller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.readbooks.userservice.UserService;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping(value = "/")
public class UserController {

	@Autowired
	private UserService userService;
	@Autowired
	private JavaMailSender mailSender;

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

	@RequestMapping(value = "/mail")
	public String mail(HttpSession session) {

		return "user/mail";
	}

	// 메일 보내기
	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	@ResponseBody
	public String sendEmail(@ModelAttribute UserVO user) {

		// 난수 발생
		String authNum = randomNum() + "";

		String from = "admin@readbooks.com";
		String memberEmail = user.getUser_email();
		String title = "리드북스 메일 인증 코드입니다.";
		String content = "인증 코드 [" + authNum + "]";

		try {
			MimeMessage message = mailSender.createMimeMessage();
			MimeMessageHelper messageHelper = new MimeMessageHelper(message, true, "UTF-8");
			messageHelper.setFrom(from); // 보내는사람 생략하거나 하면 정상작동을 안함
			messageHelper.setTo(memberEmail); // 받는사람 이메일
			messageHelper.setSubject(title); // 메일제목은 생략이 가능하다
			messageHelper.setText(content); // 메일 내용

			mailSender.send(message);

		} catch (MessagingException e) {
			e.printStackTrace();
		}

		return authNum;

	}

	private String randomNum() {

		return ((int) (Math.random() * 100000)) + "";

	}

}
