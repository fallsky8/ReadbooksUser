package com.readbooks.reviewboardcontroller;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

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
import com.readbooks.reviewboardservice.ReviewBoardService;
import com.readbooks.reviewboardvo.ReviewBoardVO;

@Controller
@RequestMapping(value = "/")
public class ReviewBoardController {

	@Autowired
	private ReviewBoardService reviewboardService;

	// 리뷰게시판 글목록 구현하기
	@RequestMapping(value = "/reviewboardList", method = RequestMethod.GET)
	public String reviewBoardList(@ModelAttribute ReviewBoardVO reviewboard, Model model) {

		// 정렬에 대한 기본값 설정
		if (reviewboard.getOrder_by() == null)
			reviewboard.setOrder_by("reviewboard_number");
		if (reviewboard.getOrder_sc() == null)
			reviewboard.setOrder_sc("DESC");

		Paging.setPage(reviewboard);

		// 전체 레코드 수 구하기
		int total = reviewboardService.reviewboardListCnt(reviewboard);

		// 글번호 재설정
		int count = total - (PagingUtil.nvl(reviewboard.getPage()) - 1) * PagingUtil.nvl(reviewboard.getPageSize());

		List<ReviewBoardVO> reviewBoardList = reviewboardService.reviewboardList(reviewboard);
		model.addAttribute("reviewBoardList", reviewBoardList);
		model.addAttribute("count", count);
		model.addAttribute("data", reviewboard);
		model.addAttribute("total", total);
		return "reviewboard/reviewboardlist";
	}

	/* 글쓰기 폼 출력하기 */
	@RequestMapping(value = "/reviewboardwriteForm")
	public String writeform(HttpSession session) {

		// 요청이 들어오면
		session.setAttribute("CSRF_TOKEN", UUID.randomUUID().toString());

		return "reviewboard/reviewboardwriteform";
	}

	/* 글쓰기 구현하기 */

	@RequestMapping(value = "/reviewboardInsert", method = RequestMethod.POST)
	public String boardinsert(@ModelAttribute ReviewBoardVO reviewboard, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) {
		int result = 0;
		String url = "";
		String filename = "";

		// 파일명 겟
		if (!reviewboard.getFile().isEmpty()) {
			filename = file.getOriginalFilename();
			// 저장될 경로
			// D:\SpringTeamProject\ReadBooks\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReadbooksAdmin\resources
			// 이 프로젝트 안에 관련되어있는 경로

			String path = request.getSession().getServletContext().getRealPath("/resources/image/");
			try {
				new File(path).mkdirs();
				reviewboard.getFile().transferTo(new File(path + filename));
			} catch (Exception e) {
			}
			reviewboard.setReviewboard_attachmentfile(filename);
			result = reviewboardService.reviewboardInsert(reviewboard);
		}

		if (result == 1) {
			url = "redirect:/reviewboardList.do";
		}
		return url;
	}

	/*
	 * @RequestMapping(value = "/reviewboardInsert", method =
	 * RequestMethod.POST) public String boardInsert(@ModelAttribute
	 * ReviewBoardVO reviewboard, HttpServletRequest request) throws
	 * IllegalStateException, IOException {
	 * 
	 * int result = 0; String url = "";
	 * 
	 * String attachmentfile = FileUploadUtil.fileUpload(reviewboard.getFile(),
	 * request); reviewboard.setReviewboard_attachmentfile(attachmentfile);
	 * result = reviewboardService.reviewboardInsert(reviewboard); if (result ==
	 * 1) { url = "/reviewboardList.do"; }
	 * 
	 * return "redirect:" + url; }
	 */

	/* 글 상세보기 구현 */
	@RequestMapping(value = "/reviewboardDetail", method = RequestMethod.GET)
	public String boardDetail(@ModelAttribute ReviewBoardVO reviewboard, Model model) {

		ReviewBoardVO reviewdetail = new ReviewBoardVO();
		reviewdetail = reviewboardService.reviewboardDetail(reviewboard);

		if (reviewdetail != null) {
			reviewdetail.setReviewboard_contents(
					reviewdetail.getReviewboard_contents().toString().replaceAll("\n", "<br>"));
		}
		model.addAttribute("reviewdetail", reviewdetail);

		return "reviewboard/reviewboarddetail";

	}

	/* 글 수정 폼 출력하기 */
	@RequestMapping(value = "/reviewboardupdateForm", method = RequestMethod.GET)
	public String updateForm(@ModelAttribute ReviewBoardVO reviewboard, Model model) {

		ReviewBoardVO reviewupdateData = new ReviewBoardVO();
		reviewupdateData = reviewboardService.reviewboardDetail(reviewboard);

		model.addAttribute("reviewupdateData", reviewupdateData);

		/*
		 * System.out.println(reviewupdateData.getReviewboard_number());
		 * System.out.println(reviewupdateData.getUser_id());
		 */

		return "reviewboard/reviewboardupdateform";
	}

	/* 글 수정 구현하기 */
	@RequestMapping(value = "/reviewboardUpdate", method = RequestMethod.POST)
	public String boardUpdate(@ModelAttribute ReviewBoardVO reviewboard, @RequestParam("file") MultipartFile file,
			HttpServletRequest request) throws IllegalStateException, IOException {

		int result = 0;
		String url = "";
		String filename = "";

		// 파일명 겟
		if (!reviewboard.getReviewboard_attachmentfile().isEmpty()) {
			filename = file.getOriginalFilename();
			// 저장될 경로
			// D:\SpringTeamProject\ReadBooks\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\ReadbooksAdmin\resources
			// 이 프로젝트 안에 관련되어있는 경로

			String path = request.getSession().getServletContext().getRealPath("/resources/image/");
			try {
				new File(path).mkdirs();
				reviewboard.getFile().transferTo(new File(path + filename));
			} catch (Exception e) {
			}
			reviewboard.setReviewboard_attachmentfile(filename);
			result = reviewboardService.reviewboardUpdate(reviewboard);
		} else {
			reviewboard.setReviewboard_attachmentfile("없음");
		}

		if (result == 1) {
			url = "reviewboardDetail.do?reviewboard_number=" + reviewboard.getReviewboard_number();

		}
		return "redirect:" + url;
	}

	/*
	 * @RequestMapping(value = "/reviewboardUpdate", method =
	 * RequestMethod.POST) public String boardUpdate(@ModelAttribute
	 * ReviewBoardVO reviewboard, HttpServletRequest request) throws
	 * IllegalStateException, IOException {
	 * 
	 * int result = 0; String url = ""; String reviewboard_attachmentfile = "";
	 * 
	 * System.out.println(reviewboard.getFile()); if
	 * (!reviewboard.getFile().isEmpty()) {
	 * System.out.println(reviewboard.getReviewboard_number());
	 * System.out.println(reviewboard.getReviewboard_title());
	 * 
	 * FileUploadUtil.fileDelete(reviewboard.getReviewboard_attachmentfile(),
	 * request); reviewboard_attachmentfile =
	 * FileUploadUtil.fileUpload(reviewboard.getFile(), request);
	 * reviewboard.setReviewboard_attachmentfile(reviewboard_attachmentfile);
	 * 
	 * } else { reviewboard.setReviewboard_attachmentfile("없음"); }
	 * 
	 * result = reviewboardService.reviewboardUpdate(reviewboard);
	 * 
	 * if (result == 1) { // url = "/board/boardList.do"; // 수정 후 목록으로 이동 // 아래
	 * url은 수정 후 상세 페이지로 이동 url = "reviewboardDetail.do?reviewboard_number=" +
	 * reviewboard.getReviewboard_number();
	 * 
	 * 
	 * ra.addFlashAttribute("b_num", bvo.getB_num()); url =
	 * "/board/boardDetail.do";
	 * 
	 * 
	 * } return "redirect:" + url; }
	 */

	/* 글 삭제 구현하기 */

	@RequestMapping(value = "/reviewboardDelete")
	public String boardDelete(@ModelAttribute ReviewBoardVO reviewboard, HttpServletRequest request)
			throws IOException {

		// 아래 변수에는 입력 성공에 대한 상태값 담습니다.(1or0)
		int result = 0;
		String url = "";

		// FileUploadUtil.fileDelete(reviewboard.getReviewboard_attachmentfile(),request);
		result = reviewboardService.reviewboardDelete(reviewboard.getReviewboard_number());

		if (result == 1) {
			url = "/reviewboardList.do";

		}
		return "redirect:" + url;
	}

	/*
	 * 액셀 다운로드 구현하기 참고: ListExcelView 클래스에서 맵타입으로 Model에 접근하게 된다.
	 * 
	 * @RequestMapping(value = "/boardExcel", method = RequestMethod.GET) public
	 * ModelAndView boardExcel(@ModelAttribute BoardVO bvo) {
	 * logger.info("boardExcel 호출 성공"); // 정렬에 대한 기본값 설정 if (bvo.getOrder_by()
	 * == null) bvo.setOrder_by("b_num"); if (bvo.getOrder_sc() == null)
	 * bvo.setOrder_sc("DESC");
	 * 
	 * // 페이지 세팅 Paging.setPage(bvo);
	 * 
	 * List<BoardVO> boardList = boardService.boardList(bvo);
	 * 
	 * ModelAndView mv = new ModelAndView(new ListExcelView());
	 * mv.addObject("list", boardList); mv.addObject("template", "board.xlsx");
	 * mv.addObject("file_name", "board");
	 * 
	 * return mv;
	 * 
	 * }
	 */

	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value = "/board", method = RequestMethod.GET) public
	 * String board(@ModelAttribute BoardVO bvo, Model model, ObjectMapper om) {
	 * logger.info("boardList 호출 성공"); String listData = ""; List<BoardVO>
	 * boardList = boardService.boardList(bvo);
	 * 
	 * try { listData = om.writeValueAsString(boardList); //
	 * System.out.println(listData); } catch (JsonProcessingException e) {
	 * e.printStackTrace(); } return listData; }
	 */
}
