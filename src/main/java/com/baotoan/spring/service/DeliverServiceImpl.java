package com.baotoan.spring.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.baotoan.spring.dao.DeliverDAO;
import com.baotoan.spring.entity.Delivery;

@Service("deliverService")
@Transactional
public class DeliverServiceImpl implements DeliverService {
	@Autowired
	private DeliverDAO deliverDAO;
	
	public Delivery getDeliveryById(int id) {
		return deliverDAO.getDeliveryById(id);
	}

	public List<Delivery> getAll() {
		return deliverDAO.getAll();
	}
	
}
