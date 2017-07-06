package com.readbooks.orderdao;

import java.util.List;
import java.util.Map;

import com.readbooks.ordervo.OrderVO;

public interface OrderDAO {

	public int orderInsert(Map<String, Object> map);

	public List<OrderVO> orderSelect(OrderVO order);

	public OrderVO orderdetail(OrderVO order);

}
