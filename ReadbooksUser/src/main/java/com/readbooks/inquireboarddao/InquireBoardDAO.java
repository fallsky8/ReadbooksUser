package com.readbooks.inquireboarddao;

import java.util.List;

import com.readbooks.inquireboardvo.InquireBoardVO;

public interface InquireBoardDAO {

	public int inquireboardInsert(InquireBoardVO inquire);

	public List<InquireBoardVO> inquireboardList(InquireBoardVO inquire);

	public int inquireboardListCnt(InquireBoardVO inquire);

	public InquireBoardVO inquireboardDetail(InquireBoardVO inquire);

}
