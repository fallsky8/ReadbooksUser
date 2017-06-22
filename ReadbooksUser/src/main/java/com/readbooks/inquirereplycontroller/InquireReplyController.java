package com.readbooks.inquirereplycontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.cartvo.CartVO;
import com.readbooks.inquirereplyservice.InquireReplyService;
import com.readbooks.inquirereplyvo.InquireReplyVO;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping("/")
public class InquireReplyController {

	@Autowired
	private InquireReplyService inquirereplyservice;

	@RequestMapping(value = "/inquirereplyInsert", method = RequestMethod.GET)
	public String inquirereplyInsert(@ModelAttribute InquireReplyVO inquire, HttpSession session) {
		int result = 0;
		String url = "";
		result = inquirereplyservice.inquirereplyInsert(inquire);
		if (result == 1) {
			url = "/inquire/inquireboarddetail";
		}
		return url;
	}
}
