package com.readbooks.orderdao;

import java.util.List;
import java.util.Map;

import com.readbooks.ordervo.OrderDTO;
import com.readbooks.ordervo.OrderVO;

public interface OrderDAO {

	public int orderInsert(Map<String, Object> map);

	public List<OrderDTO> orderSelect(OrderDTO order);

	public List<OrderDTO> orderdetail(OrderDTO order);

	public List<OrderDTO> orderInfoGet(OrderDTO orderdto);

	public OrderDTO orderUserGet(OrderDTO orderdto);

	public int orderseq();

	public int orderstatus(OrderDTO order);

}
