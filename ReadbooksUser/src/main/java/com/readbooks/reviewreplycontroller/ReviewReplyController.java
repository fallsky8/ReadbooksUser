package com.readbooks.reviewreplycontroller;

import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

import com.readbooks.reviewreplyservice.ReviewReplyService;
import com.readbooks.reviewreplyvo.ReviewReplyVO;

@RestController
@RequestMapping(value = "/")
public class ReviewReplyController {
	Logger logger = Logger.getLogger(ReviewReplyController.class);

	@Autowired
	private ReviewReplyService reviewreplyService;

	// 댓글 글목록 구현하기S
	@RequestMapping(value = "/all/{reviewboard_number}", method = RequestMethod.GET)
	public ResponseEntity<List<ReviewReplyVO>> list(@PathVariable("reviewboard_number") Integer reviewboard_number) {

		ResponseEntity<List<ReviewReplyVO>> entity = null;
		try {
			entity = new ResponseEntity<>(reviewreplyService.reviewreplyList(reviewboard_number), HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(HttpStatus.BAD_REQUEST);
		}

		return entity;
	}

	// 댓글 글쓰기 구현하기

	@RequestMapping(value = "/reviewreplyInsert")
	public ResponseEntity<String> reviewreplyInsert(@RequestBody ReviewReplyVO reviewreplyvo) {
		ResponseEntity<String> entity = null;
		int result;
		try {
			result = reviewreplyService.reviewreplyInsert(reviewreplyvo);
			if (result == 1) {
				entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
			}
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

	// 댓글 수정 구현하기

	@RequestMapping(value = "/{reviewreply_number}.do", method = { RequestMethod.PUT, RequestMethod.PATCH })
	public ResponseEntity<String> replyUpdate(@PathVariable("reviewreply_number") Integer reviewreply_number,
			@RequestBody ReviewReplyVO reviewreplyvo) {

		ResponseEntity<String> entity = null;
		try {
			reviewreplyvo.setReviewreply_number(reviewreply_number);
			reviewreplyService.reviewreplyUpdate(reviewreplyvo);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<String>(e.getMessage(), HttpStatus.BAD_REQUEST);

		}
		return entity;
	}

	// 댓글 삭제 구현하기

	@RequestMapping(value = "/{reviewreply_number}.do", method = RequestMethod.DELETE)
	public ResponseEntity<String> replyDelete(@PathVariable("reviewreply_number") Integer reviewreply_number) {

		ResponseEntity<String> entity = null;
		try {
			reviewreplyService.reviewreplyDelete(reviewreply_number);
			entity = new ResponseEntity<String>("SUCCESS", HttpStatus.OK);
		} catch (Exception e) {
			e.printStackTrace();
			entity = new ResponseEntity<>(e.getMessage(), HttpStatus.BAD_REQUEST);
		}
		return entity;
	}

}
