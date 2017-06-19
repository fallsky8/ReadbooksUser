package com.readbooks.faqboardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.faqboarddao.FAQBoardDAO;
import com.readbooks.faqboardvo.FAQBoardVO;

@Service
@Transactional
public class FAQBoardServiceImpl implements FAQBoardService {

	@Autowired
	private FAQBoardDAO faqboarddao;

	@Override
	public List<FAQBoardVO> faqboarduserList(FAQBoardVO faqboard) {
		List<FAQBoardVO> faqboarduserList = null;
		faqboarduserList = faqboarddao.faqboarduserList(faqboard);
		return faqboarduserList;
	}

	@Override
	public List<FAQBoardVO> faqboardbookList(FAQBoardVO faqboard) {
		List<FAQBoardVO> faqboardbookList = null;
		faqboardbookList = faqboarddao.faqboardbookList(faqboard);
		return faqboardbookList;
	}

	@Override
	public List<FAQBoardVO> faqboardorderList(FAQBoardVO faqboard) {
		List<FAQBoardVO> faqboardorderList = null;
		faqboardorderList = faqboarddao.faqboardorderList(faqboard);
		return faqboardorderList;
	}

}
