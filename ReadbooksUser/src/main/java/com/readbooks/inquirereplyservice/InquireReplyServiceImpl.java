package com.readbooks.inquirereplyservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.inquirereplydao.InquireReplyDAO;
import com.readbooks.inquirereplyvo.InquireReplyVO;

@Service
@Transactional
public class InquireReplyServiceImpl implements InquireReplyService {

	@Autowired
	private InquireReplyDAO inquirereplydao;

	@Override
	public int inquirereplyInsert(InquireReplyVO inquire) {
		int result = 0;
		result = inquirereplydao.inquirereplyInsert(inquire);
		return result;
	}
}
