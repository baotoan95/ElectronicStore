package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Order;

public interface OrderService {
	List<Order> getOrdersByEmail(String email);
	Order getOrderById(int id);
	boolean insertOrder(Order order);
	boolean deleteOrder(int id);
	boolean updateOrder(Order order);
}
