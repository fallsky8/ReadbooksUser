package com.readbooks.noticeboardservice;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.noticeboarddao.NoticeBoardDAO;
import com.readbooks.noticeboardvo.NoticeBoardVO;

@Service
@Transactional
public class NoticeBoardServiceImpl implements NoticeBoardService {

	@Autowired
	private NoticeBoardDAO noticeboarddao;

	@Override
	public List<NoticeBoardVO> noticeboardList(NoticeBoardVO noticeboard) {
		List<NoticeBoardVO> noticeboardList = null;
		noticeboardList = noticeboarddao.noticeboardList(noticeboard);
		return noticeboardList;
	}
}
