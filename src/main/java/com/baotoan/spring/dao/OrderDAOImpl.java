package com.baotoan.spring.dao;

import java.util.List;

import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Order;

@Repository("orderDAO")
public class OrderDAOImpl extends AbstractDAO<Integer, Order> implements OrderDAO {

	@SuppressWarnings("unchecked")
	public List<Order> getOrdersByEmail(String email) {
		Query query = getSession().createQuery("FROM Order WHERE order_user=:order_user order by order_date");
		query.setParameter("order_user", email);
		return query.list();
	}

	public Order getOrderById(int id) {
		Order order = getByKey(id);
		Hibernate.initialize(order.getPayment());
		Hibernate.initialize(order.getDelivery());
		Hibernate.initialize(order.getPayDistrict());
		Hibernate.initialize(order.getPayProvince());
		Hibernate.initialize(order.getRecieDistrict());
		Hibernate.initialize(order.getRecieProvince());
		Hibernate.initialize(order.getOrderDetails());
		return order;
	}

	public boolean insertOrder(Order order) {
		return getSession().merge(order) != null;
	}

	public boolean deleteOrder(int id) {
		Order order = getOrderById(id);
		return delete(order);
	}

	public boolean updateOrder(Order order) {
		Order orderOld = getOrderById(order.getId());
		if(orderOld != null) {
			orderOld.setOrderDate(order.getOrderDate());
			orderOld.setDelivery(order.getDelivery());
			orderOld.setDescript(order.getDescript());
			orderOld.setMonetized(order.getMonetized());
			orderOld.setPayment(order.getPayment());
			orderOld.setOrderUser(order.getOrderUser());
			orderOld.setStatus(order.getStatus());
			orderOld.setPayName(order.getPayName());
			orderOld.setPayAddress(order.getPayAddress());
			orderOld.setPayDistrict(order.getPayDistrict());
			orderOld.setPayProvince(order.getPayProvince());
			orderOld.setPayPhone(order.getPayPhone());
			orderOld.setRecieName(order.getRecieName());
			orderOld.setRecieAddress(order.getRecieAddress());
			orderOld.setRecieDistrict(order.getRecieDistrict());
			orderOld.setRecieProvince(order.getRecieProvince());
			orderOld.setReciePhone(order.getReciePhone());
			return true;
		}
		return false;
	}

}
