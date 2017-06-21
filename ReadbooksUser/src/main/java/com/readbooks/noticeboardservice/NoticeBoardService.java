package com.readbooks.noticeboardservice;

import java.util.List;

import com.readbooks.noticeboardvo.NoticeBoardVO;

public interface NoticeBoardService {

	public List<NoticeBoardVO> noticeboardList(NoticeBoardVO noticeboard);

	public int noticeboardListCnt(NoticeBoardVO noticeboard);

	public NoticeBoardVO noticeboardDetail(NoticeBoardVO noticeboard);

}
