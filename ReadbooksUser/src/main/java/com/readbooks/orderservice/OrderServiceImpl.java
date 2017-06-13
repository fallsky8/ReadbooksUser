package com.readbooks.orderservice;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.readbooks.orderdao.OrderDAO;
import com.readbooks.ordervo.OrderVO;

@Service
@Transactional
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDAO orderdao;

	@Override
	public int orderInsert(OrderVO order) {
		int result = 0;
		result = orderdao.orderInsert(order);
		return result;
	}

}
