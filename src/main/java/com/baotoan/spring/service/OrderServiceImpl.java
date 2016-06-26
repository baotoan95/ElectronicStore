package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.OrderDAO;
import com.baotoan.spring.entity.Order;

@Service("orderService")
@Transactional
public class OrderServiceImpl implements OrderService {
	@Autowired
	private OrderDAO orderDAO;
	
	public List<Order> getOrdersByEmail(String email) {
		return orderDAO.getOrdersByEmail(email);
	}

	public Order getOrderById(int id) {
		return orderDAO.getOrderById(id);
	}

	public boolean insertOrder(Order order) {
		return orderDAO.insertOrder(order);
	}

	public boolean deleteOrder(int id) {
		return orderDAO.deleteOrder(id);
	}

	public boolean updateOrder(Order order) {
		return orderDAO.updateOrder(order);
	}
	
}
