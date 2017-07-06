package com.readbooks.orderdao;

import java.util.List;
import java.util.Map;

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
	public int orderInsert(Map<String, Object> map) {
		return session.insert("orderInsert", map);
	}

	@Override
	public List<OrderVO> orderSelect(OrderVO order) {
		return session.selectList("orderSelect", order);
	}

	@Override
	public OrderVO orderdetail(OrderVO order) {
		return session.selectOne("orderdetail", order);
	}

}