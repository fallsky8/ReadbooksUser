package com.readbooks.faqboardservice;

import java.util.List;

import com.readbooks.faqboardvo.FAQBoardVO;

public interface FAQBoardService {

	public List<FAQBoardVO> faqboarduserList(FAQBoardVO faqboard);

	public List<FAQBoardVO> faqboardbookList(FAQBoardVO faqboard);

	public List<FAQBoardVO> faqboardorderList(FAQBoardVO faqboard);

}
