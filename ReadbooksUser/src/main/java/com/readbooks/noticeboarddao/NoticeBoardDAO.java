package com.readbooks.noticeboarddao;

import java.util.List;

import com.readbooks.noticeboardvo.NoticeBoardVO;

public interface NoticeBoardDAO {

	public List<NoticeBoardVO> noticeboardList(NoticeBoardVO noticeboard);

}
