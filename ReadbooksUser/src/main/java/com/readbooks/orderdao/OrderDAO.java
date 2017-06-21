package com.readbooks.orderdao;

import java.util.List;

import com.readbooks.ordervo.OrderVO;

public interface OrderDAO {

	public int orderInsert(OrderVO order);

	public List<OrderVO> orderSelect(OrderVO order);

}
