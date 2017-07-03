package com.readbooks.emailcontroller;

import javax.mail.MessagingException;
import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping(value = "/")
public class EmailController {

	@Autowired
	private JavaMailSender mailSender;

	// 메일 보내기
	@RequestMapping(value = "/sendEmail", method = RequestMethod.POST)
	@ResponseBody
	public String sendEmail(@ModelAttribute UserVO param) {

		// 난수 발생
		String authNum = randomNum() + "";

		String from = "admin@readbooks.com";
		String memberEmail = param.getUser_email();
		String title = "회원가입 메일 인증 코드";
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
