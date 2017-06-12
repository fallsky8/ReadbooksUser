package com.readbooks.adminbookcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.adminbookservice.AdminbookService;
import com.readbooks.adminbookvo.AdminBookVO;

@Controller
@RequestMapping(value = "/adminbook")
public class AdminBookController {

	@Autowired
	private AdminbookService adminbookservice;
	
	

	@RequestMapping(value = "/adminbookinsert", method = RequestMethod.POST)
	public String bookInsert(@ModelAttribute AdminBookVO AdminBookVO) {
		int result = 0;
		String url = "";
		result = adminbookservice.adminbookInsert(AdminBookVO);
		if (result == 1) {
			url = "/adminhome";
		}
		return url;
	}


}
