package com.readbooks.orderdao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.ordervo.OrderDTO;
import com.readbooks.ordervo.OrderVO;
import com.readbooks.uservo.UserVO;

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
	public List<OrderDTO> orderSelect(OrderDTO order) {
		return session.selectList("orderSelect", order);
	}

	@Override
	public List<OrderDTO> orderdetail(OrderDTO order) {
		return session.selectList("orderdetail", order);
	}

	@Override
	public List<OrderDTO> orderInfoGet(OrderDTO orderdto) {
		return session.selectList("orderInfoGet", orderdto);
	}

	@Override
	public OrderDTO orderUserGet(OrderDTO orderdto) {
		return (OrderDTO) session.selectOne("orderUserGet", orderdto);
	}

	@Override
	public int orderseq() {
		return session.selectOne("orderseq");
	}

	@Override
	public int orderstatus(OrderDTO order) {
		return session.update("orderstatus", order);
	}

}