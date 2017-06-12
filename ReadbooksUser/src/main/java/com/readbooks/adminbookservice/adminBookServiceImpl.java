package com.readbooks.adminbookservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.adminbookdao.AdminBookDAO;
import com.readbooks.adminbookvo.AdminBookVO;

@Service
@Transactional
public class AdminBookServiceImpl implements AdminbookService {
	
	@Autowired
	private AdminBookDAO adminbookdao;

	@Override
	public int adminbookInsert(AdminBookVO AdminBookVO) {
		int result = 0;
		result = adminbookdao.adminbookInsert(AdminBookVO);
		return result;
	}

}
