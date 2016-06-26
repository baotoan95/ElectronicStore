package com.baotoan.spring.dao;

import java.util.List;

import org.springframework.stereotype.Repository;

import com.baotoan.spring.entity.Payment;

@Repository("paymentDAO")
public class PaymentDAOImpl extends AbstractDAO<Integer, Payment> implements PaymentDAO {

	public Payment getPaymentById(int id) {
		return getByKey(id);
	}

	@SuppressWarnings("unchecked")
	public List<Payment> getAll() {
		return (List<Payment>)createEntityCriteria().list();
	}

}
