package com.readbooks.noticeboardcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.noticeboardservice.NoticeBoardService;
import com.readbooks.noticeboardvo.NoticeBoardVO;

@Controller
@RequestMapping(value = "/")
public class NoticeBoardController {

	@Autowired
	private NoticeBoardService noticeboardservice;

	@RequestMapping(value = "/noticeboardList", method = RequestMethod.GET)
	public String noticeboardList(@ModelAttribute NoticeBoardVO noticeboard, Model model) {
		List<NoticeBoardVO> noticeboardList = noticeboardservice.noticeboardList(noticeboard);
		model.addAttribute("noticeboardList", noticeboardList);
		return "noticeboard/noticeboardlist";
	}

	@RequestMapping(value = "/noticeboarddetail", method = RequestMethod.GET)
	public String noticeboardDetail(@ModelAttribute NoticeBoardVO noticeboard, Model model) {
		NoticeBoardVO noticeboarddetail = new NoticeBoardVO();
		noticeboarddetail = noticeboardservice.noticeboardDetail(noticeboard);
		model.addAttribute("noticeboarddetail", noticeboarddetail);
		return "noticeboard/noticeboarddetail";
	}
}
