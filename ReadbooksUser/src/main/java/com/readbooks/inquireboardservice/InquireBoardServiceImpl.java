package com.readbooks.inquireboardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.inquireboarddao.InquireBoardDAO;
import com.readbooks.inquireboardvo.InquireBoardVO;

@Service
@Transactional
public class InquireBoardServiceImpl implements InquireBoardService {

	@Autowired
	private InquireBoardDAO inquireboarddao;

	@Override
	public int inquireboardInsert(InquireBoardVO inquire) {
		int result = 0;
		result = inquireboarddao.inquireboardInsert(inquire);
		return result;
	}

	@Override
	public int inquireboardListCnt(InquireBoardVO inquire) {
		return inquireboarddao.inquireboardListCnt(inquire);
	}

	@Override
	public List<InquireBoardVO> inquireboardList(InquireBoardVO inquire) {
		List<InquireBoardVO> inquireboardList = null;
		inquireboardList = inquireboarddao.inquireboardList(inquire);
		return inquireboardList;
	}

	@Override
	public InquireBoardVO inquireboardDetail(InquireBoardVO inquire) {
		InquireBoardVO detail = null;
		detail = inquireboarddao.inquireboardDetail(inquire);
		return detail;
	}
}
