package com.readbooks.faqboardcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.faqboardservice.FAQBoardService;
import com.readbooks.faqboardvo.FAQBoardVO;

@Controller
@RequestMapping(value = "/")
public class FAQBoardController {

	@Autowired
	private FAQBoardService faqboardService;

	@RequestMapping(value = "/faqboardList", method = RequestMethod.GET)
	public String faqboardList(@ModelAttribute FAQBoardVO faqboard, Model model) {
		List<FAQBoardVO> faqboarduserList = faqboardService.faqboarduserList(faqboard);
		List<FAQBoardVO> faqboardbookList = faqboardService.faqboardbookList(faqboard);
		List<FAQBoardVO> faqboardorderList = faqboardService.faqboardorderList(faqboard);
		model.addAttribute("faqboarduserList", faqboarduserList);
		model.addAttribute("faqboardbookList", faqboardbookList);
		model.addAttribute("faqboardorderList", faqboardorderList);
		return "faqboard/faqboardlist";
	}
}
