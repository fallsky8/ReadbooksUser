package com.readbooks.inquireboardcontroller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.cartvo.CartVO;
import com.readbooks.inquireboardservice.InquireBoardService;
import com.readbooks.inquireboardvo.InquireBoardVO;
import com.readbooks.uservo.UserVO;

@Controller
@RequestMapping("/")
public class InquireBoardController {

	@Autowired
	private InquireBoardService inquireboardservice;

	@RequestMapping(value = "/inquireboardInsert", method = RequestMethod.GET)
	public String inquireboardInsert(@ModelAttribute InquireBoardVO inquire, HttpSession session) {
		int result = 0;
		String url = "";
		result = inquireboardservice.inquireboardInsert(inquire);
		if (result == 1) {
			url = "/inquire/inquireboardlist";
		}
		return url;
	}
}
