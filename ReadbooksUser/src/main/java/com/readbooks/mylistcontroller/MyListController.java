package com.readbooks.mylistcontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.cartvo.CartVO;
import com.readbooks.mylistservice.MyListService;
import com.readbooks.mylistvo.MyListVO;

@Controller
@RequestMapping("/")
public class MyListController {

	@Autowired
	private MyListService myListService;

	@RequestMapping(value = "/mylistInsert", method = RequestMethod.POST)
	public String cartInsert(@ModelAttribute MyListVO mylist) {
		int result = 0;
		String url = "";
		result = myListService.mylistInsert(mylist);
		if (result == 1) {
			url = "/home";
		}
		return url;
	}
}
