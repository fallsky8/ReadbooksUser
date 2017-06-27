package com.readbooks.inquireboardcontroller;

import java.io.File;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.readbooks.common.Paging;
import com.readbooks.common.PagingUtil;
import com.readbooks.inquireboardservice.InquireBoardService;
import com.readbooks.inquireboardvo.InquireBoardVO;

@Controller
@RequestMapping(value = "/")
public class InquireBoardController {

	@Autowired
	private InquireBoardService inquireboardservice;

	@RequestMapping(value = "/inquireinsertpage")
	public String inquireboardinsertpage(@ModelAttribute InquireBoardVO inquire, HttpSession session) {
		return "inquire/inquireboardinsert";
	}

	@RequestMapping(value = "/inquireboardInsert", method = RequestMethod.POST)
	public String inquireboardInsert(@ModelAttribute InquireBoardVO inquire, HttpSession session,
			@RequestParam("file") MultipartFile file, HttpServletRequest request) {
		int result = 0;
		String url = "";
		String filename = "";

		// 파일명 겟
		if (!inquire.getFile().isEmpty()) {
			filename = file.getOriginalFilename();
			// 저장될 경로
			// D:\SpringTeamProject\ReadBooks\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReadbooksAdmin\resources
			// 이 프로젝트 안에 관련되어있는 경로

			String path = request.getSession().getServletContext().getRealPath("/resources/image/");
			try {
				new File(path).mkdirs();
				inquire.getFile().transferTo(new File(path + filename));
			} catch (Exception e) {
			}
			inquire.setInquireboard_attachmentfile(filename);
			result = inquireboardservice.inquireboardInsert(inquire);
		}
		if (result == 1) {
			url = "/inquireboardList.do";
		}
		return "redirect:" + url;
	}

	@RequestMapping(value = "/inquireboardList", method = RequestMethod.GET)
	public String inquireboardList(@ModelAttribute InquireBoardVO inquire, Model model, HttpSession session) {
		inquire.setUser_id((String) session.getAttribute("user_id"));
		if (inquire.getOrder_by() == null)
			inquire.setOrder_by("inquireboard_number");
		if (inquire.getOrder_sc() == null)
			inquire.setOrder_sc("DESC");

		Paging.setPage(inquire);

		// 전체 레코드 수 구하기
		int total = inquireboardservice.inquireboardListCnt(inquire);

		// 글번호 재설정
		int count = total - (PagingUtil.nvl(inquire.getPage()) - 1) * PagingUtil.nvl(inquire.getPageSize());

		List<InquireBoardVO> inquireboardList = inquireboardservice.inquireboardList(inquire);
		model.addAttribute("inquireboardList", inquireboardList);
		model.addAttribute("count", count);
		model.addAttribute("data", inquire);
		model.addAttribute("total", total);
		return "inquire/inquireboardlist";
	}
}
