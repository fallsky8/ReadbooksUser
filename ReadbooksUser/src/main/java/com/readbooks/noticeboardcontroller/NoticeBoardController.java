package com.readbooks.noticeboardcontroller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.readbooks.common.Paging;
import com.readbooks.common.PagingUtil;
import com.readbooks.noticeboardservice.NoticeBoardService;
import com.readbooks.noticeboardvo.NoticeBoardVO;

@Controller
@RequestMapping(value = "/")
public class NoticeBoardController {

	@Autowired
	private NoticeBoardService noticeboardservice;

	@RequestMapping(value = "/noticeboardList", method = RequestMethod.GET)
	public String noticeboardList(@ModelAttribute NoticeBoardVO noticeboard, Model model) {
		if (noticeboard.getOrder_by() == null)
			noticeboard.setOrder_by("noticeboard_number");
		if (noticeboard.getOrder_sc() == null)
			noticeboard.setOrder_sc("DESC");

		Paging.setPage(noticeboard);

		// 전체 레코드 수 구하기
		int total = noticeboardservice.noticeboardListCnt(noticeboard);

		// 글번호 재설정
		int count = total - (PagingUtil.nvl(noticeboard.getPage()) - 1) * PagingUtil.nvl(noticeboard.getPageSize());

		List<NoticeBoardVO> noticeboardList = noticeboardservice.noticeboardList(noticeboard);
		model.addAttribute("noticeboardList", noticeboardList);
		model.addAttribute("count", count);
		model.addAttribute("data", noticeboard);
		model.addAttribute("total", total);
		return "noticeboard/noticeboardlist";
	}
}
