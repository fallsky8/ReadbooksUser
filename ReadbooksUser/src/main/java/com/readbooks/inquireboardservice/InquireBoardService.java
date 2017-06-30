package com.readbooks.inquireboardservice;

import java.util.List;

import com.readbooks.inquireboardvo.InquireBoardVO;

public interface InquireBoardService {

	public int inquireboardInsert(InquireBoardVO inquire);

	public int inquireboardListCnt(InquireBoardVO inquire);

	public List<InquireBoardVO> inquireboardList(InquireBoardVO inquire);

	public InquireBoardVO inquireboardDetail(InquireBoardVO inquire);

}
