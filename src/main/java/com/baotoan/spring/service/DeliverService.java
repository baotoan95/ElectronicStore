package com.baotoan.spring.service;

import java.util.List;

import com.baotoan.spring.entity.Delivery;

public interface DeliverService {
	Delivery getDeliveryById(int id);
	List<Delivery> getAll();
}
