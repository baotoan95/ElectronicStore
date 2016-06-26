package com.baotoan.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Delivery;

@Repository("deliverDAO")
public class DeliverDAOImpl extends AbstractDAO<Integer, Delivery> implements DeliverDAO {

	public Delivery getDeliveryById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Delivery> getAll() {
		return createEntityCriteria().list();
	}

}
