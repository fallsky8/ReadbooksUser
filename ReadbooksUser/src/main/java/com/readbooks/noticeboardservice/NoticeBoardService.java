package com.readbooks.noticeboardservice;

import java.util.List;

import com.readbooks.noticeboardvo.NoticeBoardVO;

public interface NoticeBoardService {

	public List<NoticeBoardVO> noticeboardList(NoticeBoardVO noticeboard);

}