package com.readbooks.orderservice;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.bookvo.BookVO;
import com.readbooks.orderdao.OrderDAO;
import com.readbooks.ordervo.OrderVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderdao;

	@Override
	public int orderInsert(Map<String, Object> map) {
		int result = 0;
		result = orderdao.orderInsert(map);
		return result;
	}

	@Override
	public List<OrderVO> orderSelect(OrderVO order) {
		List<OrderVO> orderget = null;
		orderget = orderdao.orderSelect(order);
		return orderget;

	}

	@Override
	public OrderVO orderdetail(OrderVO order) {
		OrderVO orderdetail = null;
		orderdetail = orderdao.orderdetail(order);
		return orderdetail;
	}

	@Override
	public List<OrderVO> orderlist(OrderVO order) {
		// TODO Auto-generated method stub
		return null;
	}

}
