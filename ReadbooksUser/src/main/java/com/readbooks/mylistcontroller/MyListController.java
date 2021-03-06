package com.readbooks.mylistcontroller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.mylistservice.MyListService;
import com.readbooks.mylistvo.MyListDTO;
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

	@RequestMapping(value = "/mylistGet", method = RequestMethod.GET)
	public String mylistGet(@ModelAttribute MyListVO mylist, @ModelAttribute MyListDTO mylistdto, HttpSession session,
			Model model) {

		mylist.setUser_id((String) session.getAttribute("user_id"));
		List<MyListDTO> mylistGet = new ArrayList<MyListDTO>();
		mylistGet = myListService.mylistGet(mylist);
		model.addAttribute("mylist", mylistGet);
		return "mylist/mylist";
	}

	@RequestMapping(value = "/mylistDelete", method = RequestMethod.GET)
	private String mylistDelete(@ModelAttribute MyListVO mylist, HttpSession session) {
		int result = 0;
		String url = "";
		result = myListService.mylistDelete(mylist);
		if (result == 1) {
			url = "/mylistGet.do";
		}
		return "redirect:" + url;
	}

}
