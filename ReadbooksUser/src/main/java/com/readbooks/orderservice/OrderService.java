package com.readbooks.orderservice;

import java.util.List;
import java.util.Map;

import com.readbooks.ordervo.OrderDTO;
import com.readbooks.ordervo.OrderVO;

public interface OrderService {

	public int orderInsert(Map<String, Object> map);

	public List<OrderDTO> orderSelect(OrderDTO order);

	public List<OrderDTO> orderdetail(OrderDTO order);

	public List<OrderVO> orderlist(OrderVO order);

	public List<OrderDTO> orderInfoGet(OrderDTO orderdto);

	public OrderDTO orderUserGet(OrderDTO orderdto);

	public int orderseq();

	public int orderstatus(OrderDTO order);

}
