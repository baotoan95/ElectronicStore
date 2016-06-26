package com.baotoan.spring.dao;

import java.util.List;

import com.baotoan.spring.entity.Delivery;

public interface DeliverDAO {
	Delivery getDeliveryById(int id);
	List<Delivery> getAll();
}
