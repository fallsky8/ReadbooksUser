package com.readbooks.orderdao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.ordervo.OrderVO;

@Repository
@Transactional
public class OrderDAOImpl implements OrderDAO {

	@Autowired
	private SqlSession session;

	@Override
	public int orderInsert(OrderVO order) {
		return session.insert("orderInsert", order);
	}

}